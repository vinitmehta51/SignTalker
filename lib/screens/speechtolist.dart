import 'package:flutter/material.dart';
import 'package:signlanguage/constants.dart';
import 'package:signlanguage/navigatorkey.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

import 'imageScreenList.dart';

class VoiceScreen extends StatefulWidget {
  @override
  _VoiceScreenState createState() => _VoiceScreenState();
}

class _VoiceScreenState extends State<VoiceScreen> {
  late stt.SpeechToText _speech;
  late FlutterTts _tts;

  bool _isListening = false;
  String _text = '';
  String gifstring = '';

  List<String> _words = [];

  List<String> _gif = [
    'anyquestions',
    'areyouangry',
    'areyoubusy',
    'areyouhungry',
    'areyousick',
    'becareful',
    'canwemeettomorrow',
    'didyoubooktickets',
    'didyoufinishhomework',
    'doyougotooffice',
    'doyouhavemoney',
    'doyouwantsomethingtodrink',
    'doyouwantteaorcoffee',
    'doyouwatchtv',
    'dontworry',
    'flowerisbeautiful',
    'goodafternoon',
    'goodevening',
    'goodmorning',
    'goodnight',
    'goodquestion',
    'hadyourlunch',
    'happyjourney',
    'hellowhatisyourname',
    'howmanypeoplearethereinyourfamily',
    'iamaclerk',
    'iamboredoingnothing',
    'iamfine',
    'iamsorry',
    'iamthinking',
    'iamtired',
    'idontunderstandanything',
    'igotoatheatre',
    'ilovetoshop',
    'ihadtosaysomethingbutiforgot',
    'ihaveheadache',
    'ilikepinkcolour',
    'iliveinnagpur',
    'letsgoforlunch',
    'mymotherisahomemaker',
    'mynameisjohn',
    'nicetomeetyou',
    'nosmokingplease',
    'openthedoor',
    'pleasecallmelater',
    'pleasecleantheroom',
    'pleasegivemeyour pen',
    'pleaseusedustbindontthrowgarbage',
    'pleasewaitforsometime',
    'shallihelpyou',
    'shallwegotogethertommorow',
    'signlanguageinterpreter',
    'sitdown',
    'standup',
    'takecare',
    'therewastrafficjam',
    'waitiamthinking',
    'whatareyoudoing',
    'whatistheproblem',
    'whatistodaysdate',
    'whatisyourfatherdo',
    'whatisyourjob',
    'whatisyourmobilenumber',
    'whatisyourname',
    'whatsup',
    'whenisyourinterview',
    'whenwewillgo',
    'wheredoyoustay',
    'whereisthebathroom',
    'whereisthepolicestation',
    'youarewrong',
    'address',
    'agra',
    'ahemdabad',
    'all',
    'april',
    'assam',
    'august',
    'australia',
    'badoda',
    'banana',
    'banaras',
    'banglore',
    'bihar',
    'bihar',
    'bridge',
    'cat',
    'chandigarh',
    'chennai',
    'christmas',
    'church',
    'clinic',
    'coconut',
    'crocodile',
    'dasara',
    'deaf',
    'december',
    'deer',
    'delhi',
    'dollar',
    'duck',
    'febuary',
    'friday',
    'fruits',
    'glass',
    'grapes',
    'gujrat',
    'hello',
    'hindu',
    'hyderabad',
    'india',
    'january',
    'jesus',
    'job',
    'july',
    'july',
    'karnataka',
    'kerala',
    'krishna',
    'litre',
    'mango',
    'may',
    'mile',
    'monday',
    'mumbai',
    'museum',
    'muslim',
    'nagpur',
    'october',
    'orange',
    'pakistan',
    'pass',
    'policestation',
    'postoffice',
    'pune',
    'punjab',
    'rajasthan',
    'ram',
    'restaurant',
    'saturday',
    'september',
    'shop',
    'sleep',
    'southafrica',
    'story',
    'sunday',
    'tamilnadu',
    'temperature',
    'temple',
    'thursday',
    'toilet',
    'tomato',
    'town',
    'tuesday',
    'usa',
    'village',
    'voice',
    'wednesday',
    'weight',
    'pleasewaitforsometime',
    'whatisyourmobilenumber',
    'whatareyoudoing',
    'areyoubusy'
  ];

  List<String> bye = ['goodbye', 'bye', 'good bye'];

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _tts = FlutterTts();
  }

  @override
  void dispose() {
    super.dispose();
    _tts.stop();
  }

  void _speak(String text) async {
    await _tts.setLanguage('en-US');
    await _tts.setPitch(1);
    await _tts.setSpeechRate(0.5);
    await _tts.speak(text);
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            _words = _text.split(' ');
            gifstring = _words.join('');
          }),
        );
        if (bye.contains(_text.toLowerCase())) {
          // ignore: use_build_context_synchronously, non_constant_identifier_names
          navigatorKey?.currentState?.pushNamed("HomeScreeen");
        }
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  List<Widget> get _imageList {
    return _words.map((word) {
      if (_gif.contains(gifstring.toLowerCase())) {
        return Image.asset(
          'gifs/$gifstring.gif',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        );
      } else {
        return Wrap(
          spacing: 5,
          children: word.split('').map((letter) {
            return Image.asset(
              'letters/$letter.jpg',
              width: 50,
              height: 50,
            );
          }).toList(),
        );
      }
    }).toList();
  }

  List<String> _generateImageList() {
    List<String> imageList = [];

    String gifstring = _words.join('');
    if (gifstring != null && _gif.contains(gifstring)) {
      imageList.add('assets/gifs/$gifstring.gif');
    } else {
      for (final word in _words) {
        for (final letter in word.split('')) {
          final widget = 'assets/letters/$letter.jpg';
          imageList.add(widget);
        }
      }
    }

    return imageList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appbar(),
      body: bodyVoiceScreen(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _speak(_text),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      leading: BackButton(
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text('Say Something'),
      // centerTitle: true,
      backgroundColor: kPrimaryColor,
    );
  }

  SafeArea bodyVoiceScreen(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 750,
        width: 500,
        // color: kPrimaryColor,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: [kDefaultShadow],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(75),
                bottomRight: Radius.circular(75))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _text,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Icon(
                _isListening ? Icons.mic : Icons.mic_none,
                size: 50,
              ),
              onPressed: _listen,
            ),
            SizedBox(height: 20),
            //comment for the error hiding
            // Wrap(
            //   spacing: 5,
            //   children: _words.map((letter) {
            //     if (_gif.contains(gifstring)) {
            //       return Image.asset(
            //         'assets/gifs/$gifstring.gif',
            //         width: 100,
            //         height: 100,
            //       );
            //     } else {
            //       return Image.asset(
            //         'assets/letters/$letter.jpg',
            //         //assets\letters\a.jpg
            //         width: 50,
            //         height: 50,
            //       );
            //     }
            //   }).toList(),
            // ),
            ElevatedButton(
              child: Text("Navigate to ImageScreen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageScreen(
                      imageList: _generateImageList(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
