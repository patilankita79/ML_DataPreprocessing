# ML_DataPreprocessing
- Data preprocessing is the crucial step in making a ML model. 
- If there is no data preprocessing step on the data, your ML model won't work properly
<hr>


<table>
    <tr>
        <td><strong>Languages Used:</strong></td>
        <td>Python, R</td>
    </tr>
    <tr>
        <td><strong>IDE Used:</strong></td>
        <td>Spyder, RStudio</td>
    </tr>
</table>

<hr>

### Pre-processing steps to do to prepare any dataset on which we will build ML model

1. **Get the dataset** <br>
     The first step is always to get the dataset and try to understand dataset. Try to figure out what all are independent variables and       what are dependent variables.In ML, some independent variables are used to predict a depedent variable.
    
    - The name of the dataset I have taken is 'Data.csv'.
    - Dataset contains four columns -> Country, Age, Salary, Purchased. Dataset has total 10 observations.
    - Dataset contains information of customers of some company and first three columns are information of a customer like country, age,         salary and fourth column tells if the customer has purchased the product of the company or not.
    - In Data.csv, first three columns i.e. *Country, Age, Salary* are independent variables and fourth column *Purchased* is an          indepedent        variable
 
2. **Importing the libraries** 
    - For Python, import the following three essential libraries
        - numpy -> contains mathematical tools
        - matplotlib -> to plot nice charts
        - pandas -> to import the dataset and manage the dataset
     - For R, we don't need to import any libraries 
 
 3. **Import the dataset**
     - For Python, you have to create the matrix of features and dependent variable vector
     - Hence for Data.csv, create the matrix of three independent variables and then create the dependent variable vector
     
 4. **Dealing with missing data** 
    - Your dataset may contain missing data. In Data.csv, we can see that there is one missing data in the age column for Spain and one       missing data in salary column for Germany
    - One way to deal with missing data is to remove the lines of the observaton where there is some missing data but that can be        dangerous because the data set may contain crucial information. So it is quite dangerous to remove observation
    - Another way to handle missing data is to take the mean of the columns. So in age column where we have missing entry for Spain, we   will replace this missing data by the mean of all the values in the column age
    - In Python, Imputer class from Scikitlearn preprocessing library allows us to take care of missing data
    - In R, we can write ifelse condition to check missing data and take mean of that column if the condition holds true

 5. **Encode categorical data**
    - Your dataset may contain quantitative and qualitative variables. Quantitative variables contain numeric values whereas qualitative variables contain the categories or levels within the data
    - ML models are based on mathematical equations, so it would cause some problem if we keep the text and use categorical variables in the equation because we only want numbers in the equations. That's why we need to encode categorical variables
    - In 'Data.csv', Country and Purchased are categorical variables because they simply contain categories
      - *Country* variable contains three categories - France, Spain, Germany
      - *Purchased* variable contains two categories - yes, no
    - In Python, categorical data can be encoded using LabelEncoder class for scikit learn preprocessing. Hence, python will give levels to these categories and the order of those levels is not important. But we have to prevent ML equations from thinking one level is greater than other or vice versa. To prevent this, we use dummy variables. So, for example, for Country column, instead of having one column, we will have 3 columns. This can be achieved with the help of OneHotEncoder class
    - We don't need to use OneHotEncoder for Purchased variable which is a dependent variable.Since it is a dependent variable ML will know that it is a category and there is no order between the categories of Purchased variable.
    - In R, we use factor function to transform a categorical variable to numeric variable
    
  6. **Split the dataset into training data and test data**
      - ML is about a machine that is going to learn from the data to make predictions
      - We need to split the dataset into training set and test set. Using training set, we build the machine model and using test set, we test the performance of this machine learning model
      - We are building our ML model on training set by establishing some correlation between independent variables and dependent variables and once the ML model understands the correlation between independent variables and dependent variables we will test if the ML model can apply the correlations you understood based on training set on test set
      - In nutshell, we have to make two different datasets. The training set on which the machine learning model learns and test set on which we test if the ML model learned correctly the correlations
      - In Python, cross-validation class from scikit library is used to split the dataset into training and test set
      - In R, caTools library is used to split the dataset into training and test set
      
   7. **Feature Scaling**
       - In the dataset, the variables age and salary are not on the same scale because the Age is ranging from 27 to 50 and Salary is ranging 40k to 90k
       - We need to have these variables in the same scale otherwise their distance(or Euclidean distance) would be dominated by the variable with high range
       - Standardization and normalization are two ways of doing feature scaling
       - In Python, we use StandardScaler class from scikit preprocessing library
       - In R, we use scale function

    
     
    
