import 'package:flutter/material.dart';

import 'package:covkonect/models/Chat.dart';
import 'package:covkonect/screens/gc_chat_detail_page.dart';
import 'package:covkonect/screens/gc_chat_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailPage(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
