import 'package:flutter/material.dart';
import 'package:minimal_onboarding/minimal_onboarding.dart';
import 'package:utumishiportal/ui/views/home_view.dart';
import 'package:splashscreen/splashscreen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => new _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 7,
      navigateAfterSeconds: new WelcomeScreen(),
      title: Text(
        'Welcome to Utumishi \n job portal app',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      image: Image.asset("assets/logo/utumishi-logo.png"),
      gradientBackground: LinearGradient(
          colors: [Colors.cyan, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.yellow,
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: MinimalOnboarding(
        onboardingPages: onboardingPages,
        dotsDecoration: DotsDecorator(
          activeColor: Color(0xFF4E67EB),
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        onFinishButtonPressed: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HomeLoginView();
        })),
        onSkipButtonPressed: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HomeLoginView();
        })),
      ),

      // body: OnBoardingUi(
      //   slides: [
      //     SliderModel.Slider(
      //       sliderHeading: "Security",
      //       sliderSubHeading: "Hakikisha unahifadhi taarifa zako sehemu salama",
      //       sliderImageUrl: 'assets/logo/password.png',
      //     ),
      //     SliderModel.Slider(
      //       sliderHeading: "Searching for a Post",
      //       sliderSubHeading: "Tafuta na soma maelezo ya matanazo ya kazi",
      //       sliderImageUrl: 'assets/logo/search_engine.png',
      //     ),
      //     SliderModel.Slider(
      //       sliderHeading: "Upload Files",
      //       sliderSubHeading:
      //           "Jaza na tuma viambatanishi vya vivuli vya vyeti yako",
      //       sliderImageUrl: 'assets/logo/mobile_phone.png',
      //     ),
      //     SliderModel.Slider(
      //       sliderHeading: "Interview",
      //       sliderSubHeading:
      //           "Na utajuulishwa siku pamoja na mahala pakufanyia interview",
      //       sliderImageUrl: 'assets/logo/job_interview.png',
      //     )
      //   ],
      //   onFinish: () {
      //     Navigator.of(context).pushAndRemoveUntil(
      //         MaterialPageRoute(builder: (context) {
      //       return HomeLoginView();
      //     }), (route) => false);
      //   },
      // ),
    );
  }

  final onboardingPages = [
    OnboardingPageModel(
      'assets/logo/password.png',
      'Security',
      'Hakikisha unahifadhi taarifa zako sehemu salama.',
    ),
    OnboardingPageModel(
      'assets/logo/search_engine.png',
      'Searching for a Post',
      'Tafuta na soma maelezo ya matanazo ya kazi.',
    ),
    OnboardingPageModel(
      'assets/logo/mobile_phone.png',
      'Upload Files',
      'Jaza na tuma viambatanishi vya vivuli vya vyeti yako.',
    ),
    OnboardingPageModel(
      'assets/logo/job_interview.png',
      'Interview',
      'Na utajuulishwa siku pamoja na mahala pakufanyia interview.',
    ),
  ];
}
