# Averages-in-julia
The first project of my class on the features and structure of languages. We were instructed to do a basic math problem in the, at the time brand new, language julia. In particular we were required to use the language rich type structure, as many in the class had never used such a concept before.

You can see the assignment as “CSCI-3415-Program-1-Fall-2018.pdf”, and my final report as “report.docx”. The following is adapted from my final report.

## Approach and implementation details
 
I split the problem into 3 functions. First a read in function to handle the file format, second a function to find the mean and a third to count the number of values greater than the mean. 
### Read In
The read_in function is modified from the example code provided with 3 changes. I eliminated the truple structure to simplify it as that functionality was not needed for this implementation, I simply told the read in to skip the first 2 lines to meet the file format provided in one_million_randoms.txt and I made it print the size for debugging.
### Mean
The mean function takes in an array of int 64 type and prints/returns a float 64 that is the mean of all the numbers in the array.
### Finding the Number Of Values Above the Mean
The findNumAbove function takes in both the array of integers and the mean. It then increments a counter for every integer that is greater than the mean. It then returns that count and the program prints it.
### Notes
I used julia’s built in length() operation to avoid storing the size of the array (This ain’t assembly. I’m not manually tracking sizes.)
