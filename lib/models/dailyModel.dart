class DailyModel {
  var updated;
  var country;
  var countryInfo;
  var cases;
  var todayCases;
  var deaths;
  var todayDeaths;
  var recovered;
  var active;
  var critical;
  var casesPerOneMillion;
  var deathsPerOneMillion;
  var tests;
  var testsPerOneMillion;
  DailyModel(
      {this.updated,
      this.country,
      this.countryInfo,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion});
  factory DailyModel.fromJson(Map<String, dynamic> json) => new DailyModel(
      updated: json["updated"] as int,
      country: json["country"] as String,
      //countryInfo: json["countryInfo"],
      cases: json["cases"] as int,
      todayCases: json["todayCases"] as int,
      deaths: json["deaths"] as int,
      todayDeaths: json["todayDeaths"] as int,
      recovered: json["recovered"] as int,
      active: json["active"] as int,
      critical: json["critical"] as int,
      casesPerOneMillion: json["casesPerOneMillion"] as int,
      deathsPerOneMillion: json["deathsPerOneMillion"] as int,
      tests: json["tests"] as int,
      testsPerOneMillion: json["testsPerOneMillion"] as int);
}
