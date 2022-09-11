# GComments.UserApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createUser) | **POST** /user | Create user
[**deleteUser**](UserApi.md#deleteUser) | **DELETE** /user/{username} | Delete user
[**getUserByName**](UserApi.md#getUserByName) | **GET** /user/{username} | Get user by user name
[**loginUser**](UserApi.md#loginUser) | **GET** /user/login | Logs user into the system
[**logoutUser**](UserApi.md#logoutUser) | **GET** /user/logout | Logs out current logged in user session
[**updateUser**](UserApi.md#updateUser) | **PUT** /user/{username} | Updated user



## createUser

> createUser(user)

Create user

This can only be done by the logged in user.

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
let user = new GComments.User(); // User | Created user object
apiInstance.createUser(user, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| Created user object | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## deleteUser

> deleteUser(username)

Delete user

This can only be done by the logged in user.

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
let username = "username_example"; // String | The name that needs to be deleted
apiInstance.deleteUser(username, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The name that needs to be deleted | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getUserByName

> User getUserByName(username)

Get user by user name

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
let username = "username_example"; // String | The name that needs to be fetched. Use user1 for testing.
apiInstance.getUserByName(username, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The name that needs to be fetched. Use user1 for testing. | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## loginUser

> String loginUser(username, password)

Logs user into the system

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
let username = "username_example"; // String | The user name for login
let password = "password_example"; // String | The password for login in clear text
apiInstance.loginUser(username, password, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The user name for login | 
 **password** | **String**| The password for login in clear text | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml


## logoutUser

> logoutUser()

Logs out current logged in user session

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
apiInstance.logoutUser((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updateUser

> updateUser(username, user)

Updated user

This can only be done by the logged in user.

### Example

```javascript
import GComments from 'g_comments';

let apiInstance = new GComments.UserApi();
let username = "username_example"; // String | name that need to be updated
let user = new GComments.User(); // User | Updated user object
apiInstance.updateUser(username, user, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| name that need to be updated | 
 **user** | [**User**](User.md)| Updated user object | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

