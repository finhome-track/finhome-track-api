# TransferenceApi

All URIs are relative to *http://localhost:8080/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addTransference**](TransferenceApi.md#addTransference) | **POST** /transference | Add a new transference to the database |
| [**getTransferenceById**](TransferenceApi.md#getTransferenceById) | **GET** /transference/{transferenceId} | Find transference by ID |
| [**getTransferences**](TransferenceApi.md#getTransferences) | **GET** /transference | List transferences |
| [**updateTransference**](TransferenceApi.md#updateTransference) | **PUT** /transference | Update an existing transference |
| [**updateTransferenceWithForm**](TransferenceApi.md#updateTransferenceWithForm) | **POST** /transference/{transferenceId} | Updates a transference in the store with form data |


<a name="addTransference"></a>
# **addTransference**
> Transference addTransference(Transference)

Add a new transference to the database

    Add a new transference to the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Transference** | [**Transference**](../Models/Transference.md)| Create a new transference in the database | |

### Return type

[**Transference**](../Models/Transference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getTransferenceById"></a>
# **getTransferenceById**
> Transference getTransferenceById(transferenceId)

Find transference by ID

    Returns a single transference

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transferenceId** | **Long**| ID of transference to return | [default to null] |

### Return type

[**Transference**](../Models/Transference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTransferences"></a>
# **getTransferences**
> List getTransferences(from, to, since)

List transferences

    Retrieves transferences in the database

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **from** | **String**| Filter by &#x60;from&#x60; tag | [optional] [default to null] |
| **to** | **String**| Filter by &#x60;to&#x60; tag | [optional] [default to null] |
| **since** | **String**| List only transference added since the provided value | [optional] [default to 1w] |

### Return type

[**List**](../Models/Transference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateTransference"></a>
# **updateTransference**
> Transference updateTransference(Transference)

Update an existing transference

    Update an existing transference by Id

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Transference** | [**Transference**](../Models/Transference.md)| Update an existent transference in the store | |

### Return type

[**Transference**](../Models/Transference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateTransferenceWithForm"></a>
# **updateTransferenceWithForm**
> updateTransferenceWithForm(transferenceId, name, status)

Updates a transference in the store with form data

    

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transferenceId** | **Long**| ID of transference that needs to be updated | [default to null] |
| **name** | **String**| Name of pet that needs to be updated | [optional] [default to null] |
| **status** | **String**| Status of pet that needs to be updated | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

