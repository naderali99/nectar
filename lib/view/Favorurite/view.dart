import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fristproj/widgets/app_button.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Favorites",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        "assets/images/can1.png",
                        height: 54.9,
                        width: 30.91,
                      ),
                      title: Text('Sprite Can'),
                      subtitle: Text('325ml, Price'),
                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("\$1.50"),
                            Icon(Icons.arrow_back_ios),
                          ],
                        ),
                      ),
                      isThreeLine: true,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemCount: 10,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppButton(title: 'Add All To Cart'),
              
            ),
          ],
        ),
      ),
    );
  }
}








