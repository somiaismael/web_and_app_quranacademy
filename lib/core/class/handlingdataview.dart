import 'package:brra/core/class/statusrequest.dart';
import 'package:brra/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequesrt statusRequesrt;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequesrt, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
    statusRequesrt == StatusRequesrt.loading
    ? Center(child: Lottie.asset(ImageAsset.loading,width: 250,height: 250),)
    :statusRequesrt == StatusRequesrt.offlinefailure
    ?Center(child: Lottie.asset(ImageAsset.offline,width: 250,height: 250),)
    :statusRequesrt == StatusRequesrt.serverfailure
    ?Center(child: Lottie.asset(ImageAsset.noServer,width: 250,height: 250),)
    :statusRequesrt == StatusRequesrt.failure
    ? Center(child: Lottie.asset(ImageAsset.noData,width: 350,height: 350,),)
    :widget
    ;
  }
}
class HandlingDataRequest extends StatelessWidget {
  final StatusRequesrt statusRequesrt;
  final Widget widget;
  const HandlingDataRequest({super.key, required this.statusRequesrt, required this.widget});

  @override
  Widget build(BuildContext context) {
    return
    statusRequesrt == StatusRequesrt.loading
    ? Center(child: Lottie.asset(ImageAsset.loading,width: 250,height: 250),)
    :statusRequesrt == StatusRequesrt.offlinefailure
    ?Center(child: Lottie.asset(ImageAsset.offline,width: 250,height: 250),)
    :statusRequesrt == StatusRequesrt.serverfailure
    ?Center(child: Lottie.asset(ImageAsset.noServer,width: 250,height: 250),)
    :widget
    ;
  }
}