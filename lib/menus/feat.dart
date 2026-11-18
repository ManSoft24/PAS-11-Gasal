import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:hilmanelfarabi_13/controllers/feat_ctr.dart';
import 'package:hilmanelfarabi_13/models/team_model.dart';
import 'package:http/http.dart';
import 'package:hilmanelfarabi_13/routes.dart';

class Feat extends StatelessWidget {
  Feat({super.key});

  final controller = Get.put(FeatCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Container(
                padding: EdgeInsets.only(top: 50),
                height: double.infinity,
                margin: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: controller.premierLeague.length,
                  itemBuilder: (context, index) {
                    final teams = controller.premierLeague[index];

                    return Container(
                      height: 100,
                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          title: Text(teams.strTeam),
                          subtitle: Text(teams.strStadium),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(teams.strBadge),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
       
    );
  }
}
