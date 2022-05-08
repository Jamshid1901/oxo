import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/infrastructure/services/firebase.dart';
import '../../routes/routes.dart';
import 'package:oxo/presentation/styles/theme_warpper.dart';
import 'package:oxo/application/profile/profile_bloc.dart';
import 'package:oxo/infrastructure/grid_apis.dart';
import 'package:oxo/infrastructure/repositories/profile_repo.dart';
import 'package:oxo/infrastructure/services/prefs.dart';
import 'package:oxo/presentation/pages/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.index = 0}) : super(key: key);

  final int index;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  final ScrollController _scrollController = ScrollController();

  pushDeeplinkCollab(context, data) async {

  }

  StreamSubscription<Map>? streamSubscriptionDeepLink;

  Future<void> listenDeepLinkData(BuildContext context) async {
    // final fcmToken = await FirebaseMessagingX.getFcmToken();
    // print(fcmToken);
  }


  Future<void> notificationInit() async {
    await Firebase.initializeApp();
    // await FirebaseMessaging.instance
    //     .setForegroundNotificationPresentationOptions(
    //   alert: true,
    //   badge: true,
    //   sound: true,
    // );
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iOS = IOSInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin!
        .initialize(initSettings, onSelectNotification: _onSelectNotification);
    // FirebaseMessaging.instance.requestPermission(
    //   alert: true,
    //   announcement: true,
    //   badge: true,
    //   carPlay: true,
    //   criticalAlert: false,
    //   provisional: false,
    //   sound: true,
    // );

    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print("message1");print("message1 ${message.data}");
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //   _showNotification(notification.title!, notification.body!,
    //       "message.data");
    //   if (message.data.isNotEmpty) {
    //       if (kDebugMode) {
    //         print("message1 ${message.data}");
    //       }
    //     }
    //   }
    // });
    //
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
    //   print("message2");
    //   if (message.data.isNotEmpty) {
    //     if (kDebugMode) {
    //       print("message2 ${message.data}");
    //     }
    //   }
    // });

    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  // Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  //   // If you're going to use other Firebase services in the background, such as Firestore,
  //   // make sure you call `initializeApp` before using other Firebase services.
  //   await Firebase.initializeApp();
  //   if (message.data.isNotEmpty) {
  //     if (kDebugMode) {
  //       print("message3 ${message.data}");
  //     }
  //   }
  // }
  Future _onSelectNotification(String? payload) async {

  }

  Future<void> _showNotification(String title, String body, String id) async {
    const android = AndroidNotificationDetails(
        'channel id', 'channel name', channelDescription: 'channel description',
        priority: Priority.high, importance: Importance.max);
    const iOS = IOSNotificationDetails();
    const platform = NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin!
        .show(0, title, body, platform, payload: id);
  }

  @override
  void initState() {
    notificationInit();
    listenDeepLinkData(context);

    // TODO: implement initState
    super.initState();
    index = widget.index;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    streamSubscriptionDeepLink?.cancel();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final list = [


      RepositoryProvider(
        create: (context) => ProfileRepository(
            context.read<PreferenceService>(), ProfileService.create(), FollowersService.create()),
        child:  BlocProvider(
          create: (context) =>
          ProfileBloc(context.read<ProfileRepository>(),ImageUploadRepo(ImageUploadService.create()))
            ..add(const ProfileEvent.getProfile()),
          child:  BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state.exception == 'success') {
                Navigator.pushAndRemoveUntil(context,
                    Routes.getMainRoute(context, index: 2), (route) => false);
              }
            },
            builder: (context, state)  {
              if(state.typeUser == 'vendor_user'){

                return const ProfilePage();
              }else if (state.typeUser == 'simple_user') {
                return const ProfilePage();
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }

  },
),
        ),
      ),

      // const ProfilePage(),
    ];
    return ThemeWrapper(builder: (context, colors, fonsts, icons, _) {
      return Scaffold(
        backgroundColor: colors.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (i) {
            if(index == 0 && i == 0) {
              _scrollController.animateTo(
                0,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              );
            }
            setState(() {
              index = i;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                icons.gridHome,
                color: index != 0 ? colors.icon : colors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                icons.gridEvents,
                color: index != 1 ? colors.icon : colors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                icons.gridProfile,
                color: index != 2 ? colors.icon : colors.primary,
              ),
              label: '',
            ),
          ],
        ),
        body: IndexedStack(index: index, children: list,),
       floatingActionButton: index == 0? FloatingActionButton(
         onPressed: () {

         },
         child: SvgPicture.asset(icons.plus, color:colors.white,height: 20,width: 20,),
         backgroundColor: colors.primary,
       ) : null,
      );
    });
  }
}
