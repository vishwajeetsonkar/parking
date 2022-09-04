
import 'dart:convert';

import 'package:flutter/material.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User with ChangeNotifier{
    User({
        this.email,
        this.userId,
        this.userRoles,
        this.phoneNumber,
        this.name,
        this.dateOfBirth,
        this.account,
        this.settings,
        this.signupType,
        this.signupMonth,
        this.isEnabled,
        this.isDefence,
        this.serviceNumber,
        this.userCategory,
        this.upLoads,
        this.currentReferredAmt,
        this.homeAirport,
        this.favouriteAirport,
        this.crmProvider,
        this.createdAt,
        this.gender,
        this.verificationStatus,
        this.notificationReadAt,
        this.isGuest,
        this.domainGroup,
        this.domainVerificationStatus,
        this.domainVerificationDate,
    });

    String? email;
    String? userId;
    List<String>? userRoles;
    String? phoneNumber;
    Name? name;
    String? dateOfBirth;
    Account? account;
    Settings? settings;
    String? signupType;
    String? signupMonth;
    int? isEnabled;
    bool? isDefence;
    String? serviceNumber;
    String? userCategory;
    UpLoads? upLoads;
    int? currentReferredAmt;
    String? homeAirport;
    String? favouriteAirport;
    String? crmProvider;
    DateTime? createdAt;
    String? gender;
    String? verificationStatus;
    DateTime? notificationReadAt;
    bool? isGuest;
    dynamic domainGroup;
    dynamic domainVerificationStatus;
    dynamic domainVerificationDate;

    factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        userId: json["userId"],
        userRoles: List<String>.from(json["userRoles"].map((x) => x)),
        phoneNumber: json["phoneNumber"],
        name: Name.fromJson(json["name"]),
        dateOfBirth: json["dateOfBirth"],
        account: Account.fromJson(json["account"]),
        settings: Settings.fromJson(json["settings"]),
        signupType: json["signupType"],
        signupMonth: json["signupMonth"],
        isEnabled: json["isEnabled"],
        isDefence: json["isDefence"],
        serviceNumber: json["serviceNumber"],
        userCategory: json["userCategory"],
        upLoads: UpLoads.fromJson(json["upLoads"]),
        currentReferredAmt: json["currentReferredAmt"],
        homeAirport: json["homeAirport"],
        favouriteAirport: json["favouriteAirport"],
        crmProvider: json["crmProvider"],
        createdAt: DateTime.parse(json["createdAt"]),
        gender: json["gender"],
        verificationStatus: json["verificationStatus"],
        notificationReadAt: DateTime.parse(json["notificationReadAt"]),
        isGuest: json["isGuest"],
        domainGroup: json["domainGroup"],
        domainVerificationStatus: json["domainVerificationStatus"],
        domainVerificationDate: json["domainVerificationDate"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "userId": userId,
        "userRoles": List<String>.from((userRoles)!.map((x) => x)),
        "phoneNumber": phoneNumber,
        "name": name?.toJson(),
        "dateOfBirth": dateOfBirth,
        "account": account?.toJson(),
        "settings": settings?.toJson(),
        "signupType": signupType,
        "signupMonth": signupMonth,
        "isEnabled": isEnabled,
        "isDefence": isDefence,
        "serviceNumber": serviceNumber,
        "userCategory": userCategory,
        "upLoads": upLoads?.toJson(),
        "currentReferredAmt": currentReferredAmt,
        "homeAirport": homeAirport,
        "favouriteAirport": favouriteAirport,
        "crmProvider": crmProvider,
        "createdAt": createdAt?.toIso8601String(),
        "gender": gender,
        "verificationStatus": verificationStatus,
        "notificationReadAt": notificationReadAt?.toIso8601String(),
        "isGuest": isGuest,
        "domainGroup": domainGroup,
        "domainVerificationStatus": domainVerificationStatus,
        "domainVerificationDate": domainVerificationDate,
    };

    setUser() {
      
    }
}

class Account {
    Account({
        required this.verification,
    });

    Verification verification;

    factory Account.fromJson(Map<String, dynamic> json) => Account(
        verification: Verification.fromJson(json["verification"]),
    );

    Map<String, dynamic> toJson() => {
        "verification": verification.toJson(),
    };
}

class Verification {
    Verification({
        required this.requestedBy,
        required this.reason,
        required this.isPhoneVerified,
        required this.requestedAt,
        required this.verifiedAt,
        required this.referredFrom,
        required this.isUserCategoryVerificationRequested,
        required this.verifiedBy,
        required this.isEmailVerified,
        required this.isUserCategoryVerified,
    });

    String requestedBy;
    String reason;
    bool isPhoneVerified;
    DateTime requestedAt;
    String verifiedAt;
    String referredFrom;
    bool isUserCategoryVerificationRequested;
    String verifiedBy;
    bool isEmailVerified;
    bool isUserCategoryVerified;

    factory Verification.fromJson(Map<String, dynamic> json) => Verification(
        requestedBy: json["requestedBy"],
        reason: json["reason"],
        isPhoneVerified: json["isPhoneVerified"],
        requestedAt: DateTime.parse(json["requestedAt"]),
        verifiedAt: json["verifiedAt"],
        referredFrom: json["referredFrom"],
        isUserCategoryVerificationRequested: json["isUserCategoryVerificationRequested"],
        verifiedBy: json["verifiedBy"],
        isEmailVerified: json["isEmailVerified"],
        isUserCategoryVerified: json["isUserCategoryVerified"],
    );

    Map<String, dynamic> toJson() => {
        "requestedBy": requestedBy,
        "reason": reason,
        "isPhoneVerified": isPhoneVerified,
        "requestedAt": requestedAt.toIso8601String(),
        "verifiedAt": verifiedAt,
        "referredFrom": referredFrom,
        "isUserCategoryVerificationRequested": isUserCategoryVerificationRequested,
        "verifiedBy": verifiedBy,
        "isEmailVerified": isEmailVerified,
        "isUserCategoryVerified": isUserCategoryVerified,
    };
}

class Name {
    Name({
        required this.title,
        required this.firstName,
        required this.middleName,
        required this.lastName,
    });

    String title;
    String firstName;
    String middleName;
    String lastName;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        firstName: json["firstName"],
        middleName: json["middleName"],
        lastName: json["lastName"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "firstName": firstName,
        "middleName": middleName,
        "lastName": lastName,
    };
}

class Settings {
    Settings({
        required this.pushNotificationsActive,
        required this.whatsappNotificationsActive,
        required this.emailNewsLetterActive,
        required this.accountNotificationsActive,
    });

    bool pushNotificationsActive;
    bool whatsappNotificationsActive;
    bool emailNewsLetterActive;
    bool accountNotificationsActive;

    factory Settings.fromJson(Map<String, dynamic> json) => Settings(
        pushNotificationsActive: json["pushNotificationsActive"],
        whatsappNotificationsActive: json["whatsappNotificationsActive"],
        emailNewsLetterActive: json["emailNewsLetterActive"],
        accountNotificationsActive: json["accountNotificationsActive"],
    );

    Map<String, dynamic> toJson() => {
        "pushNotificationsActive": pushNotificationsActive,
        "whatsappNotificationsActive": whatsappNotificationsActive,
        "emailNewsLetterActive": emailNewsLetterActive,
        "accountNotificationsActive": accountNotificationsActive,
    };
}

class UpLoads {
    UpLoads({
        required this.profilePicUrl,
    });

    String profilePicUrl;

    factory UpLoads.fromJson(Map<String, dynamic> json) => UpLoads(
        profilePicUrl: json["profilePicUrl"],
    );

    Map<String, dynamic> toJson() => {
        "profilePicUrl": profilePicUrl,
    };
}
