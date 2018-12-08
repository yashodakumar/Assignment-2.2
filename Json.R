setwd("Users/Desktop/json")
file.path(file.choose())
temp = list.files(pattern="text*.")
myfiles = lapply(temp, read.delim)
library("rjson")
json_file <- "myfiles"
library(jsonlite)
out <- jsonlite::fromJSON(json_file)
out[vapply(out, is.null, logical(1))] <- "none"
data.frame(out, stringsAsFactors = FALSE)[,1:5]
View(out)

install.packages("rjson")

# Load the package required to read JSON files.
library("rjson")

#load packages from Json directory
txt1<- fromJSON()

# Give the input file name to the function.

result <- fromJSON(file = "input.json")


# Print the result.
print(result)

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)