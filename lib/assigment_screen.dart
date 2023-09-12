import 'package:flutter/material.dart';
import 'package:untitled5/assigment_data.dart';
import 'package:untitled5/assigment_model.dart';
import 'package:untitled5/assigment_widget.dart';


class AssigmentScreen extends StatelessWidget {

  List<AssigmentModel> assigmentsMapToAssigmentModelConverter() {
    return assigmentData.map((e) => AssigmentModel(e)).toList();
  }


  List<Widget> assigmentModelToWidgetConverter() {

    List<AssigmentModel> assigmentModels = assigmentsMapToAssigmentModelConverter();


    List<Widget> mealsWidgets = assigmentModels.map((e) => AssigmentWidget(e)).toList();
    return mealsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: assigmentModelToWidgetConverter(),
          ),
        ),
      ),
    );
  }
}