 import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:tf/widget/avatar_model.dart';

import 'model/item_model.dart';
//
const List<AvatarModel>listAvatar=[
  AvatarModel(imageName: "assets/images/logoEasyLearn.png",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/mohmedKhaled.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoFlutter.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/picT.png",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoD.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoFlutter.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoKarem.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoQ.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/tala.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoA.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoD.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoEasyLearn.png",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoFlutter.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoKarem.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoFlutter.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/logoQ.PNG",radiusOne: 32,radiusTwo: 30,),
  AvatarModel(imageName: "assets/images/tala.PNG",radiusOne: 32,radiusTwo: 30,),
];
 List<ItemData> itemData = List.generate(
   listAvatar.length,
       (index) => ItemData(
     image: listAvatar[index],
     title: index==0?"Easy Learn":
     index==1?""
         "Mohamed khaled":
     index==3?"Mahmoud Talal":faker.person.name(),
     subtitle: "How are you?",
     time: "2:30",
     icon: Icons.check_circle_outline,
   ),
 );