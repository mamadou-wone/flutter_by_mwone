import 'package:flutter/material.dart';

class CarDataModel {
  String imageUrl;
  String title;
  String company;
  String price;
  Color cardColor;
  String heroTag;
  bool isWhite;
  Color fontColor;
  String heroCard;
  String mileage;
  String fuel;

  CarDataModel(
      {this.imageUrl,
      this.title,
      this.company,
      this.price,
      this.cardColor,
      this.heroTag,
      this.isWhite,
      this.fontColor,
      this.heroCard,
      this.mileage,
      this.fuel});
}
