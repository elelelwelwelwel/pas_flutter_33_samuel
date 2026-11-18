import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/controller/detailmakanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final TextEditingController qtyController = TextEditingController();
  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.makanan.namaMakanan)),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                controller.makanan.gambarMakanan,
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              controller.makanan.namaMakanan,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              "Rp ${controller.makanan.hargaMakanan}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text("Deskripsi:", style: TextStyle(fontSize: 16)),
            Text(
              controller.makanan.deskripsiMakanan,
              style: TextStyle(fontSize: 14),
            ),

            Obx(() => Text(
                  'Pilihan: ${controller.pilihanMakanan.value} (Rp ${controller.hargaMakanan.value})',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 16),

            TextField(
              controller: qtyController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jumlah Makanan',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),


            ElevatedButton(
              onPressed: () {
                int qty = int.tryParse(qtyController.text) ?? 0;
                controller.calculateTicket(qty, controller.grandTotal.value);
              },
              child: const Text('Hitung Total Pembayaran'),
            ),
            const SizedBox(height: 24),
            const Divider(),

            const Text(
              'Rincian Pembayaran:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Obx(() => Text('Subtotal: Rp ${controller.subtotal.value.toStringAsFixed(0)}')),
            Obx(() => Text('PPN (11%): Rp ${controller.banyakPPN.value.toStringAsFixed(0)}')),
            const Divider(),
            Obx(() => Text(
                  'Total Akhir: Rp ${controller.grandTotal.value.toStringAsFixed(0)}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}
