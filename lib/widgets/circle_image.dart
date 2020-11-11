


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {

  String imageUrl;


  CircleImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl==null?
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80":
      imageUrl,
      imageBuilder: (context,imageProvider){
        return Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: imageProvider
              )
          ),
        );
      },
      placeholder: (context,url){
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      errorWidget: (context,url,error){
        return Container();
      },
    );
  }
}
