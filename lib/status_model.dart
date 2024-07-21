import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30, // Adjust the size of the circle avatar
                            child: Icon(Icons.person, size: 30),
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Icon(
                              Icons.add_circle,
                              size: 20,
                              color: Colors.blue.shade300, // Adjust icon size and color as needed
                            ),
                          ),
                        ],
                      ),
                      title: Text(
                        'My Stories',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Tap to add',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Handle tap event
                      },
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
           SizedBox(height: 10,),
           Container(
             alignment: Alignment.centerLeft,
             child: Text(
               "updates",
               style: TextStyle(
                 fontSize: 16,
                 color: Colors.white,
               ),
             ),
           ),
            for (int i = 1; i < 3; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey, width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/animations/logo$i.jpg",height: 55, width: 55, fit: BoxFit.cover,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alex",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Today 12:45",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}