import 'package:flutter/material.dart';
import 'package:hilmanelfarabi_13/controllers/home_ctr.dart';
import 'package:hilmanelfarabi_13/routes.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        margin: EdgeInsets.all(5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.ListMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.ListMakanan[index];
            return Container(
              height: 50,
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.detail_pembayaran,
                    arguments: {
                      'nama' : makanan.namaMakanan,
                      'harga': makanan.hargaMakanan,
                      'image': makanan.imageUrl
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: ListTile(
                      title: Text(makanan.namaMakanan),
                      subtitle: Text('Rp. ' + makanan.hargaMakanan),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(makanan.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
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
