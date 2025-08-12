# codemagic_manager

Simple unofficial API client to fetch builds and applications details from your Codemagic account.

## Getting Started

Codemagic has exposed an API to access information about builds and applications. This is a simple wrapper to help you manage your builds.

Take a look at example:

<img src="https://raw.githubusercontent.com/orestesgaolin/codemagic_manager/refs/heads/master/codemagic_manager/img/screenshot.png"/>

### API documentation

First of all check the official [Codemagic API docs here](https://docs.codemagic.io/rest-api/overview/). The API is in preview and may change significantly during development period.

### Using the client

The library exposes `CodemagicClient` that is a HTTP client using `dart:io` http client to fetch and deserialize responses from Codemagic API.

To initialize the client you should call:

```dart
final client = CodemagicClient(
    authKey: 'AUTH-KEY',
    apiUrl: 'https://api.codemagic.io',
);
```

The `AUTH-KEY` as of now is available to get from your Codemagic account settings in **User settings > Integrations > Codemagic API > Show**.

### Available methods

The following endpoints are available:

#### Get Builds

Object consisting of two sets of information:

- list of `Application`s
- list of `Build`s

Supports pagination and filtering:

```dart
// Get all builds
final buildsResponse = await client.getBuilds();

// Get builds with pagination
final buildsResponse = await client.getBuilds(skip: 30);

// Get builds for specific app
final buildsResponse = await client.getBuilds(appId: 'app-id');

// Get builds for specific workflow and branch
final buildsResponse = await client.getBuilds(
  workflowId: 'workflow-id',
  branch: 'main',
);

if (buildsResponse.wasSuccessful) {
    //handle buildsResponse.data
} else {
    //handle buildsResponse.error
}
```

#### Get Application

Specific information about the given `Application`.

```dart
final appsResponse = await client.getApplication('application-id');
if (appsResponse.wasSuccessful) {
    //handle appsResponse.data
} else {
    //handle appsResponse.error
}
```

#### Start Build

Start build based on the `appId`, `workflowId` and desired `branch` or `tag`.
Supports custom parameters like environment variables, labels, and instance type.

```dart
// Basic build start
final buildResponse = await client.startBuild('app-id', 'workflow-id', branch: 'main');

// Build with custom parameters
final buildResponse = await client.startBuild(
  'app-id',
  'workflow-id',
  branch: 'main',
  environment: {
    'variables': {
      'ENVIRONMENT_VARIABLE_1': 'value1',
      'ENVIRONMENT_VARIABLE_2': 'value2',
    },
    'groups': ['variable_group_1', 'variable_group_2'],
    'softwareVersions': {
      'xcode': '11.4.1',
      'flutter': 'v1.12.13+hotfix.9',
    },
  },
  labels: ['custom-label', 'another-label'],
  instanceType: 'mac_mini_m2',
);

// Build from tag instead of branch
final buildResponse = await client.startBuild('app-id', 'workflow-id', tag: 'v1.0.0');

if (buildResponse.wasSuccessful) {
    //handle buildResponse.data (contains buildId)
} else {
    //handle buildResponse.error
}
```

#### Get Build Status

Get detailed status information for a specific build:

```dart
final statusResponse = await client.getBuildStatus('build-id');
if (statusResponse.wasSuccessful) {
    print('Build status: ${statusResponse.data!.build.status}');
    print('Application: ${statusResponse.data!.application.appName}');
} else {
    //handle statusResponse.error
}
```

#### Cancel Build

Cancel build by its id.

```dart
final cancelResponse = await client.cancelBuild('build-id');
if (cancelResponse.wasSuccessful) {
    //handle cancelResponse.data
} else {
    //handle cancelResponse.error
}
```

#### Artifact Management

Generate public download URLs for build artifacts:

```dart
// Get the artifact URL from build artifacts first
final buildsResponse = await client.getBuilds();
final artifactUrl = buildsResponse.data!.builds.first.artefacts.first.url!;

// Generate public URL (expires in 1 hour)
final expiresAt = DateTime.now().add(Duration(hours: 1)).millisecondsSinceEpoch ~/ 1000;
final publicUrlResponse = await client.getArtifactPublicUrl(artifactUrl, expiresAt);

if (publicUrlResponse.wasSuccessful) {
    final downloadUrl = publicUrlResponse.data!.url;
    print('Download URL: $downloadUrl');
    print('Expires at: ${publicUrlResponse.data!.expiresAt}');
} else {
    //handle publicUrlResponse.error
}
```

#### Cache Management

Manage application caches:

```dart
// Get all caches for an application
final cachesResponse = await client.getApplicationCaches('app-id');
if (cachesResponse.wasSuccessful) {
    for (final cache in cachesResponse.data!.caches) {
        print('Cache for workflow ${cache.workflowId}: ${cache.size} bytes');
    }
}

// Delete all caches for an application
final deleteResponse = await client.deleteApplicationCaches('app-id');
if (deleteResponse.wasSuccessful) {
    print('Cache deletion started: ${deleteResponse.data!.message}');
}

// Delete specific cache
final deleteResponse = await client.deleteApplicationCache('app-id', 'cache-id');
if (deleteResponse.wasSuccessful) {
    print('Cache deletion started: ${deleteResponse.data!.message}');
}
```

## Enhanced Example App

The example app has been enhanced with:

- **Application Details**: Detailed view for each application with repository information and workflows
- **Build Management**: Enhanced build listing with status indicators and pagination
- **Artifact Downloads**: Direct download support for build artifacts with public URL generation
- **Cache Management**: View and delete application caches
- **Responsive UI**: Modern Material Design interface with proper navigation

Run the example app to see all features in action:

```bash
cd example
flutter run
```

## Work in progress

This library is a work in progress. Some models are not generated yet and others may not be fully tested. Please report bugs if you encounter any!

## Contributions

All the contributions are welcome! Please feel free to file issues or create PR if you would like to improve the library. 