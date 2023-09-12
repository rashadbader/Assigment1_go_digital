import 'package:flutter/material.dart';
import 'package:untitled5/assigment_model.dart';


class AssigmentWidget extends StatelessWidget {
  AssigmentModel assigmentModel;
  AssigmentWidget(this.assigmentModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ),
            child: Container(

                width:double.infinity,
               height: 400,

            child: Image.network(
                assigmentModel.image_url ?? '',fit: BoxFit.cover,),)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(assigmentModel.name ?? '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
              SizedBox(height: 15,),
              Text(assigmentModel.details ?? ''),
              SizedBox(height: 30,),

              Text(assigmentModel.photo?? '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),
              ...assigmentModel.content?.map((e) {
                return Column(children: [
                  Text(e.image ?? '',),

                ],);
              }).toList() ??
                  [],
              SizedBox(height: 30,)
            ],

            ),

          )
      ],
    );
  }
}