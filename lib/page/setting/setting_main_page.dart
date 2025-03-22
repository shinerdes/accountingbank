import 'package:accountingbank/page/setting/setting_main_widget.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingMainPage extends ConsumerStatefulWidget {
  const SettingMainPage({super.key});

  @override
  _SettingMainPageState createState() => _SettingMainPageState();
}

class _SettingMainPageState extends ConsumerState<SettingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: appBarBackground,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SettingMainWidget(
              icon: Icon(
                Icons.settings_applications_outlined,
                size: 30,
              ),
              title: '환경설정',
            ),
            SettingMainWidget(
              icon: Icon(
                Icons.man_3_outlined,
                size: 30,
              ),
              title: '내 정보 보기',
            ),
            SettingMainWidget(
              icon: Icon(
                Icons.calendar_month_outlined,
                size: 30,
              ),
              title: '이번 달 출석',
            ),
          ],
        ),
      ),
    );
  }
}


            // 환경설정
            // 내정보보기
            // 이번달출석  // 버튼만
// class Qs extends StatelessWidget {
//   List<String> li;

//   Qs({required this.li, super.key});
//   @override
//   Widget build(BuildContext context) {
//     if (li.length == 1) {
//       return Column(
//         children: [
//           Text(li[0]),
//         ],
//       );
//     } else if (li.length == 2) {
//       return Column(
//         children: [
//           Text(li[0]),
//           Image.network(
//             li[1],
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.width,
//           ),
//         ],
//       );
//     } else {
//       return Column(
//         children: [
//           Text(li[0]),
//           Image.network(
//             li[1],
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.width,
//           ),
//           Text(li[2]),
//         ],
//       );
//     }
//   }
// }

/*
{id: 1, 
content: <p><strong>민법의 법원에 관한 설명으로 옳은 것은?</strong></p><p><br></p>, 
number: 1, 
explanation: https://jbaccount.s3.ap-northeast-2.amazonaws.com/post/d4129468-6f3c-4aed-8c65-23430ec8034aimage/png, 
choices: [{id: 1, number: 1, content: 민법 제1조에서 민법의 법원으로 규정한 '만사에 관한 법률'은 민법전만을 의미한다, isAnswer: false}, {id: 2, number: 2, content: 민법 제1조에서 민법의 법원으로 규정한 '관습법'에는 사실인 관습이 포함된다., isAnswer: false}, {id: 3, number: 3, content: 대법원이 정한 공탁규칙은 민법의 법원이 될 수 있다., isAnswer: false}, {id: 4, number: 4, content: 헌법에 의하여 체결*공표된 국제조약은 그것이 민사에 관한 것이더라도 민법의 법원이 될 수 없다., isAnswer: true}, {id: 5, number: 5, content: 미등기무허가 건물의 양수인에게는 소유권에 준하는 관습법상의 물권이 인정되지 않는다<…>

*/


/*


 Center(
        child: FutureBuilder<User?>(
          future: client.getUser(id: 2),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                Data userData = userInfo.data;
                print(userData.avatar);
                print(userData.email);
                print(userData.firstName);
                print(userData.lastName);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(userData.avatar),
                    const SizedBox(height: 16.0),
                    Text(
                      '${userInfo.data.firstName} ${userInfo.data.lastName}',
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      userData.email,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ],
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
*/