import "package:get/get.dart";
import "package:hilmanelfarabi_13/models/makanan_model.dart";

class HomeCtr extends GetxController {
  RxList<MakananModel> ListMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: "25.000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ5ojCQRp7hzNsnJAh-2DObQCN19oGAVDK-Qgv160ZAA&s=10",
      deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
      ratingMakanan: 4,
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: "30.000",
      imageUrl: "https://awsimages.detik.net.id/community/media/visual/2024/08/14/resep-mie-goreng-udang-teriyaki_43.jpeg?w=1200",
      deskripsiMakanan: " Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      ratingMakanan: 4,
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: "28.000",
      imageUrl: "https://awsimages.detik.net.id/community/media/visual/2020/07/06/nasi-padang.jpeg?w=600&q=90",
      deskripsiMakanan: " 10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      ratingMakanan: 4.5,
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: "20.000",
      imageUrl: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/93edf08d-185b-4a73-a6a8-0da9e78e1dc6_Go-Biz_20230909_230034.jpeg",
      deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      ratingMakanan: 4,
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: "8.000",
      imageUrl: "https://assets.unileversolutions.com/recipes-v2/230947.jpg",
      deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      ratingMakanan: 5,
    ),
  ].obs;

  
}
