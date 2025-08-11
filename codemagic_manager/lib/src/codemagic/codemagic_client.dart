// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/apps_schemas_create_variable_group.dart';
import '../models/classic_pagination_api_controllers_apps_schemas_tester_group_schema.dart';
import '../models/classic_pagination_api_controllers_apps_schemas_variable_group_schema.dart';
import '../models/classic_pagination_api_controllers_teams_schemas_app_preview_schema.dart';
import '../models/classic_pagination_api_controllers_teams_schemas_app_schema.dart';
import '../models/classic_pagination_api_controllers_teams_schemas_variable_group_schema.dart';
import '../models/classic_pagination_api_controllers_tester_groups_schemas_tester_group_contact_schema.dart';
import '../models/classic_pagination_api_controllers_user_schemas_app_schema.dart';
import '../models/classic_pagination_api_controllers_user_schemas_notification_schema.dart';
import '../models/classic_pagination_api_controllers_user_schemas_team_schema.dart';
import '../models/classic_pagination_api_controllers_variable_groups_schemas_environment_variable_schema.dart';
import '../models/create_tester_group.dart';
import '../models/cursor_pagination_bson_objectid_object_id_api_controllers_dashboards_schemas_build_schema.dart';
import '../models/features_schema.dart';
import '../models/no_pagination_api_controllers_apps_schemas_tester_group_schema.dart';
import '../models/no_pagination_api_controllers_apps_schemas_variable_group_schema.dart';
import '../models/no_pagination_api_controllers_builds_schemas_started_app_preview_schema.dart';
import '../models/no_pagination_api_controllers_dashboards_schemas_dashboard_schema.dart';
import '../models/no_pagination_api_controllers_meta_schemas_meta_schema.dart';
import '../models/no_pagination_api_controllers_meta_schemas_shorebird_schema.dart';
import '../models/no_pagination_api_controllers_previews_schemas_app_preview_schema.dart';
import '../models/no_pagination_api_controllers_previews_schemas_shared_app_preview_schema.dart';
import '../models/no_pagination_api_controllers_shared_previews_schemas_shared_app_preview_details_schema.dart';
import '../models/no_pagination_api_controllers_teams_schemas_audit_log_connector_schema.dart';
import '../models/no_pagination_api_controllers_teams_schemas_variable_group_schema.dart';
import '../models/no_pagination_api_controllers_tester_groups_schemas_tester_group_schema.dart';
import '../models/no_pagination_api_controllers_user_schemas_api_key_schema.dart';
import '../models/no_pagination_api_controllers_user_schemas_preferences_schema.dart';
import '../models/no_pagination_api_controllers_user_schemas_user_schema.dart';
import '../models/no_pagination_api_controllers_variable_groups_schemas_environment_variable_schema.dart';
import '../models/no_pagination_api_controllers_variable_groups_schemas_variable_group_schema.dart';
import '../models/start_preview_schema.dart';
import '../models/teams_schemas_create_variable_group.dart';
import '../models/tester_groups_schemas_bulk_import_schema.dart';
import '../models/track_user_schema.dart';
import '../models/update_audit_log_connector.dart';
import '../models/update_environment_variable_schema.dart';
import '../models/update_group_schema.dart';
import '../models/update_tester_group.dart';
import '../models/variable_groups_schemas_bulk_import_schema.dart';

part 'codemagic_client.g.dart';

@RestApi()
abstract class CodemagicClient {
  factory CodemagicClient(Dio dio, {String? baseUrl}) = _CodemagicClient;

  /// List tester groups for the app.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/apps/{app_id}/tester-groups')
  Future<ClassicPaginationApiControllersAppsSchemasTesterGroupSchema> apiV3AppsAppIdTesterGroupsGetTesterGroups({
    @Path('app_id') required String appId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Create tester group for the app
  @POST('/api/v3/apps/{app_id}/tester-groups')
  Future<NoPaginationApiControllersAppsSchemasTesterGroupSchema> apiV3AppsAppIdTesterGroupsCreateTesterGroup({
    @Path('app_id') required String appId,
    @Body() required CreateTesterGroup body,
  });

  /// List variable groups for the app.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/apps/{app_id}/variable-groups')
  Future<ClassicPaginationApiControllersAppsSchemasVariableGroupSchema> apiV3AppsAppIdVariableGroupsGetVariableGroups({
    @Path('app_id') required String appId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Create a variable group for the app
  @POST('/api/v3/apps/{app_id}/variable-groups')
  Future<NoPaginationApiControllersAppsSchemasVariableGroupSchema> apiV3AppsAppIdVariableGroupsCreateVariableGroup({
    @Path('app_id') required String appId,
    @Body() required AppsSchemasCreateVariableGroup body,
  });

  /// Start an app preview
  @POST('/api/v3/builds/{build_id}/preview')
  Future<NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema> apiV3BuildsBuildIdPreviewStartPreview({
    @Path('build_id') required String buildId,
    @Body() required StartPreviewSchema body,
  });

  /// List dashboard builds.
  ///
  /// [cursor] - A unique identifier after which the results should be returned.
  ///
  /// [pageSize] - The maximum number of results per page.
  @GET('/api/v3/dashboards/{uuid}/builds')
  Future<CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema> apiV3DashboardsUuidBuildsGetBuilds({
    @Path('uuid') required String uuid,
    @Query('page_size') int? pageSize = 30,
    @Query('cursor') dynamic cursor,
  });

  /// Get a dashboard.
  ///
  /// For more information, see "[Build dashboards](https://docs.codemagic.io/knowledge-others/build-dashboards/).".
  @GET('/api/v3/dashboards/{uuid}')
  Future<NoPaginationApiControllersDashboardsSchemasDashboardSchema> apiV3DashboardsUuidGetDashboard({
    @Path('uuid') required String uuid,
  });

  /// Get meta information.
  ///
  /// Returns meta information about Codemagic, including a list of using IP addresses.
  ///
  /// These IP addresses are in [CIDR notation](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation).
  /// You can use an online conversion tool to convert from CIDR notation to IP address ranges, if needed.
  ///
  /// We make changes to our IP addresses from time to time. If you use these IP ranges we strongly encourage regular monitoring of our API.
  @GET('/api/v3/meta')
  Future<NoPaginationApiControllersMetaSchemasMetaSchema> apiV3MetaMeta();

  /// Get information about Shorebird integration
  @GET('/api/v3/meta/shorebird')
  Future<NoPaginationApiControllersMetaSchemasShorebirdSchema> apiV3MetaShorebirdShorebird();

  /// Get app preview information
  @GET('/api/v3/previews/{preview_id}')
  Future<NoPaginationApiControllersPreviewsSchemasAppPreviewSchema> apiV3PreviewsPreviewIdGetPreviewInformation({
    @Path('preview_id') required String previewId,
  });

  /// Stop an app preview
  @DELETE('/api/v3/previews/{preview_id}')
  Future<void> apiV3PreviewsPreviewIdStopPreview({
    @Path('preview_id') required String previewId,
  });

  /// Share an app preview.
  ///
  /// Create a public ID that can be used to retrieve app preview without authentication, see [`GET /shared-previews/{shared_preview_id}`](#/operations/SharedPreviewsSharedPreviewIdGetSharedPreview).
  @POST('/api/v3/previews/{preview_id}/share')
  Future<NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema> apiV3PreviewsPreviewIdShareSharePreview({
    @Path('preview_id') required String previewId,
  });

  /// Get shared app preview information.
  ///
  /// Get details of a publicly shared app preview. Does not require user authentication. See [`POST /previews/{preview_id}/share`](#/operations/PreviewsPreviewIdShareSharePreview) for app preview sharing.
  @GET('/api/v3/shared-previews/{shared_preview_id}')
  Future<NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema> apiV3SharedPreviewsSharedPreviewIdGetSharedPreview({
    @Path('shared_preview_id') required String sharedPreviewId,
  });

  /// Update subscription features for the team
  @PATCH('/api/v3/subscriptions/{team_id}/features')
  Future<void> apiV3SubscriptionsTeamIdFeaturesUpdateFeatures({
    @Path('team_id') required String teamId,
    @Body() required FeaturesSchema body,
  });

  /// List variable groups for the team.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/teams/{team_id}/variable-groups')
  Future<ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema> apiV3TeamsTeamIdVariableGroupsGetVariableGroups({
    @Path('team_id') required String teamId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Create a variable group for the team
  @POST('/api/v3/teams/{team_id}/variable-groups')
  Future<NoPaginationApiControllersTeamsSchemasVariableGroupSchema> apiV3TeamsTeamIdVariableGroupsCreateVariableGroup({
    @Path('team_id') required String teamId,
    @Body() required TeamsSchemasCreateVariableGroup body,
  });

  /// Get Audit Log Connector settings for the team
  @GET('/api/v3/teams/{team_id}/audit-log-connector')
  Future<NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema> apiV3TeamsTeamIdAuditLogConnectorGetAuditLogConnector({
    @Path('team_id') required String teamId,
  });

  /// Update Audit Log Connector settings for the team
  @PUT('/api/v3/teams/{team_id}/audit-log-connector')
  Future<NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema> apiV3TeamsTeamIdAuditLogConnectorUpdateAuditLogConnector({
    @Path('team_id') required String teamId,
    @Body() required UpdateAuditLogConnector body,
  });

  /// Delete Audit Log Connector settings for the team
  @DELETE('/api/v3/teams/{team_id}/audit-log-connector')
  Future<void> apiV3TeamsTeamIdAuditLogConnectorDeleteAuditLogConnector({
    @Path('team_id') required String teamId,
  });

  /// Download team audit log as CSV
  @GET('/api/v3/teams/{team_id}/audit-log')
  Future<String> apiV3TeamsTeamIdAuditLogDownloadAuditLog({
    @Path('team_id') required String teamId,
  });

  /// List app previews for the team.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/teams/{team_id}/previews')
  Future<ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema> apiV3TeamsTeamIdPreviewsGetAppPreviews({
    @Path('team_id') required String teamId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// List apps for the team.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/teams/{team_id}/apps')
  Future<ClassicPaginationApiControllersTeamsSchemasAppSchema> apiV3TeamsTeamIdAppsGetApps({
    @Path('team_id') required String teamId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// List contacts for the tester group.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/tester-groups/{tester_group_id}/contacts')
  Future<ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema> apiV3TesterGroupsTesterGroupIdContactsListContacts({
    @Path('tester_group_id') required String testerGroupId,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Bulk import contacts to the tester group.
  ///
  /// <!-- theme: warning -->.
  /// > The bulk import API is not designed to sync updates in real-time from an external database.
  ///
  /// ### Skipped contacts.
  ///
  /// Contacts must meet all the following criteria in order to be created or updated with this API:.
  ///
  /// - The imported contacts may not exceed your account limit.
  /// - The contact must have a valid email address.
  /// - The contact's email address must not be on an exclusion list.
  /// - The contact's email must not be on a list of bounced email addresses.
  ///
  /// If contacts do not meet all of these requirements, they will be skipped by the importer.
  @POST('/api/v3/tester-groups/{tester_group_id}/contacts')
  Future<void> apiV3TesterGroupsTesterGroupIdContactsBulkImport({
    @Path('tester_group_id') required String testerGroupId,
    @Body() required TesterGroupsSchemasBulkImportSchema body,
  });

  /// Delete contact from the tester group
  @DELETE('/api/v3/tester-groups/{tester_group_id}/contacts/{contact_id}')
  Future<void> apiV3TesterGroupsTesterGroupIdContactsContactIdDeleteContact({
    @Path('tester_group_id') required String testerGroupId,
    @Path('contact_id') required String contactId,
  });

  /// Get a tester group
  @GET('/api/v3/tester-groups/{tester_group_id}')
  Future<NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema> apiV3TesterGroupsTesterGroupIdGetGroup({
    @Path('tester_group_id') required String testerGroupId,
  });

  /// Delete tester group
  @DELETE('/api/v3/tester-groups/{tester_group_id}')
  Future<void> apiV3TesterGroupsTesterGroupIdDeleteGroup({
    @Path('tester_group_id') required String testerGroupId,
  });

  /// Update a tester group
  @PATCH('/api/v3/tester-groups/{tester_group_id}')
  Future<void> apiV3TesterGroupsTesterGroupIdUpdateTesterGroup({
    @Path('tester_group_id') required String testerGroupId,
    @Body() required UpdateTesterGroup body,
  });

  /// Get API key for the authenticated user
  @GET('/api/v3/user/api-key')
  Future<NoPaginationApiControllersUserSchemasApiKeySchema> apiV3UserApiKeyGetApiKey();

  /// Revoke API key for the authenticated user
  @DELETE('/api/v3/user/api-key')
  Future<void> apiV3UserApiKeyRevokeApiKey();

  /// List apps for the authenticated user.
  ///
  /// To list the applications belonging to a team, see [/teams/{team_id}/apps](#/operations/TeamsTeamIdAppsGetApps).
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/user/apps')
  Future<ClassicPaginationApiControllersUserSchemasAppSchema> apiV3UserAppsGetApps({
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Get notifications for the authenticated user.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/user/notifications')
  Future<ClassicPaginationApiControllersUserSchemasNotificationSchema> apiV3UserNotificationsGetNotifications({
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Get preferences for the authenticated user
  @GET('/api/v3/user/preferences')
  Future<NoPaginationApiControllersUserSchemasPreferencesSchema> apiV3UserPreferencesGetPreferences();

  /// List teams for the authenticated user.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  @GET('/api/v3/user/teams')
  Future<ClassicPaginationApiControllersUserSchemasTeamSchema> apiV3UserTeamsGetTeams({
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Get authenticated user info
  @GET('/api/v3/user')
  Future<NoPaginationApiControllersUserSchemasUserSchema> apiV3UserGetUser();

  /// Track user events
  @POST('/api/v3/user/track')
  Future<void> apiV3UserTrackTrack({
    @Body() required TrackUserSchema body,
  });

  /// List variables for the group.
  ///
  /// [pageSize] - The maximum number of results per page.
  ///
  /// [page] - The page number of the results to fetch.
  ///
  /// [search] - Search query to filter variables.
  @GET('/api/v3/variable-groups/{variable_group_id}/variables')
  Future<ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema> apiV3VariableGroupsVariableGroupIdVariablesGetVariables({
    @Path('variable_group_id') required String variableGroupId,
    @Query('search') String? search,
    @Query('page_size') int? pageSize = 30,
    @Query('page') int? page = 1,
  });

  /// Bulk import variables to the group
  @POST('/api/v3/variable-groups/{variable_group_id}/variables')
  Future<void> apiV3VariableGroupsVariableGroupIdVariablesBulkImport({
    @Path('variable_group_id') required String variableGroupId,
    @Body() required VariableGroupsSchemasBulkImportSchema body,
  });

  /// Get group information
  @GET('/api/v3/variable-groups/{variable_group_id}')
  Future<NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema> apiV3VariableGroupsVariableGroupIdGetGroup({
    @Path('variable_group_id') required String variableGroupId,
  });

  /// Delete the group and all variables
  @DELETE('/api/v3/variable-groups/{variable_group_id}')
  Future<void> apiV3VariableGroupsVariableGroupIdDeleteGroup({
    @Path('variable_group_id') required String variableGroupId,
  });

  /// Change group name and settings
  @PATCH('/api/v3/variable-groups/{variable_group_id}')
  Future<void> apiV3VariableGroupsVariableGroupIdUpdateGroup({
    @Path('variable_group_id') required String variableGroupId,
    @Body() required UpdateGroupSchema body,
  });

  /// Get a variable from the group
  @GET('/api/v3/variable-groups/{variable_group_id}/variables/{variable_id}')
  Future<NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema> apiV3VariableGroupsVariableGroupIdVariablesVariableIdGetVariable({
    @Path('variable_group_id') required String variableGroupId,
    @Path('variable_id') required String variableId,
  });

  /// Delete the variable
  @DELETE('/api/v3/variable-groups/{variable_group_id}/variables/{variable_id}')
  Future<void> apiV3VariableGroupsVariableGroupIdVariablesVariableIdDeleteVariable({
    @Path('variable_group_id') required String variableGroupId,
    @Path('variable_id') required String variableId,
  });

  /// Update the variable
  @PATCH('/api/v3/variable-groups/{variable_group_id}/variables/{variable_id}')
  Future<void> apiV3VariableGroupsVariableGroupIdVariablesVariableIdUpdateVariable({
    @Path('variable_group_id') required String variableGroupId,
    @Path('variable_id') required String variableId,
    @Body() required UpdateEnvironmentVariableSchema body,
  });
}
