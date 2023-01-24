import 'package:flutter/material.dart';

import 'package:covkonect/models/gc_chat_message.dart';
import 'package:covkonect/screens/gc_text_message.dart';
import 'package:covkonect/screens/gc_video_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.image:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    var kDefaultPadding = 10.0;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("assets/images/img8.png"),
            ),
            SizedBox(width: kDefaultPadding = 10.0 / 2),
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return Colors.red;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
        case MessageStatus.viewed:
          return Colors.green;
        default:
          return Colors.transparent;
      }
    }

    var kDefaultPadding = 20.0;
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding = 20.0 / 2),
      height: 12,
      width: 8,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
