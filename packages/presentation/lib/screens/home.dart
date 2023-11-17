import 'package:domain/models/user_data_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:presentation/core/colors.dart';
import 'package:presentation/screens/favorite.dart';
import 'package:presentation/screens/map.dart';
import 'package:presentation/screens/news.dart';
import 'package:presentation/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.dataResponse});
  final UserDataResponse dataResponse;
  // navigation 1, for this app ok
  static Route<dynamic> route(UserDataResponse dataResponse) {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return Home(dataResponse: dataResponse);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          height: 60,
          currentIndex: 3,
          border: const Border(
              top: BorderSide(color: Colors.transparent, width: 0.0)),
          backgroundColor: const Color(0xFFFFFFFF),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/images/news.svg',
                  color: AppColors.primaryColor),
              icon: SvgPicture.asset('assets/images/news.svg'),
              label: 'Лента',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/images/map.svg',
                  color: AppColors.primaryColor),
              icon: SvgPicture.asset('assets/images/map.svg'),
              label: 'Карта',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/images/fav.svg',
                  color: AppColors.primaryColor),
              icon: SvgPicture.asset('assets/images/fav.svg'),
              label: 'Избранные',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset('assets/images/profile.svg',
                  color: AppColors.primaryColor),
              icon: SvgPicture.asset('assets/images/profile.svg',
                  color: AppColors.textColor),
              label: 'Профиль',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) => switch (index) {
              0 => const NewsScreen(),
              1 => const MapScreen(),
              2 => const FavoriteScreen(),
              3 => ProfileScreen(data: dataResponse),
              _ => const SizedBox()
            });
  }
}
