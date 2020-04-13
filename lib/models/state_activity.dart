import 'stateModel.dart';

class StateListModel {
  List<stateModel> stateList;

  StateListModel({this.stateList});

  StateListModel.fromJson(List<dynamic> parsedJson) {
    stateList = new List<stateModel>();
    parsedJson.forEach((v) {
      stateList.add(stateModel.fromJson(v));
    });
  }
}
