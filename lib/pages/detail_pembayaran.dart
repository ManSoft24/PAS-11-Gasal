import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hilmanelfarabi_13/components/login_page/home/button_beli.dart';
import 'package:hilmanelfarabi_13/components/login_page/home/card_detail.dart';
import 'package:hilmanelfarabi_13/controllers/detail_ctr.dart';


class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put((DetailMakananController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 240, 218),
      appBar: AppBar(
        title: Text("Detail Makanan"),
        backgroundColor: Color.fromARGB(255, 242, 196, 106),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(5),

        child: Card(
          elevation: 5,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: NetworkImage(controller.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.namaMakanan,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Rp. ',
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        ),
                        Text(
                          controller.hargaMakanan,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      alignment: Alignment.bottomCenter,
                      child: ButtonBeli(
                        label: "Beli",
                        onPressedButton: () {
                          Get.snackbar("Selamat", controller.namaMakanan + " Berhasil Di Beli!");
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
