regex_test = /lab/
strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar", "bear"]

strings.each { |string| puts string if string =~ regex_test }