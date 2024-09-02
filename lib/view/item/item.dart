import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fristproj/core/extension/num.dart';
import 'package:fristproj/core/utils/colors.dart';
import 'package:fristproj/widgets/app_button.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 350.height,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: AppColors.gray,
                  image: DecorationImage(
                    image: AssetImage("assets/images/apple.png"),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Naturel Red Apple",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.favorite_border, size: 35),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "1kg, Price",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.darkgray,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        _IconContainer(
                          icon: FontAwesomeIcons.minus,
                          iconColor: AppColors.darkgray,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 10),
                        _IconContainer(
                          icon: FontAwesomeIcons.plus,
                          iconColor: AppColors.primary,
                        ),
                        Spacer(),
                        Text(
                          "\$4.99",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                   // SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Detail",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 50,
                        ),
                      ],
                    ),

                    Text(
                      "Apples are nutritious. Apples may be good for weight loss.\nApples may be good for your heart. As part of a healthy\nand varied diet.",
                      style: TextStyle(color: AppColors.darkgray),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutritions",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 34,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(5, (index) => Icon(
                            Icons.star,
                            size: 25,
                            color: Colors.deepOrange,
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    AppButton(
                      title: "Track Order",
                      onTap: () {},
                      margin: EdgeInsets.fromLTRB(16, 0, 16, 0),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconContainer extends StatelessWidget {
  const _IconContainer({
    super.key,
    required this.icon,
    required this.iconColor,
  });

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Icon(
        icon,
        color: iconColor,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
  }
}