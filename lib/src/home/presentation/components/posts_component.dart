


import 'package:flutter/material.dart';

class PostsComponent extends StatelessWidget {
  const PostsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                
              
            },)
          ],
      ),
    );
  }
}