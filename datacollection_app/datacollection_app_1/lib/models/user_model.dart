import 'package:datacollection_app_1/models/base_model.dart';
class User implements BaseModelClass {
  int? id;
  String? userName;
  String? userEmail;
  int? usershakha;
  int? usersubshakha;
  String? userhousename;
  String? userplace;
  String? userdistrict;
  String? userpin;
  String? usermobileno;
  String? userwhatsappno;
  String? userfamilyphoto;
  bool? userstatus;


  @override
  get(String fieldName) {
    Map<String?, dynamic> _mapRep = toJson();

    if (_mapRep.containsKey(fieldName)) {
      return _mapRep[fieldName];
    }
  }

  @override
  set(String fieldName, fieldValue) {
    Map<String?, dynamic> _mapRep = toJson();
    if (_mapRep.containsKey(fieldName)) {
      _mapRep[fieldName] = fieldValue;
      fromJson(_mapRep);
    }
  }

  @override
  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = <String?, dynamic>{};

    data['id'] = id;
    data['user_name'] =userName;
    data['user_email'] = userEmail;
    data['user_shakha'] = usershakha;
    data['user_subshakha'] = usersubshakha;
    data['user_housename'] = userhousename;
    data['user_place'] = userplace;
    data['user_district'] = userdistrict;
    data['user_pin'] = userpin;
    data['user_mobileno'] = usermobileno;
    data['user_whatsappno'] = userwhatsappno;
    data['user_familyphoto'] = userfamilyphoto;
    data['user_status'] = userstatus;


    return data;
  }

  @override
  fromJson(Map<String?, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    userEmail = json['user_email'];
    usershakha = json['user_shakha'];
    usersubshakha = json['user_subshakha'];
    userhousename = json['user_housename'];
    userplace = json['user_place'];
    userdistrict = json['user_district'];
    userpin = json['user_pin'];
    usermobileno = json['user_mobileno'];
    userwhatsappno = json['user_whatsappno'];
    userfamilyphoto = json['user_familyphoto'];
    userstatus = json['user_status'];

   
   
  }
}
