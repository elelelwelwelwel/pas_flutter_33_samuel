import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/models/makanan_model.dart';

class ListMakananController extends GetxController {
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Nasi Goreng Spesial',
      hargaMakanan: '25.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLR4MpKLuCJgG5Ddy5mJdSpuNpdQcMkDYV0MKh8jJxUg&s=10',
      deskripsiMakanan: 'Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk',
    ),
    MakananModel(
      namaMakanan: 'Ayam Bakar Madu',
      hargaMakanan: '30.000',
      gambarMakanan: 'https://tourism.kuduskab.go.id/wp-content/uploads/2024/12/lentog-tanjung-3-1024x683.jpg',
      deskripsiMakanan:
          'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
    ),
    MakananModel(
      namaMakanan: 'Sate Ayam Madura',
      hargaMakanan: '28.000',
      gambarMakanan: 'https://tourism.kuduskab.go.id/wp-content/uploads/2024/10/DSC05157-e1731813463632.jpg',
      deskripsiMakanan:
          '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
    ),
    MakananModel(
      namaMakanan: 'Mie Ayam Bakso',
      hargaMakanan: '20.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpsxKDN7GwMh8rykAtImSS4eW-29R09Qq5pWbuEYnpiw&s=10',
      deskripsiMakanan: 'Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.',
    ),
    MakananModel(
      namaMakanan: 'Es Teh Manis Jumbo',
      hargaMakanan: '8.000',
      gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQqGJ5sJnM7nIuDoqjOp6aImVCwUznxpk_0KVGRWRTgg&s=10',
      deskripsiMakanan: 'Minuman teh melati segar dengan gula asli dan es batu kristal.',
    ),
  ].obs;
}
