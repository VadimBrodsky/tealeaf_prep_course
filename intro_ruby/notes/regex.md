# Regex

Test a regex patterns agains a string, if match found returns the first index, otherwise returns `nil`.

```ruby
"powerball" =~ /b/
# => 5
```

Returns a `MatchData` object that describes the match.

```ruby
/b/.match("powerball")
# => #<MatchData "b">
```