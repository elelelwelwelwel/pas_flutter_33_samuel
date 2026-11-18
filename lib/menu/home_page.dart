import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/routes.dart';
import 'package:pas_flutter_33_samuel/controller/listmakanan_controller.dart';

class HomePage extends StatelessWidget {
    HomePage({super.key});

    final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Dismissible(
              key: ValueKey(makanan.namaMakanan),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.delete, color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.detail_makanan, arguments: makanan);
                },
                child: Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 500,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            makanan.gambarMakanan,
                            width: 200,
                            height: 200,
                          ),
                          Text(
                            makanan.namaMakanan,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Rp." + makanan.hargaMakanan,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}