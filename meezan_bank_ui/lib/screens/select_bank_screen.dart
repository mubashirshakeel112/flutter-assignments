import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_appbar.dart';
import 'package:meezan_bank_ui/components/bank_card.dart';
import 'package:meezan_bank_ui/components/user_info.dart';
import 'package:meezan_bank_ui/screens/beneficiary.dart';

class SelectBankScreen extends StatelessWidget {
  final List<User> bankDetail = [
    User(
      title: "APNA Microfinance",
      logo: "assets/images/apna_microfinance_bank_logo.jpeg",
    ),
    User(
      title: "Al Baraka Bank",
      logo: "assets/images/al_baraka_bank_logo.png",
    ),
    User(title: "Allied Bank", logo: "assets/images/allied_bank_logo.png"),
    User(title: "Askari Bank", logo: "assets/images/askari_bank_logo.png"),
    User(
      title: "Bank Al - Habib",
      logo: "assets/images/al_habib_bank_logo.jpeg",
    ),
    User(title: "Bank Alfalah", logo: "assets/images/alfalah_bank_logo.png"),
  ];
  SelectBankScreen({super.key});

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beneficiary()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 32),
              padding: EdgeInsets.only(
                top: 18,
                bottom: 18,
                left: 19,
                right: 19,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFDFD3E7).withAlpha(50),
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: Color(0xFF000000).withAlpha(12),
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFDFD3E7),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/images/meezan_bank_logo.png",
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Meezan Bank",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFDFD3E7),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/easypaisa_logo.png"),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Easypaisa - Telenor",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFDFD3E7),
                          ),
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/ubl_logo.png"),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "UBL Bank",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
          Expanded(
            child: ListView.builder(
              itemCount: bankDetail.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  child: BankCard(
                    image: Image.asset(
                      bankDetail[index].logo,
                      width: 44,
                      height: 44,
                    ),
                    title: Text(
                      bankDetail[index].title,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Color(0xFF000000),
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
