import 'package:flutter/material.dart';

enum ChatMessageType { text, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });
}

List demeChatMessages = [
  ChatMessage(
    text:
        "Hey it would be great if you could\n get me my medicines and delivered",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Ya sure, can you share the prescription ",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.image,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Error happend",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  ChatMessage(
    text: "Ok done I will get it as soon as possible",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Thank You",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
];
