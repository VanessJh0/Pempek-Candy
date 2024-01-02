import 'package:flutter/material.dart';
import 'package:pempek_candy/models/branch.dart';
import 'package:pempek_candy/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class BranchMenu extends StatelessWidget {
  const BranchMenu({super.key, required this.cabang});
  final Branch cabang;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    //
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Image.asset(
                  'images/macam_pempek.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          //
          //
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cabang.name,
                          style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Icon(Icons.location_city),
                            ),
                            Expanded(
                              flex: 10,
                              child: Text(cabang.location),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Icon(Icons.lock_clock_rounded),
                            ),
                            Expanded(
                              flex: 10,
                              child: Text(cabang.openingHours),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text('M E N U'),
                  ],
                ),
              ),
            ),
          ),
          //
          //
          SliverList.builder(
            itemCount: cabang.menuList.length,
            itemBuilder: (context, index) {
              final Menu menu = cabang.menuList[index];
              return Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(bottom: 8.0),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset('images/macam_pempek.jpg'),
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
        ],
      ),
    );
  }
}
