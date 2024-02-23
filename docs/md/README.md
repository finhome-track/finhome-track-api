# Documentation for FinHome Tracker API - OpenAPI 3.1

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080/api/v1*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *ExpenseApi* | [**addExpense**](Apis/ExpenseApi.md#addexpense) | **POST** /expense | Add a new expense to the database |
*ExpenseApi* | [**getExpenseById**](Apis/ExpenseApi.md#getexpensebyid) | **GET** /expense/{expenseId} | Find expense by ID |
*ExpenseApi* | [**getExpenses**](Apis/ExpenseApi.md#getexpenses) | **GET** /expense | List expenses |
*ExpenseApi* | [**updateExpense**](Apis/ExpenseApi.md#updateexpense) | **PUT** /expense | Update an existing expense |
*ExpenseApi* | [**updateExpenseWithForm**](Apis/ExpenseApi.md#updateexpensewithform) | **POST** /expense/{expenseId} | Updates a expense in the store with form data |
| *IncomeApi* | [**addIncome**](Apis/IncomeApi.md#addincome) | **POST** /income | Add a new income to the database |
*IncomeApi* | [**getIncomeById**](Apis/IncomeApi.md#getincomebyid) | **GET** /income/{incomeId} | Find income by ID |
*IncomeApi* | [**getIncomes**](Apis/IncomeApi.md#getincomes) | **GET** /income | List incomes |
*IncomeApi* | [**updateIncome**](Apis/IncomeApi.md#updateincome) | **PUT** /income | Update an existing income |
*IncomeApi* | [**updatePetWithForm**](Apis/IncomeApi.md#updatepetwithform) | **POST** /income/{incomeId} | Updates a pet in the store with form data |
| *TransferenceApi* | [**addTransference**](Apis/TransferenceApi.md#addtransference) | **POST** /transference | Add a new transference to the database |
*TransferenceApi* | [**getTransferenceById**](Apis/TransferenceApi.md#gettransferencebyid) | **GET** /transference/{transferenceId} | Find transference by ID |
*TransferenceApi* | [**getTransferences**](Apis/TransferenceApi.md#gettransferences) | **GET** /transference | List transferences |
*TransferenceApi* | [**updateTransference**](Apis/TransferenceApi.md#updatetransference) | **PUT** /transference | Update an existing transference |
*TransferenceApi* | [**updateTransferenceWithForm**](Apis/TransferenceApi.md#updatetransferencewithform) | **POST** /transference/{transferenceId} | Updates a transference in the store with form data |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [ApiResponse](./Models/ApiResponse.md)
 - [Expense](./Models/Expense.md)
 - [Income](./Models/Income.md)
 - [Transference](./Models/Transference.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="api_key"></a>
### api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header

<a name="jwt"></a>
### jwt

- **Type**: HTTP Bearer Token authentication (JWT")

