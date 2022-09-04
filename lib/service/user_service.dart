import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:parking/constants/apiEndPoints.dart';
import 'package:parking/providers/users_provider.dart';

class ApiService {
  Future<dynamic?> login(user) async {
    try {
      var url = Uri.parse(ApiConstants.ucBase + ApiConstants.login);
      var response = await http.post(url, body: user);
      if (response.statusCode == 200) {
        var data = jsonDecode('{"email":"vishwajeet.sonkar@udchalo.com","userId":"2314574b-bafd-4b42-b3ef-8ec274f1e469","userRoles":["default"],"phoneNumber":"8483827744","name":{"title":"","firstName":"Vishwajeet","middleName":"","lastName":"Sonkar"},"dateOfBirth":"","account":{"verification":{"requestedBy":"2314574b-bafd-4b42-b3ef-8ec274f1e469","reason":"Wrong documents uploaded for verification","isPhoneVerified":true,"requestedAt":"2021-09-29T14:48:20.632Z","verifiedAt":"Thu Sep 30 2021 03:42:21 GMT+0000 (Coordinated Universal Time)","referredFrom":"Profile","isUserCategoryVerificationRequested":false,"verifiedBy":"8022aa30-3e7d-4c5e-bc9c-0586b2a93d5f","isEmailVerified":false,"isUserCategoryVerified":false}},"settings":{"pushNotificationsActive":false,"whatsappNotificationsActive":true,"emailNewsLetterActive":false,"accountNotificationsActive":false},"signupType":"udChalo","signupMonth":"2020-06","isEnabled":1,"isDefence":true,"serviceNumber":"0121423475","userCategory":"Paramilitary Forces","upLoads":{"profilePicUrl":"https://s3.ap-south-1.amazonaws.com/udchalo-images/client_assets/img/imgno/loggedInUser.png"},"currentReferredAmt":0,"homeAirport":"Bengaluru","favouriteAirport":"","crmProvider":"moengage","createdAt":"2020-06-02T09:46:42.857Z","gender":"","verificationStatus":"notVerified","notificationReadAt":"2021-11-12T14:44:31.108Z","isGuest":false,"domainGroup":null,"domainVerificationStatus":null,"domainVerificationDate":null}');
        var dataa = User.fromJson(data);
        print(dataa);
        return data;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
