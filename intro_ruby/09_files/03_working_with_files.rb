require "pry"

require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

# Reading and parsing the Slashdot XML file
slashdot_articles = []
File.open("03_slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map do |i|
    {
      title:   i.at_css('title').content,
      link:    i.at_css('link').content,
      summary: i.at_css('description').content
    }
  end
end

# Reading and parsing the Feeszilla Json file
feedzilla_articles = []
File.open("03_feedzilla.json", "r") do |f|
  # encoded_file_content = f.read.force_encoding('UTF-8')
  items = JSON.parse(f.read)
  feedzilla_articles = items['articles'].map do |a|
    {
      title:   a['title'],
      link:    a['url'],
      summary: a['summary']
    }
  end
end

# binding.pry
sorted_articles = (feedzilla_articles + slashdot_articles).sort_by { |a| a[:title] }
p sorted_articles

# Writing the data to csv file
CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ]  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
  sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end

pkg.serialize("articles.xlsx")