import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String deskripsiMakanan;
  late double ratingMakanan;
  late String imageUrl;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    namaMakanan = arguments['nama'];
    hargaMakanan = arguments['harga'];
    imageUrl = arguments['image'];
  }
}

