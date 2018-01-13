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
     
    
