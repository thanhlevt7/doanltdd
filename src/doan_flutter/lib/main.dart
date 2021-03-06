import 'package:doan_flutter/screens/Home/Setting/articleDetails_2_page.dart';
import 'package:doan_flutter/screens/Home/Setting/articleDetails_3_page.dart';
import 'package:doan_flutter/screens/Home/Setting/articleDetails_4_page.dart';
import 'package:doan_flutter/screens/Home/Setting/articleDetails_page.dart';
import 'package:doan_flutter/screens/Home/Setting/changePassword_page.dart';
import 'package:doan_flutter/screens/Home/Setting/myActivities_page.dart';
import 'package:doan_flutter/screens/Home/Setting/newsCommented_page.dart';
import 'package:doan_flutter/screens/Home/Setting/newsWatched_page.dart';
import 'package:doan_flutter/screens/Home/Setting/setting_page.dart';
import 'package:doan_flutter/screens/Home/User/edit_profile_page.dart';
import 'package:doan_flutter/screens/Home/User/personal_Information_page.dart';
import 'package:doan_flutter/screens/Home/category/category_page.dart';
import 'package:doan_flutter/screens/Home/category/center_page.dart';
import 'package:doan_flutter/screens/Home/category/department_page.dart';
import 'package:doan_flutter/screens/Home/category/Introduce_page.dart';
import 'package:doan_flutter/screens/Home/category/khoa_page.dart';
import 'package:doan_flutter/screens/Home/category/search_page.dart';
import 'package:doan_flutter/screens/Home/category/student_button_room_page.dart';
import 'package:doan_flutter/screens/Home/category/training_room_page.dart';
import 'package:doan_flutter/screens/Home/category/youth_group_page.dart';
import 'package:doan_flutter/screens/Home/home_page.dart';
import 'package:doan_flutter/screens/Home/nav_bottom.dart';
import 'package:doan_flutter/screens/Home_details/cntt_page.dart';
import 'package:doan_flutter/screens/Home_details/codientu_page.dart';
import 'package:doan_flutter/screens/Home_details/cokhi_page.dart';
import 'package:doan_flutter/screens/Home_details/mmt_page.dart';
import 'package:doan_flutter/screens/Home_details/oto_page.dart';
import 'package:doan_flutter/screens/login/SignIn_screen.dart';
import 'package:doan_flutter/screens/register/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App tin t???c',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SignInPage(),
        '/SignUp': (context) => const SignUpPage(),
        '/Home': (context) => const HomePage(),
        '/Nav': (context) => const Nav(),
        '/Personal_Information': (context) => const Personalnformation(),
        '/editProfile': (context) => const EditProfilePage(),
        '/Setting': (context) => const SettingPage(),
        '/MyActivities': (context) => const MyActivitiesPage(),
        '/ChangePassword': (context) => const ChangePassword(),
        '/NewsWatched': (context) => const NewsWatched(),
        '/NewsCommented': (context) => const NewsCommented(),
        '/ArticleDetails': (context) => const ArticleDetails(),
        '/ArticleDetails2': (context) => const ArticleDetails2(),
        '/ArticleDetails3': (context) => const ArticleDetails3(),
        '/ArticleDetails4': (context) => const ArticleDetails4(),
        '/Introduce': (context) => const IntroductPage(),
        '/CategoryPage': (context) => const CategoryPage(),
        '/Khoa': (context) => const KhoaPage(),
        '/Department': (context) => const DepartmentPage(),
        '/Center': (context) => const CenterPage(),
        '/StudentButtonRoom': (context) => const StudentButtonRoom(),
        '/TrainingRoom': (context) => const TrainingRoomPage(),
        '/YoungGroup': (context) => const YouthGroupPage(),
        '/Search': (context) => const SearchPage(),
        '/CnttPage': (context) => const CnttPage(),
        '/CokhiPage': (context) => const CokhiPage(),
        '/OtoPage': (context) => const OtoPage(),
        '/CodientuPage': (context) => const CodientuPage(),
        '/MmtPage': (context) => const MmtPage(),
    
      },
      initialRoute: '/',
    );
  }
}
