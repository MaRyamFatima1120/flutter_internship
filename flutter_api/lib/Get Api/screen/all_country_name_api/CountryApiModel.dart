/// id : 1
/// name : "Afghanistan"
/// population : 38928346
/// land_area : 652230
/// density : 59.6
/// capital : "Kabul"
/// currency : "Afghan afghani"
/// flag : "https://fakeimg.pl/500x300/ff6600"

class CountryApiModel {
  CountryApiModel({
      num? id, 
      String? name, 
      num? population, 
      num? landArea, 
      num? density, 
      String? capital, 
      String? currency, 
      String? flag,}){
    _id = id;
    _name = name;
    _population = population;
    _landArea = landArea;
    _density = density;
    _capital = capital;
    _currency = currency;
    _flag = flag;
}

  CountryApiModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _population = json['population'];
    _landArea = json['land_area'];
    _density = json['density'];
    _capital = json['capital'];
    _currency = json['currency'];
    _flag = json['flag'];
  }
  num? _id;
  String? _name;
  num? _population;
  num? _landArea;
  num? _density;
  String? _capital;
  String? _currency;
  String? _flag;
CountryApiModel copyWith({  num? id,
  String? name,
  num? population,
  num? landArea,
  num? density,
  String? capital,
  String? currency,
  String? flag,
}) => CountryApiModel(  id: id ?? _id,
  name: name ?? _name,
  population: population ?? _population,
  landArea: landArea ?? _landArea,
  density: density ?? _density,
  capital: capital ?? _capital,
  currency: currency ?? _currency,
  flag: flag ?? _flag,
);
  num? get id => _id;
  String? get name => _name;
  num? get population => _population;
  num? get landArea => _landArea;
  num? get density => _density;
  String? get capital => _capital;
  String? get currency => _currency;
  String? get flag => _flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['population'] = _population;
    map['land_area'] = _landArea;
    map['density'] = _density;
    map['capital'] = _capital;
    map['currency'] = _currency;
    map['flag'] = _flag;
    return map;
  }

}