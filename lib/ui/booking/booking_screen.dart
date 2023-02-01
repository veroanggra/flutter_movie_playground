import 'package:flutter/material.dart';
import 'package:flutter_movie_playground/ui/dashboard/dashboard_screen.dart';
import 'package:shared/shared.dart';

class BookingScreen extends StatelessWidget {
  static const routeName = '/booking';

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var _isDarkTheme = themeData.appBarTheme?.color == null;
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor:
          !_isDarkTheme ? ColorPalettes.darkPrimary : ColorPalettes.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(args.movies.title ?? args.movies.tvName),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(Sizes.dp20(context)),
          child: Column(
            children: <Widget>[
              DateWidget(),
              TimeWidget(),
              CinemaWidget(movieBackground: args.movies.backdropPath),
              Padding(
                padding: EdgeInsets.only(
                  top: Sizes.dp20(context),
                ),
                child: CustomButton(
                  text: "Pay",
                  onPressed: () {
                    SmoothDialog(
                      context: context,
                      path: ImagesAssets.successful,
                      mode: SmoothMode.Lottie,
                      content: "Thanks for yourticket order",
                      title: "Payment Successful!",
                      submit: () {
                        Navigation.intentWithClearAllRoutes(
                            context, DashBoardScreen.routeName);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
