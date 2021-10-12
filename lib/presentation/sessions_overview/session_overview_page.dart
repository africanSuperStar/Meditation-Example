import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:ubunye_method/domain/sessions/session.dart';
import 'package:ubunye_method/presentation/core/text_widgets.dart';
import 'package:ubunye_method/presentation/sessions_overview/widgets/session_player_widget.dart';
import 'package:ubunye_method/theme.dart';

class SessionOverviewPage extends StatelessWidget {
  final Session session;

  SessionOverviewPage({required this.session});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/onboarding/backgrounds/${session.background?.getOrFail()}.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => AutoRouter.of(context).pop(),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TagText(
                          kSessionTagOptions[session.tag?.getOrFail()] ?? '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TitleText(session.title?.getOrFail() ?? ''),
                    SizedBox(height: 16.0),
                    BodyText(session.description?.getOrFail() ?? ''),
                  ],
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: SessionPlayer(session: session),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
