import 'package:flutter/material.dart';
import 'package:screen_responsive_mediaquery/core/responsive_config.dart';
import 'package:screen_responsive_mediaquery/model/TheatreModel.dart';
import 'package:screen_responsive_mediaquery/widgets/AnimatedImageAppBarComponent.dart';

class BookTheatre extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String movieTag;
  final Widget? movieAbout;

  const BookTheatre({
    super.key,
    this.movieName = '',
    this.movieImage = '',
    this.movieTag = '',
    this.movieAbout,
  });

  @override
  Widget build(BuildContext context) {
    final config = ResponsiveConfig(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          AnimatedImageAppBarComponent(
            appBarTitle: 'test',
            appBarColor: Colors.white,
            appBarHeight: 300,
            isAppBarPinned: true,
            isAppBarFloating: true,
            appBarImageWidget: 'assets/images/image.jpg',
          ),

          ResponsiveConfig.responsiveSliverListOrGrid(
            context: context,
            itemCount: theatres.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: config.wp(2),
                  vertical: config.hp(1),
                ),
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(config.wp(2)),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(config.wp(4)),
                    title: Text(
                      theatres[index].theatre ?? '-',
                      style: TextStyle(
                        fontSize: config.sp(16),
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      theatres[index].location ?? '-',
                      style: TextStyle(
                        fontSize: config.sp(14),
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.movie,
                      color: Colors.white,
                      size: config.wp(6),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),

    );
  }
}
