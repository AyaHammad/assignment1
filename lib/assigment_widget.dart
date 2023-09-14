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
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.network(
                  assigmentModel.image ?? '',
                  fit: BoxFit.cover,
                ),
              ),
                Icon(Icons.arrow_back_ios, color: Colors.white,),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Icon(Icons.more_vert, color: Colors.white,),
                ),
            ]),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                assigmentModel.name ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(assigmentModel.details ?? ''),
              SizedBox(
                height: 30,
              ),
              Text(
                assigmentModel.photo ?? '',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1"), width: 90, height: 100, fit: BoxFit.cover,),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: NetworkImage("https://a.cdn-hotels.com/gdcs/production51/d1983/1a7e2818-045b-4fcc-973c-6d5f63a523ec.jpg"),width: 90, height: 100, fit: BoxFit.cover,),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: NetworkImage("https://images.squarespace-cdn.com/content/v1/591d663de3df28c0ec87d4bc/1562310468504-XNENEF62J6U3CFS0PFOA/ORG_DSC09118+%281%29.jpeg"),width: 90, height: 100, fit: BoxFit.cover,),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: NetworkImage("https://static.wixstatic.com/media/3295b9_d227357ff80c4e17a05e8d9d46fb506a~mv2_d_2048_1365_s_2.jpg/v1/fill/w_640,h_426,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3295b9_d227357ff80c4e17a05e8d9d46fb506a~mv2_d_2048_1365_s_2.jpg"), width: 90, height: 100, fit: BoxFit.cover,),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("+20", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20) ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("More in Bali", style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_right_outlined, color: Colors.green,)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
