import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationDeveloppementWidget extends StatefulWidget {
  const InformationDeveloppementWidget({Key? key}) : super(key: key);

  @override
  _InformationDeveloppementWidgetState createState() =>
      _InformationDeveloppementWidgetState();
}

class _InformationDeveloppementWidgetState
    extends State<InformationDeveloppementWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Information_developpement'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('INFORMATION_DEVELOPPEMENT_Icon_x3wytkkv_');
            logFirebaseEvent('Icon_navigate_back');
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '3igxqgoq' /*   */,
          ),
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'm37rxdav' /* Information de dévoppement: Ve... */,
                      ),
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).title1Family,
                            fontWeight: FontWeight.w300,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).title1Family),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Hero(
                      tag: 'mainImage',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/Futuro_Clipping.png',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'dxe6bzma' /* Futuro.Tech */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 23,
                            fontWeight: FontWeight.w300,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'lr2kuvl3' /* Bonjour, tout d'abaord nous te... */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText2Family,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText2Family),
                          ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 2,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '28x6bf4o' /* Nouveautées avenir :         V... */,
                    ),
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          fontWeight: FontWeight.w200,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                        ),
                  ),
                  Divider(
                    height: 40,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'fukh3wzi' /* Casino */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '4s0x3qpz' /* Un casino integré à l'applicat... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'ho0zkroh' /* Red Point */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'd08mikbf' /* Un systeme de point sera mis e... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '0iffyr5j' /* Red Paiment */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'n56iowxz' /* Un systeme de paiment unique. ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).gray600,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '58ofjxtu' /* Red Paiment */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'w5jor2fr' /* Un systeme de paiment unique. ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).gray600,
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.9, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'u36oetgx' /* RedMessage */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'de7qwavi' /* Un serveur de messagerie pour ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                  Divider(
                    height: 50,
                    thickness: 0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.2),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'INFORMATION_DEVELOPPEMENT_EN_SAVOIR_PLUS');
                        logFirebaseEvent('Button_launch_u_r_l');
                        await launchURL('futurotechn.ca');
                      },
                      text: FFLocalizations.of(context).getText(
                        'e1jbpe9p' /* En savoir plus  */,
                      ),
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
