import 'package:flutter/widgets.dart';
import 'package:hilmanelfarabi_13/models/team_model.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class FeatCtr extends GetxController{
  
final RxList<Team> premierLeague = <Team>[].obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    teams();
  }

  void teams() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        'https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = premierLeagueModelFromJson(response.body);
        premierLeague.assignAll(data.teams);
      } else {
        debugPrint('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}