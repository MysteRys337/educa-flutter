import 'package:educa/widgets/misc/circle_fade_in_avatar.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String email;

  const Perfil(this.name, this.email, this.imageUrl);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.blue[100],
          elevation: 8,
          margin: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                child: CircleFadeInAvatar(imageUrl),
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Column(
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      email,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text('0'),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(
                          Icons.mode_outlined,
                          color: Colors.yellow,
                        ),
                        Text('0'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
