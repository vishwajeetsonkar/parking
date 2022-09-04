
import 'dart:convert';

import 'package:flutter/material.dart';

class User {

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
}

class Account {
    Verification? verification;

    Account({
        this.verification,
    });
}

class Verification {

    String? requestedBy;
    String? reason;
    bool? isPhoneVerified;
    DateTime? requestedAt;
    String? verifiedAt;
    String? referredFrom;
    bool? isUserCategoryVerificationRequested;
    String? verifiedBy;
    bool? isEmailVerified;
    bool? isUserCategoryVerified;

    Verification({
        this.requestedBy,
        this.reason,
        this.isPhoneVerified,
        this.requestedAt,
        this.verifiedAt,
        this.referredFrom,
        this.isUserCategoryVerificationRequested,
        this.verifiedBy,
        this.isEmailVerified,
        this.isUserCategoryVerified,
    });
}

class Name {

    String? title;
    String? firstName;
    String? middleName;
    String? lastName;

    Name({
        this.title,
        this.firstName,
        this.middleName,
        this.lastName,
    });
}

class Settings {
    bool? pushNotificationsActive;
    bool? whatsappNotificationsActive;
    bool? emailNewsLetterActive;
    bool? accountNotificationsActive;

    Settings({
        this.pushNotificationsActive,
        this.whatsappNotificationsActive,
        this.emailNewsLetterActive,
        this.accountNotificationsActive,
    });
}

class UpLoads {

    String? profilePicUrl;

    UpLoads({
        this.profilePicUrl,
    });

}
