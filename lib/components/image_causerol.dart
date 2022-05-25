import 'package:flutter/material.dart';
import 'package:hardware_new/common/size.dart';
//import '../common/color.dart';


class ImageCauserol extends StatefulWidget {
  BuildContext context;
  List<dynamic> imgs;

  ImageCauserol({Key? key, required this.context, required this.imgs})
      : super(key: key);

  @override
  State<ImageCauserol> createState() =>
      _ImageCauserolState(context: context, imgs: imgs);
}

class _ImageCauserolState extends State<ImageCauserol> {
  int photo = 1;

  BuildContext context;
  List<dynamic> imgs;

  _ImageCauserolState({required this.context, required this.imgs});

  final ScrollController _scrollController = ScrollController();

  @override


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kPropWidth(context, 1) - 32,
      height: 120,
      child: Stack(
        children: [
          // Image Causerol
          ListView.builder(
            
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: imgs.length,
              itemBuilder: (context, i) {
                return Container(
                              width: 250,
                              height: 100,
                              margin: EdgeInsets.only( right:20,top: 15),
                              decoration: BoxDecoration(
                                 border: Border.all(width: 2, color: Colors.grey.shade200),
                                 borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.05),
                                      spreadRadius: 10,
                                      blurRadius: 7,
                                      offset: Offset(5, 4), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 10,
                                      blurRadius: 7,
                                      offset: Offset(-10, -10), // changes position of shadow
                                    ),
                                  ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 110,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage("${imgs[i]}"),
                                        fit: BoxFit.cover,     
                                        ),
                                      ),
                                  ),
                                  Container(
                                     margin: EdgeInsets.only(top: 20),
                                     width: 100,
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text("Cement",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            height: 1.15),),
                                        ),
                                        Container(
                                          width: 100,
                                          margin: EdgeInsets.all(7),
                                          padding: EdgeInsets.only(left:2.0,right: 2),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 20,
                                                child: Icon(Icons.location_on,size: 12.0,)),
                                              Container(
                                                width:60,
                                                padding: EdgeInsets.only(left:3.0,right: 2),
                                                child: Text(
                                                  "Perera Hardware, Maharagama",
                                                   style: TextStyle(
                                                     fontSize: 8),
                                                     maxLines:3,
                                                     overflow: TextOverflow.ellipsis
                                                     ,softWrap: false,
                                                     ))
                                            ],
                                          ),
                                        )

                                        
                                      ],
                                      
                                    ),
                                  )
                                ],
                              ),
                            );

              }),

          //image count view

          // Positioned(
          //     bottom: 10,
          //     right: 10,
          //     child: Container(
          //       width: 48,
          //       height: 24,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12.0),
          //         color: Colors.white.withOpacity(0.2),
          //       ),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Text(
          //             "$photo",
          //             style: const TextStyle(
          //                 fontSize: 14.0,
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.w600),
          //           ),
          //           const SizedBox(
          //             width: 2.0,
          //           ),
          //           Text(
          //             "(${imgs.length})",
          //             style: const TextStyle(fontSize: 8.0, color: Colors.white),
          //           ),
          //         ],
          //       ),
          //     ))
        
        ],
      ),
    );
  }
}
