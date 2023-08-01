import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alert Page"),
          actions: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            FadeInImage(
              image: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
              placeholder: AssetImage(
                "assets/images/loading.gif",
              ),
              fadeInDuration: const Duration(milliseconds: 200),
            ),
          ],
        )
        // Image.network(
        // "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        );
  }
}
