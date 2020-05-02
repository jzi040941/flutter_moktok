import 'package:flutter/material.dart';

class CircleImageUser extends StatelessWidget {

  final String profileImageUrl;

  CircleImageUser(
    {this.profileImageUrl,
    }
  );

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      child: CircleAvatar(backgroundImage: NetworkImage(profileImageUrl),
      ),
    );
  }
}