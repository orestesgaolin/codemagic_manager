# codemagic_manager

Simple unofficial api client to fetch builds and applications details from your Codemagic account.

## Getting Started

Codemagic has exposed an API to access information about builds and applications. This is a simple wrapper to help you manage your builds.

Take a look at example:

![example app](https://github.com/orestesgaolin/codemagic_manager/raw/master/codemagic_manager/img/screenshot.png)

### API documentation

First of all check the official [Codemagic API docs here](https://docs.codemagic.io/rest-api/overview/). The API is in preview and may change significantly during development period.

### Using the client

The library exposes `CodemagicClient` that is a HTTP client using `dart:io` http client to fetch and deserialize responses from Codemagic API.

To initialize the client you should call:

```dart
final client = CodemagicClient(
    authKey: 'AUTH-KEY',
    apiUrl: 'https://api.codemagic.io',
),
```

The `AUTH-KEY` as of now is available to get from your Codemagic account settings in **User settings > Integrations > Codemagic API > Show**.

### Available methods

Right now following endpoints are available

**Get Builds**

Object consisting of two sets of information:

- list of `Application`s
- list of `Build`s

```dart
final buildsResponse = await client.getBuilds();
if (buildsResponse.wasSuccessful) {
    //handle buildsResponse.data
} else {
    //handle buildsResponse.error
}
```

**Get Application**

Specific informations about the given `Application`.

```dart
final appsResponse = await client.getApplication('application-id');
if (appsResponse.wasSuccessful) {
    //handle appsResponse.data
} else {
    //handle appsResponse.error
}
```

**Start build**

Start build based on the `appId`, `workflowId` and desired `branch`.

```dart
final appsResponse = await client.startBuild('application-id', 'workflow-id', 'master');
if (appsResponse.wasSuccessful) {
    //handle appsResponse.data
} else {
    //handle appsResponse.error
}
```

**Cancel build**

Cancel build by its id.

```dart
final appsResponse = await client.cancelBuild('build-id');
if (appsResponse.wasSuccessful) {
    //handle appsResponse.data
} else {
    //handle appsResponse.error
}
```

## Work in progress

This library is a work in progress. Some models are not generated yet and others may not be fully tested. Please report bugs if you encounter any!

## Contributions

All the contributions are welcome! Please feel free to file issues or create PR if you would like to improve the library. 