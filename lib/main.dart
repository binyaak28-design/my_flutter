import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Moc_User.dart';
import 'package:flutter_application_1/GPay_Bank_Transfer.dart';
import 'package:flutter_application_1/GPay_mobile_recharge.dart';
import 'package:flutter_application_1/Gpay.dart';
import 'package:flutter_application_1/alertDialog.dart';
import 'package:flutter_application_1/animation.dart';
import 'package:flutter_application_1/api_Moc2_GET.dart';
import 'package:flutter_application_1/api_POST.dart';
import 'package:flutter_application_1/api_POST_withKey.dart';
import 'package:flutter_application_1/api_get_1_withModalCLass.dart';
import 'package:flutter_application_1/api_get_2_withModalClass.dart';
import 'package:flutter_application_1/api_get_3_NoModalClass.dart';
import 'package:flutter_application_1/api_get_4_NoModalClass.dart';
import 'package:flutter_application_1/api_get_task1.dart';
import 'package:flutter_application_1/api_get_task2.dart';
import 'package:flutter_application_1/bb.dart';
import 'package:flutter_application_1/bloc/counter_app_bloc.dart';
import 'package:flutter_application_1/bloc_CounterApp.dart';
import 'package:flutter_application_1/bottom-NavigationBar.dart';
import 'package:flutter_application_1/bottom_sheet.dart';
import 'package:flutter_application_1/data_time_Task.dart';
import 'package:flutter_application_1/date_Time.dart';
import 'package:flutter_application_1/dd.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/ff.dart';
import 'package:flutter_application_1/file_Picker.dart';
import 'package:flutter_application_1/firebase2_homeScreen.dart';
import 'package:flutter_application_1/firebase2mine_HomeScreen.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/firebase_task_LoginPage.dart';
import 'package:flutter_application_1/firebasee_Home_Task.dart';
import 'package:flutter_application_1/gridView.dart';
import 'package:flutter_application_1/gridView_task.dart';
import 'package:flutter_application_1/hiii.dart';
import 'package:flutter_application_1/hive_simple.dart';
import 'package:flutter_application_1/hive2_model_class.dart';
import 'package:flutter_application_1/hiveIntro.dart';
import 'package:flutter_application_1/hive_mine.dart';
import 'package:flutter_application_1/hive_mine_model.dart';
import 'package:flutter_application_1/hive_task_Vehicle.dart';
import 'package:flutter_application_1/hive_task_model.dart';
import 'package:flutter_application_1/image_picker.dart';
import 'package:flutter_application_1/listView_task.dart';
import 'package:flutter_application_1/ll.dart';
import 'package:flutter_application_1/midTest.dart';
import 'package:flutter_application_1/new_task_webpage.dart';
import 'package:flutter_application_1/newq.dart';
import 'package:flutter_application_1/popup.dart';
import 'package:flutter_application_1/popup_menu_button.dart';
import 'package:flutter_application_1/radio.dart';
import 'package:flutter_application_1/radio_button.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/search_box.dart';
import 'package:flutter_application_1/sharedPreference_Pizza_SC1_Task.dart';
import 'package:flutter_application_1/shared_preference_Task.dart';
import 'package:flutter_application_1/shared_preferences.dart';
import 'package:flutter_application_1/snackBar.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:flutter_application_1/tab_bar.dart';
import 'package:flutter_application_1/task_AtmCard.dart';
import 'package:flutter_application_1/task_Personal_Details.dart';
import 'package:flutter_application_1/texrtField_Task.dart';
import 'package:flutter_application_1/whatsApp_UI_aHomePage.dart';
import 'package:flutter_application_1/whatsapp_UI_ImagePIcker_ProfilePic.dart';
import 'package:flutter_application_1/whatsapp_UI_splashScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(VehicleAdapter());
  await Hive.openBox<Vehicle>("VehicleBox");

  // runApp(const MyApp());

  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home:
            //ApiGetTask2()
            //ApiGet2Withmodalclass()
            //ApiGet3Nomodalclass()
            //ApiGet4Nomodalclass()
            //ApiPostWithKeyy()
            //TaskGridview()
            //MyHomePage()
            //Midtest()
            //FirebaseTaskLoginpage()
       //  BottomSheetIntro()
      // Gpay()
      WhatsappUiSplashscreen()
  // MyApp()

      // ApiMoc2Get()
//ApiMocUser()
      ),
    );
  }
}
