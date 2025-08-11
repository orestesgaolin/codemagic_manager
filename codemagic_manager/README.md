# codemagic_manager

Simple unofficial api client to fetch builds and applications details from your Codemagic account.

## Getting Started

Codemagic has exposed an API to access information about builds and applications. This is a simple wrapper to help you manage your builds.

Take a look at example:

![example app](https://github.com/orestesgaolin/codemagic_manager/raw/master/codemagic_manager/img/screenshot.png)

### API documentation

First of all check the official [Codemagic API docs here](https://docs.codemagic.io/rest-api/overview/). The API is in preview and may change significantly during development period.

### Regenerating the schema

This client is generated usigng `package:swagger_parser`. To regenerate follow the official docs. Schema is located in `codemagic_open_api.json`.

```sh
dart run swagger_parser
dart run build_runner build --delete-conflicting-outputs
```

## Work in progress

This library is a work in progress. Some models are not generated yet and others may not be fully tested. Please report bugs if you encounter any!

## Contributions

All the contributions are welcome! Please feel free to file issues or create PR if you would like to improve the library. 