import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home2_model.dart';
export 'home2_model.dart';

class Home2Widget extends StatefulWidget {
  const Home2Widget({super.key});

  @override
  State<Home2Widget> createState() => _Home2WidgetState();
}

class _Home2WidgetState extends State<Home2Widget> {
  late Home2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Home2Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'ChargeSpot',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 54.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.search_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: SizedBox(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  onFieldSubmitted: (_) async {
                                    var shouldSetState = false;
                                    _model.resultapi = await RapidCall.call(
                                      near: _model.textController.text,
                                    );
                                    shouldSetState = true;
                                    if ((_model.resultapi?.succeeded ?? true)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Succuss',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Failed to fech Station',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (shouldSetState) setState(() {});
                                  },
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Search Location...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    alignLabelWithHint: true,
                                    hintText: 'New York',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final evstation = (RapidCall.dataid(
                              (_model.resultapi?.jsonBody ?? ''),
                            )?.toList() ??
                            [])
                        .take(20)
                        .toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(evstation.length, (evstationIndex) {
                        final evstationItem = evstation[evstationIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'EVStore',
                              queryParameters: {
                                'image': serializeParam(
                                  RapidCall.photo(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'tittle': serializeParam(
                                  RapidCall.name(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'address': serializeParam(
                                  RapidCall.streetaddress(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'placelink': serializeParam(
                                  RapidCall.placelink(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'total': serializeParam(
                                  RapidCall.dataconnectorstotal(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.int,
                                ),
                                'type': serializeParam(
                                  RapidCall.dataconnectorstype(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'placlink': serializeParam(
                                  RapidCall.placelink(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'website': serializeParam(
                                  RapidCall.website(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'speed': serializeParam(
                                  RapidCall.dataconnectorsspeed(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'city': serializeParam(
                                  RapidCall.city(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'country': serializeParam(
                                  RapidCall.country(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                                'mobile': serializeParam(
                                  RapidCall.phonenumber(
                                    (_model.resultapi?.jsonBody ?? ''),
                                  )?[evstationIndex],
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: ChargeSpotCall.call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final columnChargeSpotResponse =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 16.0, 12.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              RapidCall.photo(
                                                (_model.resultapi?.jsonBody ??
                                                    ''),
                                              )?[evstationIndex],
                                              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ecmag.com%2Fmagazine%2Farticles%2Farticle-detail%2Fready-set-charge!-the-incoming-surge-of-demand-for-electric-vehicle-charging-stations&psig=AOvVaw1Bl3n6qB6up0u9jNKFibIX&ust=1710871541659000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCKDkyqaz_oQDFQAAAAAdAAAAABAS',
                                            ),
                                            width: double.infinity,
                                            height: 230.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              RapidCall.name(
                                                (_model.resultapi?.jsonBody ??
                                                    ''),
                                              )![evstationIndex],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                RapidCall.city(
                                                  (_model.resultapi?.jsonBody ??
                                                      ''),
                                                )![evstationIndex],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 40.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.navigation_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  await launchURL(
                                                      RapidCall.placelink(
                                                    (_model.resultapi
                                                            ?.jsonBody ??
                                                        ''),
                                                  )![evstationIndex]);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
