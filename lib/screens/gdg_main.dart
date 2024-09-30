import 'package:flutter/material.dart';
import 'package:gdg_london_dev_camp_state_management/widgets/session_widget.dart';

import '../const/const.dart';

class GdgMain extends StatelessWidget {
  const GdgMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GDG London State Managment', style: appBarText),
      ),
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/GDG_London_StateManagement.jpg'),
          ),
          SessionWidget(session: sessions),
        ],
      ),
    );
  }
}
