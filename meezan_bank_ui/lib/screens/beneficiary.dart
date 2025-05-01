import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/bank_card.dart';
import 'package:meezan_bank_ui/components/user_info.dart';
import 'package:meezan_bank_ui/screens/add_banaficiary_screen.dart';

class Beneficiary extends StatelessWidget {
  final List<User> user = [
    User(
      title: "Muhammad Yasir",
      subTitle: 292918890381,
      description: "Easypaisa - Telenor Bank",
      logo: "assets/images/easypaisa_logo.png",
    ),
    User(
      title: "Ameer",
      subTitle: 292918890381,
      description: "UBL Bank",
      logo: "assets/images/ubl_logo.png",
    ),
    User(
      title: "Irfan malik",
      subTitle: 292918890381,
      description: "Meezan Bank",
      logo: "assets/images/meezan_bank_logo.png",
    ),
    User(
      title: "Dr. Javed Iqbal",
      subTitle: 292918890381,
      description: "Bank Alfalah",
      logo: "assets/images/alfalah_bank_logo.png",
    ),
    User(
      title: "Khayam ali",
      subTitle: 292918890381,
      description: "Askari Bank",

      logo: "assets/images/askari_bank_logo.png",
    ),
  ];
  Beneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppAppbar(
        leadingIcon: Icons.arrow_back,
        trailingIcon: Icons.home_filled,
        text: Text(
          "Send money",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: Color(0xFFFFFFFF)),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 27, bottom: 27),
            decoration: BoxDecoration(color: Color(0xFF5F2585)),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 12),
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                hintText: "Search",
                hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF737373),
                ),
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: Color(0xFFE5E5E5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(width: 1, color: Color(0xFFE5E5E5)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 32),
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: Color(0xFFDFD3E7)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Color(0xFF000000).withAlpha(12),
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddBanaficiaryScreen(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFDFD3E7).withAlpha(50),
                    ),
                    child: Center(child: Icon(Icons.add_circle_outline)),
                  ),
                  SizedBox(width: 18),
                  Text(
                    "Add Beneficiary",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Color(0xFF5F2585)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
          Expanded(
            child: ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: BankCard(
                    image: Image.asset(user[index].logo, width: 68, height: 68),
                    title: Text(
                      user[index].title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF000000),
                      ),
                    ),
                    subTitle: Text(
                      user[index].subTitle.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color(0xFF000000),
                      ),
                    ),
                    description: Text(
                      user[index].description!,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xFF737373),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    icon: Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
