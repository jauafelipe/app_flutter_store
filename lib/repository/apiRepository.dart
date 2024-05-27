
import 'package:MIDownload/model/ApiModel.dart';
import 'package:dio/dio.dart';

class ApiRepository {
  final Dio dio = Dio();
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<ApiModel>> getDatas() async {
    try{
      final response = await this.dio.get(this.url);
      List<dynamic> datas = response.data;
      return datas.map((e) => ApiModel.fromJson(e) ).toList();
    }catch(e){
      print(e);
      throw Exception("falha ao carregar dados");
    }
  }
}
