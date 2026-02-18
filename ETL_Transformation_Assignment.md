# 📊 Transformation in ETL -- Assignment Solutions

## Question 1: Define Data Transformation in ETL and explain why it is important.

**Answer:**

Data Transformation is the process of converting raw data extracted from
different sources into a clean, structured, and usable format before
loading it into a data warehouse.

It is important because:

-   It ensures data consistency\
-   It improves data quality\
-   It enables accurate analysis and reporting\
-   It standardizes data formats\
-   It removes errors and duplicates

------------------------------------------------------------------------

## Question 2: List any four common activities involved in Data Cleaning.

**Answer:**

1.  Handling Missing Values -- Filling or removing null values.\
2.  Removing Duplicates -- Eliminating repeated records.\
3.  Correcting Inconsistent Data -- Standardizing formats (e.g., date
    formats).\
4.  Removing Outliers or Errors -- Detecting abnormal or incorrect
    values.

------------------------------------------------------------------------

## Question 3: What is the difference between Normalization and Standardization?

  -----------------------------------------------------------------------
  Normalization                     Standardization
  --------------------------------- -------------------------------------
  Scales data between 0 and 1       Scales data to mean = 0 and standard
                                    deviation = 1

  Uses Min-Max formula              Uses Z-score formula

  Sensitive to outliers             Less sensitive to outliers

  (X - Min) / (Max - Min)           (X - Mean) / Standard Deviation
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## Question 4: A dataset has missing values in the "Age" column. Suggest two techniques to handle this and explain when they should be used.

**Answer:**

1.  Mean/Median Imputation
    -   Replace missing values with mean or median age.\
    -   Use when missing values are few.\
    -   Median is preferred if outliers exist.
2.  Deleting Rows
    -   Remove rows with missing Age values.\
    -   Use when missing data is very small (e.g., less than 5%).

------------------------------------------------------------------------

## Question 5: Convert inconsistent "Gender" entries into standardized format.

**Input:** \["M", "male", "F", "Female", "MALE", "f"\]

**Standardized Output:** \["Male", "Male", "Female", "Female", "Male",
"Female"\]

------------------------------------------------------------------------

## Question 6: What is One-Hot Encoding? Example with "Red, Blue, Green".

One-Hot Encoding converts categorical data into binary columns.

  Color   Red   Blue   Green
  ------- ----- ------ -------
  Red     1     0      0
  Blue    0     1      0
  Green   0     0      1

------------------------------------------------------------------------

## Question 7: Difference between Data Integration and Data Mapping.

**Data Integration** - Combines data from multiple sources. - Creates a
unified dataset.

**Data Mapping** - Defines how source fields correspond to target
fields. - Establishes field-to-field relationships.

------------------------------------------------------------------------

## Question 8: Why Z-score Standardization is preferred over Min-Max Scaling when outliers exist.

Z-score Standardization is preferred because:

-   It uses mean and standard deviation.\
-   It does not get heavily distorted by extreme minimum or maximum
    values.\
-   Min-Max scaling compresses data when outliers exist.\
-   Z-score keeps distribution centered around zero.

------------------------------------------------------------------------


