import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/controller/feat_page_controller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(FeatPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          final teamsList = controller.listModel.value?.teams;

          if (teamsList == null || teamsList.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          return SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: teamsList.length,
              itemBuilder: (context, index) {
                final team = teamsList[index];

                final teamStadium = team['strBadge'];
                final teamName = team['strTeam'];
                final stadiumName = team['strStadium'];

                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 5,
                    child: SizedBox(
                      width: 200,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            SizedBox(height: 8),
                            Text(
                              "Stadion: $stadiumName",
                              style: TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
