import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Column(
    children: [
      for (int i = 1; i < 3; i++)
    Container(
    margin: EdgeInsets.symmetric(vertical: 12),
    child: Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset("assets/animations/DaeKYh$i.jpg",
        height: 60,
            width: 60,
        fit: BoxFit.cover),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Programmer",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.call_made,
                color: Colors.green,
                size: 19,
                ),
                SizedBox(width: 5,),
                Text("(1) Today, 12:30",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Spacer(),
      Container(
        child: Icon(Icons.call_outlined,
        color: Colors.green,
        ),
      )
      ],
    ),
        ),
      for (int i = 1; i < 3; i++)
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/animations/otp image$i.jpg",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dear",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.call_received,
                          color: Colors.red,
                          size: 19,
                        ),
                        SizedBox(width: 5,),
                        Text("(1) Today, 10:30",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Icon(Icons.videocam,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ],
    ),
        ),
    );
  }
}