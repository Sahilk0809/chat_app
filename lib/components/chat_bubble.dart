import 'package:chat_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context, listen: false).isDark;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 25),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isCurrentUser
            ? (isDarkMode ? Colors.green[600] : Colors.green[500])
            : (isDarkMode ? Colors.grey[800] : Colors.grey[200]),
      ),
      child: Text(
        message,
        style: TextStyle(
          color: isCurrentUser
              ? Colors.white
              : (isDarkMode)
                  ? Colors.white
                  : Colors.black,
        ),
      ),
    );
  }
}
