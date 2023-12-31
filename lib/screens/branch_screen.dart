import 'package:flutter/material.dart';
import 'package:pempek_candy/data/branch_data.dart';
import 'package:pempek_candy/models/branch.dart';
import 'package:pempek_candy/screens/branch_menu.dart';

class BranchScreen extends StatelessWidget {
  const BranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listBranch.length,
        itemBuilder: (context, index) {
          final Branch cabang = listBranch[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BranchMenu(
                  cabang: cabang,
                );
              }));
            },
            child: Card(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.network(
                        'https://images.tokopedia.net/img/cache/700/attachment/2021/3/26/74993926/74993926_fa640cd7-3b4a-4219-92bf-6b155fe13bf8.jpg'),
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
                            cabang.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(cabang.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
