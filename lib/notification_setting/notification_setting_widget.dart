import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSettingWidget extends StatefulWidget {
  const NotificationSettingWidget({Key? key}) : super(key: key);

  @override
  _NotificationSettingWidgetState createState() =>
      _NotificationSettingWidgetState();
}

class _NotificationSettingWidgetState extends State<NotificationSettingWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Notification_Setting'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            logFirebaseEvent('NOTIFICATION_SETTING_arrow_back_rounded_');
            logFirebaseEvent('IconButton_navigate_back');
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'a3ib7dz0' /* Settings */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: FlutterFlowTheme.of(context).title2Family,
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).title2Family),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'cvn69ayv' /* Choose what notifcations you w... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: SwitchListTile.adaptive(
              value: switchListTileValue1 ??= true,
              onChanged: (newValue) async {
                setState(() => switchListTileValue1 = newValue!);
              },
              title: Text(
                FFLocalizations.of(context).getText(
                  '9fjyer1l' /* Push Notifications */,
                ),
                style: FlutterFlowTheme.of(context).title3,
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  '0y79horv' /* Receive Push notifications fro... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
              activeColor: FlutterFlowTheme.of(context).primaryColor,
              activeTrackColor: Color(0x8A4B39EF),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
            ),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue2 ??= true,
            onChanged: (newValue) async {
              setState(() => switchListTileValue2 = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                'pb9pzmu8' /* Email Notifications */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                '5z6qczxq' /* Receive email notifications fr... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          SwitchListTile.adaptive(
            value: switchListTileValue3 ??= true,
            onChanged: (newValue) async {
              setState(() => switchListTileValue3 = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                '11jdymf6' /* Location Services */,
              ),
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                '1da5irmo' /* Allow us to track your locatio... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText2,
            ),
            activeColor: Color(0xFF4B39EF),
            activeTrackColor: Color(0xFF3B2DB6),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('NOTIFICATION_SETTING_Button-Login_ON_TAP');
                logFirebaseEvent('Button-Login_navigate_back');
                context.pop();
              },
              text: FFLocalizations.of(context).getText(
                'vql5pms6' /* Mise à jour */,
              ),
              options: FFButtonOptions(
                width: 190,
                height: 50,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).subtitle2Family),
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
