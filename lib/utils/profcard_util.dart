import 'package:flutter/material.dart';

class ProfCard extends StatelessWidget {
  final String profImage;
  final String ratings;
  final String profName;
  final String profType;

  ProfCard(
      {required this.profImage,
      required this.ratings,
      required this.profName,
      required this.profType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              // create four cards here and add pictures
              // any pictures will do
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  profImage,
                  height: 50,
                ),
              ),
              // this image is a placeholder download
              // and add new images.
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.stars_sharp,
                    color: Colors.yellow[700],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(ratings),
                ],
              ),

              Text(profName),
              Text(profType + ' , 7 y-e.'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
