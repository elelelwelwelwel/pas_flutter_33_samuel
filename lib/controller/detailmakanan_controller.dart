import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/controller/listmakanan_controller.dart';
import 'package:pas_flutter_33_samuel/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late MakananModel makanan;
  final controller = Get.put(ListMakananController());

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments;
  }

  RxString get pilihanMakanan => makanan.namaMakanan.obs;
  get hargaMakanan => makanan.hargaMakanan.obs;

  var quantity = 0.obs;
  var subtotal = 0.0.obs;
  var banyakPPN = 0.0.obs;
  var grandTotal = 0.0.obs;

  void selectTicket(double price) {
    hargaMakanan.value = price;
  }

  void calculateTicket(int qty, double value) {
    quantity.value = qty;

    subtotal.value = hargaMakanan.value * qty;

    banyakPPN.value = hargaMakanan.value * 0.11;

    grandTotal.value = hargaMakanan.value + banyakPPN.value;
  }
}
