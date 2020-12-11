## [0.3.0-nullsafety.0] - Null-safety migration

* Migrated to nnbd
* Removed freezed dependency
* Removed dio dependency in favor of HttpClient
* Added basic tests
* Simplified API - some properties might change, so please this might be slight BREAKING CHANGE

## [0.2.1] - Tweaks and docs

* Updated docs and dependencies
* Removed `sshAccessEnabled` in `startBuild` as it's [no longer configured when starting build](https://docs.codemagic.io/troubleshooting/accessing-builder-machine-via-ssh/) but always available

## [0.2.0] - Starting and cancelling builds

* Added methods to start and cancel running build

## [0.1.3] - Platform issues

* Fixed missing platforms

## [0.1.2+1] - Package info

* Added some package information like issue tracker

## [0.1.2] - Platforms

* Added missing platforms

## [0.1.1+1] - Improvements

* Improve quality of code, document API etc.

## [0.1.0] - Initial release 🎉

* First version allowing to query applications and builds in a limited manner
