import 'package:flutter/material.dart';
import 'package:pempek_candy/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final String user = 'Reven Rudy Ishak';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final menus = provider.menu;
    return Column(
      children: [
        const SizedBox(height: 50.0),
        const Icon(
          Icons.person,
          size: 72,
        ),
        //
        const SizedBox(height: 10.0),
        //
        Text(
          user,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade700),
        ),
        //
        const SizedBox(height: 20.0),
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Profile Detail',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        //
        const TextBox(
          text: 'Reven Rudy Ishak',
          sectionName: 'Username',
        ),
        //
        const TextBox(
          text: 'empty bio',
          sectionName: 'Bio',
        ),
        //
        const SizedBox(height: 50.0),
        //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Likes',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        //
        const SizedBox(height: 20.0),
        //
        Expanded(
          child: ListView.builder(
            itemCount: menus.length,
            itemBuilder: (context, index) {
              final menu = menus[index];
              return Container(
                padding: EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'images/macam_pempek.jpg',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              menu.name,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Text(menu.price.toString()),
                            IconButton(
                              onPressed: () {
                                provider.toggleFavorite(menu);
                              },
                              icon: provider.isExist(menu)
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : const Icon(Icons.favorite_border),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class TextBox extends StatelessWidget {
  final String sectionName;
  final String text;

  const TextBox({
    super.key,
    required this.text,
    required this.sectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
          Text(text),
        ],
      ),
    );
  }
}
