import 'package:flutter/material.dart';

class MyDemo extends StatelessWidget {
  const MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?cs=srgb&dl=pexels-mikebirdy-170811.jpg&fm=jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg?cs=srgb&dl=pexels-pixabay-35967.jpg&fm=jpg"),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
