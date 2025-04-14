                                       # REDIET GOSHU
                                      #ID  DBU1601573
                   # R programming assignment
             

               #### 1) Vectors m and n
m <- c(12, 14, 16, 18)
n <- c(17, 15, 13, 11)

# a) Quotient and remainder
quotient <- m %/% n  # Integer division
remainder <- m %% n   # Modulo operator

print("Quotient:")
print(quotient)
print("Remainder:")
print(remainder)

# b) Comparisons
m_greater_than_n <- m > n
n_less_than_m <- n < m

print("m > n:")
print(m_greater_than_n)
print("n < m:")
print(n_less_than_m)

                 #### 2) Generate vector q with NAs
q <- c(1:10)
q[3] <- NA
q[7] <- NA

# Extract non-missing values
p <- q[!is.na(q)]

print("Vector q:")
print(q)
print("Vector p:")
print(p)
               #### 3 a) Create grade vector
grade <- c(1, 2, 3, 4)

# b) Convert to character strings
grade_names <- factor(grade, levels = 1:4, labels = c("poorest", "poor", "good", "very good"))

print("Grade vector:")
print(grade)
print("Grade names:")
print(grade_names)

# c) Generate passed vector
passed <- grade_names[grade_names %in% c("good", "very good")]

print("Passed vector:")
print(passed)

                     #### 4) a) Create array A
A <- array(1:12, dim = c(3, 4))

print("Array A:")
print(A)

# b) Extract elements
element_1 <- A[1, 2]
element_2 <- A[2, 1]

print("Element A[1,2]:")
print(element_1)
print("Element A[2,1]:")
print(element_2)

# c) Replace elements with NA
A[1, 2] <- NA
A[2, 1] <- NA

print("Modified Array A:")
print(A)
                  #### 5)# a) Create matrix MI
MI <- matrix(6:11, nrow = 3, byrow = TRUE)

print("Matrix MI:")
print(MI)

# b) Bind column to MI
M2 <- cbind(MI, c(12, 13, 14))

print("Matrix M2:")
print(M2)

# c) Bind row to M2
M3 <- rbind(M2, c(9, 12, 15))

print("Matrix M3:")
print(M3)

# d) Set row and column names
rownames(M3) <- c("Row1", "Row2", "Row3", "Row4")
colnames(M3) <- c("Col1", "Col2", "Col3", "Col4")

print("Matrix M3 with names:")
print(M3)
                  #### 6)# Create matrix N
N <- matrix(1:12, nrow = 4, byrow = TRUE)

print("Matrix N:")
print(N)

# a) Access first row
first_row <- N[1, ]

print("First row:")
print(first_row)

# b) Access first and second rows
first_two_rows <- N[1:2, ]

print("First two rows:")
print(first_two_rows)

# c) Access 4th and 3rd elements
element_1 <- N[4, 3]
element_2 <- N[4, 1]

print("Element N[4,3]:")
print(element_1)
print("Element N[4,1]:")
print(element_2)
                  #### 7)# List ready
ready <- list(Exam = "Final", year = "2017/2025", Subject = "Data Science",
              Course.list = c("Prog. Lang. for DS", "Fund. of Computing",
                              "Intro. to Data Science", "Stat. & Prob.",
                              "Calculus for DS", "L. Algebra I"))

# a) Access fourth component
fourth_component <- ready[[4]]

print("Fourth component:")
print(fourth_component)

# b) Access first element of fourth component
first_element <- fourth_component[1]

print("First element of fourth component:")
print(first_element)

#d) Replace 3rd column by quotient
# Assuming a matrix 'mat' with at least 3 columns
mat <- matrix(1:12, nrow=3, byrow=TRUE)
mat[,3] <- mat[,3] %/% 4 #Integer division
print(mat)
               #### 8)# Patient data
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("TypeI", "Type2", "Type1", "TypeI")
status <- c("Poor", "Improved", "Excellent", "Poor")

# a) Create data frame
pdata1 <- data.frame(patientID, age, diabetes, status)

print("pdata1:")
print(pdata1)

# b) Access first row
first_row <- pdata1[1, ]

print("First row:")
print(first_row)

# c) Access 3rd and 4th columns
third_fourth_cols <- pdata1[, c(3, 4)]

print("3rd and 4th columns:")
print(third_fourth_cols)

          #### 9) Creating the pdata2 data frame for the new patients
pdata2 <- data.frame(
  patientID = c(5, 6, 7),
  age = c(26, 35, 29),
  diabetes = c("Type2", "Type1", "Type2"),
  status = c("Improved", "Excellent", "Poor")
)

# a) Append pdata1 and pdata2 into pdata_all
pdata_all <- rbind(pdata1, pdata2)

# b) Filtering pdata_all for age greater than 30
filtered_data_age <- subset(pdata_all, age > 30)

# c) Filtering pdata_all for patients with Type1 diabetes
filtered_data_diabetes <- subset(pdata_all, diabetes == "Type1")

# Display results
print("Combined Data (pdata_all):")
print(pdata_all)

print("Filtered Data (Age > 30):")
print(filtered_data_age)

print("Filtered Data (Type1 Diabetes):")
print(filtered_data_diabetes)

          #### 10)# Function to find factors of a given number
f <- function(n) {
  print(paste("The factors of", n, "are:"))
  for (i in 1:n) {
    if (n %% i == 0) {
      print(i)
    }
  }
}



