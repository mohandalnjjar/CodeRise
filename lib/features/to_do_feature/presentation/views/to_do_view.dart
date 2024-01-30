import 'package:flutter/material.dart';
import 'package:learn_with_me/core/utils/widgets/app_bar.dart';

class ToDoHomeView extends StatelessWidget {
  const ToDoHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
              title: 'TO Do Day',
              icon: Icons.playlist_add_check,
              IconSize: 40,
            )
       
          ],
        ),
      ),
    );
  }
}
