class stateModel {
  var No_on_admission;
  var No_of_cases;
  var States;
  var No_of_deaths;
  var No_discharged;
  var id;
  stateModel(
      {this.No_of_cases,
      this.No_on_admission,
      this.States,
      this.id,
      this.No_discharged,
      this.No_of_deaths});

  stateModel.fromJson(Map<String, dynamic> json) {
    No_of_cases = json['No_on_admission'];
    No_of_cases = json['No_of_cases'];
    States = json['States'];
    id = json['id'];
    No_discharged = json['No_discharged'];
    No_of_deaths = json[No_of_deaths];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['No_on_admission'] = this.No_on_admission;
    data['No_of_cases'] = this.No_of_cases;
    data['States'] = this.States;
    data['id'] = this.id;
    data['No_discharged'] = this.No_discharged;
    data['No_of_deaths'] = this.No_of_deaths;
    return data;
  }
}
