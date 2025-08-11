## 0.5.0

Complete API endpoints implementation

- Added support for all missing Codemagic API endpoints
- Applications API - `getApplications()` to list all applications
- Builds API - `getBuild(id)` and `getBuildsForApplication(appId)` for detailed build queries
- Artifacts API - `getArtifacts(buildId)` and `getArtifact(id)` for build artifact management
- Caches API - `getCaches()`, `getCache(id)`, and `deleteCache(id)` for cache management
- Teams API - `getTeams()`, `getTeam(id)`, and `getTeamMembers(teamId)` for team management
- Enhanced example application with tabbed interface showcasing all new functionality
- Comprehensive test coverage for all new endpoints
- IMPROVED: Enhanced documentation for existing methods (`getBuilds`, `getApplication`, `startBuild`)
- Added proper model classes: `Applications`, `Artifacts`, `Cache`, `Team`, `TeamMember`, etc.
- All models use json_serializable for consistent serialization

## 0.4.0

Dart SDK 3.0.0 and null safety

- Updated dependencies
- Migrated to null safety

## 0.3.0+1

Maintenance update

- Docs update

## 0.3.0

Null-safety support

- Migrate to null-safety - please report bugs if found!

## 0.3.0-nullsafety.1

Null-safety migration

- update docs

## 0.3.0-nullsafety.0

Null-safety migration

- Migrated to nnbd
- Removed freezed dependency
- Removed dio dependency in favor of HttpClient
- Added basic tests
- Simplified API - some properties might change, so please this might be slight BREAKING CHANGE

## 0.2.1

Tweaks and docs

- Updated docs and dependencies
- Removed `sshAccessEnabled` in `startBuild` as it's [no longer configured when starting build](https://docs.codemagic.io/troubleshooting/accessing-builder-machine-via-ssh/) but always available

## 0.2.0

Starting and cancelling builds

- Added methods to start and cancel running build

## 0.1.3

Platform issues

- Fixed missing platforms

## 0.1.2+1

Package info

- Added some package information like issue tracker

## 0.1.2

Platforms

- Added missing platforms

## 0.1.1+1

Improvements

- Improve quality of code, document API etc.

## 0.1.0

Initial release 🎉

- First version allowing to query applications and builds in a limited manner
