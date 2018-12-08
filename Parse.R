# Load the package required to read JSON files.
library("rjson")


# Give the input file name to the function.

result <- fromJSON(file = "Parse.json")


# Print the result.
print(result)

filenames <- list.files("C:/Users/Harish/Documents/Json", pattern="*.json", full.names=TRUE)
