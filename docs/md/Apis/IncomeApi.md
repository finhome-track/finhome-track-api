# IncomeApi

All URIs are relative to *http://localhost:8080/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addIncome**](IncomeApi.md#addIncome) | **POST** /income | Add a new income to the database |
| [**getIncomeById**](IncomeApi.md#getIncomeById) | **GET** /income/{incomeId} | Find income by ID |
| [**getIncomes**](IncomeApi.md#getIncomes) | **GET** /income | List incomes |
| [**updateIncome**](IncomeApi.md#updateIncome) | **PUT** /income | Update an existing income |
| [**updatePetWithForm**](IncomeApi.md#updatePetWithForm) | **POST** /income/{incomeId} | Updates a pet in the store with form data |


<a name="addIncome"></a>
# **addIncome**
> Income addIncome(Income)

Add a new income to the database

    Add a new income to the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Income** | [**Income**](../Models/Income.md)| Create a new income in the database | |

### Return type

[**Income**](../Models/Income.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getIncomeById"></a>
# **getIncomeById**
> Income getIncomeById(incomeId)

Find income by ID

    Returns a single income

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **incomeId** | **Long**| ID of pet to return | [default to null] |

### Return type

[**Income**](../Models/Income.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIncomes"></a>
# **getIncomes**
> List getIncomes(from, to, since)

List incomes

    Retrieves incomes in the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **from** | **String**| Filter by &#x60;from&#x60; tag | [optional] [default to null] |
| **to** | **String**| Filter by &#x60;to&#x60; tag | [optional] [default to null] |
| **since** | **String**| List only incomes added since the provided value | [optional] [default to 1w] |

### Return type

[**List**](../Models/Income.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIncome"></a>
# **updateIncome**
> Income updateIncome(Income)

Update an existing income

    Update an existing income by Id

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Income** | [**Income**](../Models/Income.md)| Update an existent income in the store | |

### Return type

[**Income**](../Models/Income.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updatePetWithForm"></a>
# **updatePetWithForm**
> updatePetWithForm(incomeId, name, status)

Updates a pet in the store with form data

    

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **incomeId** | **Long**| ID of pet that needs to be updated | [default to null] |
| **name** | **String**| Name of pet that needs to be updated | [optional] [default to null] |
| **status** | **String**| Status of pet that needs to be updated | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

