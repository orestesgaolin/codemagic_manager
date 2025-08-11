// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codemagic_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _CodemagicClient implements CodemagicClient {
  _CodemagicClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ClassicPaginationApiControllersAppsSchemasTesterGroupSchema>
  apiV3AppsAppIdTesterGroupsGetTesterGroups({
    required String appId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersAppsSchemasTesterGroupSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/apps/${appId}/tester-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersAppsSchemasTesterGroupSchema _value;
    try {
      _value =
          ClassicPaginationApiControllersAppsSchemasTesterGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersAppsSchemasTesterGroupSchema>
  apiV3AppsAppIdTesterGroupsCreateTesterGroup({
    required String appId,
    required CreateTesterGroup body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<NoPaginationApiControllersAppsSchemasTesterGroupSchema>(
          Options(method: 'POST', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/apps/${appId}/tester-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersAppsSchemasTesterGroupSchema _value;
    try {
      _value = NoPaginationApiControllersAppsSchemasTesterGroupSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClassicPaginationApiControllersAppsSchemasVariableGroupSchema>
  apiV3AppsAppIdVariableGroupsGetVariableGroups({
    required String appId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersAppsSchemasVariableGroupSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/apps/${appId}/variable-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersAppsSchemasVariableGroupSchema _value;
    try {
      _value =
          ClassicPaginationApiControllersAppsSchemasVariableGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersAppsSchemasVariableGroupSchema>
  apiV3AppsAppIdVariableGroupsCreateVariableGroup({
    required String appId,
    required AppsSchemasCreateVariableGroup body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<
          NoPaginationApiControllersAppsSchemasVariableGroupSchema
        >(
          Options(method: 'POST', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/apps/${appId}/variable-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersAppsSchemasVariableGroupSchema _value;
    try {
      _value =
          NoPaginationApiControllersAppsSchemasVariableGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema>
  apiV3BuildsBuildIdPreviewStartPreview({
    required String buildId,
    required StartPreviewSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<
          NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema
        >(
          Options(method: 'POST', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/builds/${buildId}/preview',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema _value;
    try {
      _value =
          NoPaginationApiControllersBuildsSchemasStartedAppPreviewSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<
    CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema
  >
  apiV3DashboardsUuidBuildsGetBuilds({
    required String uuid,
    int? pageSize = 30,
    dynamic cursor,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'cursor': cursor.toJson(),
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/dashboards/${uuid}/builds',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema
    _value;
    try {
      _value =
          CursorPaginationBsonObjectidObjectIdApiControllersDashboardsSchemasBuildSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersDashboardsSchemasDashboardSchema>
  apiV3DashboardsUuidGetDashboard({required String uuid}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersDashboardsSchemasDashboardSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/dashboards/${uuid}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersDashboardsSchemasDashboardSchema _value;
    try {
      _value =
          NoPaginationApiControllersDashboardsSchemasDashboardSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersMetaSchemasMetaSchema>
  apiV3MetaMeta() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<NoPaginationApiControllersMetaSchemasMetaSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/meta',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersMetaSchemasMetaSchema _value;
    try {
      _value = NoPaginationApiControllersMetaSchemasMetaSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersMetaSchemasShorebirdSchema>
  apiV3MetaShorebirdShorebird() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<NoPaginationApiControllersMetaSchemasShorebirdSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/meta/shorebird',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersMetaSchemasShorebirdSchema _value;
    try {
      _value = NoPaginationApiControllersMetaSchemasShorebirdSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersPreviewsSchemasAppPreviewSchema>
  apiV3PreviewsPreviewIdGetPreviewInformation({
    required String previewId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersPreviewsSchemasAppPreviewSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/previews/${previewId}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersPreviewsSchemasAppPreviewSchema _value;
    try {
      _value =
          NoPaginationApiControllersPreviewsSchemasAppPreviewSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3PreviewsPreviewIdStopPreview({
    required String previewId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/previews/${previewId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema>
  apiV3PreviewsPreviewIdShareSharePreview({required String previewId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema
        >(
          Options(method: 'POST', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/previews/${previewId}/share',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema _value;
    try {
      _value =
          NoPaginationApiControllersPreviewsSchemasSharedAppPreviewSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<
    NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema
  >
  apiV3SharedPreviewsSharedPreviewIdGetSharedPreview({
    required String sharedPreviewId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/shared-previews/${sharedPreviewId}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema
    _value;
    try {
      _value =
          NoPaginationApiControllersSharedPreviewsSchemasSharedAppPreviewDetailsSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3SubscriptionsTeamIdFeaturesUpdateFeatures({
    required String teamId,
    required FeaturesSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/subscriptions/${teamId}/features',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema>
  apiV3TeamsTeamIdVariableGroupsGetVariableGroups({
    required String teamId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/variable-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema _value;
    try {
      _value =
          ClassicPaginationApiControllersTeamsSchemasVariableGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersTeamsSchemasVariableGroupSchema>
  apiV3TeamsTeamIdVariableGroupsCreateVariableGroup({
    required String teamId,
    required TeamsSchemasCreateVariableGroup body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<
          NoPaginationApiControllersTeamsSchemasVariableGroupSchema
        >(
          Options(method: 'POST', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/variable-groups',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersTeamsSchemasVariableGroupSchema _value;
    try {
      _value =
          NoPaginationApiControllersTeamsSchemasVariableGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema>
  apiV3TeamsTeamIdAuditLogConnectorGetAuditLogConnector({
    required String teamId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/audit-log-connector',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema _value;
    try {
      _value =
          NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema>
  apiV3TeamsTeamIdAuditLogConnectorUpdateAuditLogConnector({
    required String teamId,
    required UpdateAuditLogConnector body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<
          NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema
        >(
          Options(method: 'PUT', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/audit-log-connector',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema _value;
    try {
      _value =
          NoPaginationApiControllersTeamsSchemasAuditLogConnectorSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3TeamsTeamIdAuditLogConnectorDeleteAuditLogConnector({
    required String teamId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/teams/${teamId}/audit-log-connector',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<String> apiV3TeamsTeamIdAuditLogDownloadAuditLog({
    required String teamId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<String>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/teams/${teamId}/audit-log',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema>
  apiV3TeamsTeamIdPreviewsGetAppPreviews({
    required String teamId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/previews',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema _value;
    try {
      _value =
          ClassicPaginationApiControllersTeamsSchemasAppPreviewSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClassicPaginationApiControllersTeamsSchemasAppSchema>
  apiV3TeamsTeamIdAppsGetApps({
    required String teamId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ClassicPaginationApiControllersTeamsSchemasAppSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/teams/${teamId}/apps',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersTeamsSchemasAppSchema _value;
    try {
      _value = ClassicPaginationApiControllersTeamsSchemasAppSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<
    ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema
  >
  apiV3TesterGroupsTesterGroupIdContactsListContacts({
    required String testerGroupId,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/tester-groups/${testerGroupId}/contacts',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema
    _value;
    try {
      _value =
          ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3TesterGroupsTesterGroupIdContactsBulkImport({
    required String testerGroupId,
    required TesterGroupsSchemasBulkImportSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/tester-groups/${testerGroupId}/contacts',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<void> apiV3TesterGroupsTesterGroupIdContactsContactIdDeleteContact({
    required String testerGroupId,
    required String contactId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/tester-groups/${testerGroupId}/contacts/${contactId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema>
  apiV3TesterGroupsTesterGroupIdGetGroup({
    required String testerGroupId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/tester-groups/${testerGroupId}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema _value;
    try {
      _value =
          NoPaginationApiControllersTesterGroupsSchemasTesterGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3TesterGroupsTesterGroupIdDeleteGroup({
    required String testerGroupId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/tester-groups/${testerGroupId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<void> apiV3TesterGroupsTesterGroupIdUpdateTesterGroup({
    required String testerGroupId,
    required UpdateTesterGroup body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/tester-groups/${testerGroupId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<NoPaginationApiControllersUserSchemasApiKeySchema>
  apiV3UserApiKeyGetApiKey() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<NoPaginationApiControllersUserSchemasApiKeySchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user/api-key',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersUserSchemasApiKeySchema _value;
    try {
      _value = NoPaginationApiControllersUserSchemasApiKeySchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3UserApiKeyRevokeApiKey() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/user/api-key',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<ClassicPaginationApiControllersUserSchemasAppSchema>
  apiV3UserAppsGetApps({int? pageSize = 30, int? page = 1}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ClassicPaginationApiControllersUserSchemasAppSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user/apps',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersUserSchemasAppSchema _value;
    try {
      _value = ClassicPaginationApiControllersUserSchemasAppSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClassicPaginationApiControllersUserSchemasNotificationSchema>
  apiV3UserNotificationsGetNotifications({
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersUserSchemasNotificationSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user/notifications',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersUserSchemasNotificationSchema _value;
    try {
      _value =
          ClassicPaginationApiControllersUserSchemasNotificationSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersUserSchemasPreferencesSchema>
  apiV3UserPreferencesGetPreferences() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<NoPaginationApiControllersUserSchemasPreferencesSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user/preferences',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersUserSchemasPreferencesSchema _value;
    try {
      _value = NoPaginationApiControllersUserSchemasPreferencesSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ClassicPaginationApiControllersUserSchemasTeamSchema>
  apiV3UserTeamsGetTeams({int? pageSize = 30, int? page = 1}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ClassicPaginationApiControllersUserSchemasTeamSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user/teams',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersUserSchemasTeamSchema _value;
    try {
      _value = ClassicPaginationApiControllersUserSchemasTeamSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<NoPaginationApiControllersUserSchemasUserSchema>
  apiV3UserGetUser() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<NoPaginationApiControllersUserSchemasUserSchema>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/user',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersUserSchemasUserSchema _value;
    try {
      _value = NoPaginationApiControllersUserSchemasUserSchema.fromJson(
        _result.data!,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3UserTrackTrack({required TrackUserSchema body}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/user/track',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<
    ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
  >
  apiV3VariableGroupsVariableGroupIdVariablesGetVariables({
    required String variableGroupId,
    String? search,
    int? pageSize = 30,
    int? page = 1,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search': search,
      r'page_size': pageSize,
      r'page': page,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/variable-groups/${variableGroupId}/variables',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
    _value;
    try {
      _value =
          ClassicPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3VariableGroupsVariableGroupIdVariablesBulkImport({
    required String variableGroupId,
    required VariableGroupsSchemasBulkImportSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/variable-groups/${variableGroupId}/variables',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema>
  apiV3VariableGroupsVariableGroupIdGetGroup({
    required String variableGroupId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/variable-groups/${variableGroupId}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema
    _value;
    try {
      _value =
          NoPaginationApiControllersVariableGroupsSchemasVariableGroupSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void> apiV3VariableGroupsVariableGroupIdDeleteGroup({
    required String variableGroupId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/variable-groups/${variableGroupId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<void> apiV3VariableGroupsVariableGroupIdUpdateGroup({
    required String variableGroupId,
    required UpdateGroupSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/variable-groups/${variableGroupId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<
    NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
  >
  apiV3VariableGroupsVariableGroupIdVariablesVariableIdGetVariable({
    required String variableGroupId,
    required String variableId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<
          NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
        >(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/api/v3/variable-groups/${variableGroupId}/variables/${variableId}',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema
    _value;
    try {
      _value =
          NoPaginationApiControllersVariableGroupsSchemasEnvironmentVariableSchema.fromJson(
            _result.data!,
          );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<void>
  apiV3VariableGroupsVariableGroupIdVariablesVariableIdDeleteVariable({
    required String variableGroupId,
    required String variableId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<void>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/variable-groups/${variableGroupId}/variables/${variableId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  @override
  Future<void>
  apiV3VariableGroupsVariableGroupIdVariablesVariableIdUpdateVariable({
    required String variableGroupId,
    required String variableId,
    required UpdateEnvironmentVariableSchema body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options = _setStreamType<void>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/v3/variable-groups/${variableGroupId}/variables/${variableId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    await _dio.fetch<void>(_options);
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
