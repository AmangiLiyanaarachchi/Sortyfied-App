import 'package:flutter/material.dart';

class ForthRowCards extends StatelessWidget {
  const ForthRowCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.15,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("SI",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 5,),
                  Text("Sasanthi"),
                  SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurpleAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                      child: Text(
                        "Admin",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.15,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: IconButton(
                      icon: Icon(Icons.person_add_alt_1, color: Colors.white,),
                      onPressed: (){},
                    )
                  ),
                  SizedBox(height: 5,),
                  Text("Add"),
                  SizedBox(height: 5,),
                  Text("Family Member",
                  style: TextStyle(
                    fontSize: 10
                  ),),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
