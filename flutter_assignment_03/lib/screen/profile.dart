import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/profile_detail.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Profile", style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 62,
                  height: 62,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xFF0E51FF)),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Shahzeb Naqvi",
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(fontSize: 20),
                      ),
                      Text(
                        "Welcome to  Quick Medical Store",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            ProfileDetail(
              leadingImg: "assets/images/edit.png",
              title: "Edit Profile",
            ),
            ProfileDetail(
              leadingImg: "assets/images/order.png",
              title: "My orders",
            ),
            ProfileDetail(
              leadingImg: "assets/images/biling.png",
              title: "Billing",
            ),
            ProfileDetail(leadingImg: "assets/images/faq.png", title: "Faq"),
          ],
        ),
      ),
    );
  }
}
