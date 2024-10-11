import 'package:flutter/material.dart';
import 'package:village_crime/models/thana.dart';

import 'ngo_card_build.dart';


class NGOList extends StatelessWidget {

  final List<Thana> ngoList;

  const NGOList({super.key, required this.ngoList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: ngoList.length,
      itemBuilder: (context, index){
        return buildNGOCard(ngoList[index]);
      },
    );
  }
}

class WardList extends StatelessWidget {

  final List<Ward> ngoList;

  const WardList({super.key, required this.ngoList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: ngoList.length,
      itemBuilder: (context, index){
        return buildWardCard(ngoList[index]);
      },
    );
  }
}
