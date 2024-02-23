# ExpenseApi

All URIs are relative to *http://localhost:8080/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addExpense**](ExpenseApi.md#addExpense) | **POST** /expense | Add a new expense to the database |
| [**getExpenseById**](ExpenseApi.md#getExpenseById) | **GET** /expense/{expenseId} | Find expense by ID |
| [**getExpenses**](ExpenseApi.md#getExpenses) | **GET** /expense | List expenses |
| [**updateExpense**](ExpenseApi.md#updateExpense) | **PUT** /expense | Update an existing expense |
| [**updateExpenseWithForm**](ExpenseApi.md#updateExpenseWithForm) | **POST** /expense/{expenseId} | Updates a expense in the store with form data |


<a name="addExpense"></a>
# **addExpense**
> Expense addExpense(Expense)

Add a new expense to the database

    Add a new expense to the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Expense** | [**Expense**](../Models/Expense.md)| Create a new expense in the database | |

### Return type

[**Expense**](../Models/Expense.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getExpenseById"></a>
# **getExpenseById**
> Expense getExpenseById(expenseId)

Find expense by ID

    Returns a single expense

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expenseId** | **Long**| ID of expense to return | [default to null] |

### Return type

[**Expense**](../Models/Expense.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getExpenses"></a>
# **getExpenses**
> List getExpenses(from, to, since)

List expenses

    Retrieves expenses in the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **from** | **String**| Filter by &#x60;from&#x60; tag | [optional] [default to null] |
| **to** | **String**| Filter by &#x60;to&#x60; tag | [optional] [default to null] |
| **since** | **String**| List only incomes added since the provided value | [optional] [default to 1w] |

### Return type

[**List**](../Models/Expense.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateExpense"></a>
# **updateExpense**
> Expense updateExpense(Expense)

Update an existing expense

    Update an existing expense by Id

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Expense** | [**Expense**](../Models/Expense.md)| Update an existent expense in the database | |

### Return type

[**Expense**](../Models/Expense.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateExpenseWithForm"></a>
# **updateExpenseWithForm**
> updateExpenseWithForm(expenseId, name, status)

Updates a expense in the store with form data

    

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expenseId** | **Long**| ID of expense that needs to be updated | [default to null] |
| **name** | **String**| Name of pet that needs to be updated | [optional] [default to null] |
| **status** | **String**| Status of pet that needs to be updated | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

