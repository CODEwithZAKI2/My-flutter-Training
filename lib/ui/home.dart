// ignore_for_file: unnecessary_const, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/model/movie.dart';
import 'package:helloworld/model/question.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:video_player/video_player.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white70,
      child: Center(
        child: Text(
          'Hello, World!',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        title: const Text("Scaffold Example"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // InkWell(
            //   borderRadius: BorderRadius.all(Radius.circular(30.0)),
            //   onTap: () => debugPrint("Tapped..."),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.amber, // Set your desired background color here
            //       borderRadius: BorderRadius.all(Radius.circular(30.0)),
            //     ),
            //     child: const Padding(
            //       padding: EdgeInsets.all(18.0),
            //       child: Text(
            //         "Tap me",
            //         style: TextStyle(
            //           fontSize: 20.0,
            //           color: Colors
            //               .white, // Set text color to contrast with background
            //         ),
            //       ),
            //     ),
            //   ),
            // )
            CustomButton()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profile"),
        ],
        onTap: (value) {
          if (value == 0) {
            debugPrint("Home is tapped!");
          }
          if (value == 1) {
            debugPrint("Cart is tapped!");
          }
          if (value == 2) {
            debugPrint("Profile is tapped!");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Hi"),
        child: Icon(Icons.missed_video_call),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var snackbar = SnackBar(
          content: Text("Hello Again!"),
          backgroundColor: Colors.pink,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Text(
          "Tap me",
          style: TextStyle(fontSize: 23.0),
        ),
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizcard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [_getCard(), _getAvator()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Omar Zaki"),
          Text(
            "engomar@163.com",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline_outlined),
              Text("X: @omarzaki")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvator() {
    return Container(
      margin: EdgeInsets.only(bottom: 170.0),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.pinkAccent, width: 3),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)),
    );
  }
}

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  var count = 0;
  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall",
    "Be yourself; everyone else is already taken",
    "I have nothing to declare except my genius",
    "The truth is rarely pure and never simple",
    "I am so clever that sometimes I don't understand a single word of what I am saying",
    "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment",
    "It is our choices, Harry, that show what we truly are, far more than our abilities",
    "A friend is someone who knows all about you and still loves you",
    "Always forgive your enemies; nothing annoys them so much",
    "To live is the rarest thing in the world. Most people exist, that is all",
    "Live as if you were to die tomorrow. Learn as if you were to live forever",
    "Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "${quotes[count]}",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0),
              )),
            ))),
            Divider(
              thickness: 1.4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    _showQuote();
                  },
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire me!")),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      if (count < quotes.length - 1) {
        count = count + 1;
      } else {
        count = 0;
      }
      debugPrint(count.toString());
    });
  }
}

class BillSplitter extends StatefulWidget {
  const BillSplitter({Key? key}) : super(key: key);

  @override
  State<BillSplitter> createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;
  Color _purple = HexColor("#6908D6");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: _purple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(18.0)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total per person",
                      style: TextStyle(
                          color: _purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    Text(
                      "\$${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}",
                      style: TextStyle(
                          color: _purple,
                          fontSize: 34.9,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 1.0,
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid)),
              child: Column(
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                      color: _purple,
                    ),
                    decoration: InputDecoration(
                        hintText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)),
                    onChanged: (String value) {
                      try {
                        setState(() {
                          _billAmount = double.parse(value);
                        });
                      } catch (exception) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Split",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_personCounter == 1) {
                                    _personCounter = 1;
                                  } else {
                                    _personCounter -= 1;
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: _purple.withOpacity(0.2)),
                                child: Text("-"),
                              ),
                            ),
                            Text(
                              "$_personCounter",
                              style: TextStyle(color: _purple, fontSize: 18.0),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _personCounter += 1;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(8),
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: _purple.withOpacity(0.2)),
                                child: Text("+"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tip",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18.0),
                        ),
                        Text(
                          "\$${calculateTotalTip(_billAmount, _personCounter, _tipPercentage)}",
                          style: TextStyle(color: _purple, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "$_tipPercentage%",
                        style: TextStyle(color: _purple, fontSize: 18.0),
                      ),
                      Slider(
                          activeColor: _purple,
                          inactiveColor: Colors.grey,
                          divisions: 5,
                          min: 0,
                          max: 100,
                          value: _tipPercentage.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              _tipPercentage = newValue.round();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double billAmount, int splitBy, int totalPercentage) {
    var totalPerPerson =
        (calculateTotalTip(billAmount, splitBy, totalPercentage) + billAmount) /
            splitBy;
    return totalPerPerson;
  }

  calculateTotalTip(double billAmount, int slitBy, int tipPercentage) {
    double totalTip = 0.0;
    if (billAmount < 0 || billAmount.toString().isEmpty) {
    } else {
      totalTip = (billAmount * tipPercentage) / 100;
    }
    return totalTip;
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var questionCounter = 0;
  List questionBank = [
    Question.name("The USA has 50 states", true),
    Question.name("The River Nile is the longest river in the world", true),
    Question.name("The capital of France is Madrid", false),
    Question.name("The Pacific Ocean is the biggest ocean on Earth", true),
    Question.name("The currency of Japan is Yen", true),
    Question.name(
        "Mount Kilimanjaro is the tallest mountain in the world", false),
    Question.name(
        "The human skeleton is made up of less than 100 bones", false),
    Question.name("Goldfish only have a memory of about 3 seconds", false),
    Question.name("The Great Wall of China is visible from space", false),
    Question.name("The currency of France is the Franc", false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizens"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "images/flag.png",
            width: 250,
            height: 180,
          )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.blueGrey.shade700,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(14.4)),
              child: Center(
                  child: Text(
                "${questionBank[questionCounter].questionText}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.9,
                ),
              )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _checkAnswer(true),
                child: Text("TRUE"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey.shade900),
                ),
              ),
              ElevatedButton(
                onPressed: () => _checkAnswer(false),
                child: Text("FALSE"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey.shade900),
                ),
              ),
              ElevatedButton(
                onPressed: () => _next(),
                child: Icon(
                  Icons.navigate_next_sharp,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueGrey.shade900),
                ),
              )
            ],
          ),
          Spacer()
        ],
      )),
    );
  }

  _checkAnswer(bool answer) {
    if (answer == questionBank[questionCounter].isCorrect) {
      var snackBar = SnackBar(
        content: Text("Correct"),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _next();
    } else {
      var snackBar = SnackBar(
        content: Text("InCorrect"),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _next();
    }
  }

  _next() {
    setState(() {
      if (questionCounter < questionBank.length - 1) {
        questionCounter = questionCounter + 1;
      } else {
        questionCounter = 0;
      }
    });
  }
}

class MovieListView extends StatelessWidget {
  MovieListView({
    Key? key,
  }) : super(key: key);
  final List<Movie> movieList = Movie.getMovies();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(children: [
              movieCard(movieList[index], context),
              Positioned(top: 10.0, child: movieImage(movieList[index].images)),
            ]);
            // return Card(
            //   color: Colors.white,
            //   child: ListTile(
            //     title: Text(movieList[0].title),
            //     subtitle: Text("subtitle"),
            //     leading: CircleAvatar(
            //       child: Container(
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(13.9),
            //             image: DecorationImage(
            //                 fit: BoxFit.cover,
            //                 image:
            //                     NetworkImage(movieList[0].images[0]))),
            //       ),
            //     ),
            //     trailing: Text("..."),
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => MovieListViewDetails(movieList: movieList,)));
            //     },
            //   ),
            // );
          }),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieListViewDetails(movieList: movie)));
      },
      child: Container(
        margin: EdgeInsets.only(left: 60.0),
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white),
                      ),
                      Text(
                        "${movie.imdbRating}/10",
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Released: ${movie.released}",
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                      Text(
                        movie.runtime,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                      Text(
                        movie.rated,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget movieImage(List images) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(images[0]), fit: BoxFit.cover)),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  const MovieListViewDetails({Key? key, required this.movieList})
      : super(key: key);
  final Movie movieList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Movie Details"),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: ListView(
          children: [
            MovieDetailsThumbnail(movieThumbnail: movieList.images[1]),
            MovieDetailsHeaderWithPoster(movie: movieList)
          ],
        ));
  }
}

class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({Key? key, required this.movieThumbnail})
      : super(key: key);
  final String movieThumbnail;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(movieThumbnail), fit: BoxFit.cover)),
            ),
            InkWell(
              // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MoviePlayPage())),
              child: Icon(
                Icons.play_circle_outlined,
                color: Colors.white,
                size: 100,
              ),
            )
          ],
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        )
      ],
    );
  }
}

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  const MovieDetailsHeaderWithPoster({Key? key, required this.movie})
      : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[0].toString()),
          SizedBox(
            width: 16,
          ),
          Expanded(child: MovieDetailsHeader(movie: movie))
        ],
      ),
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${movie.year} . ${movie.genre}".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.cyan),
        ),
        Text(
          movie.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
        ),
        Text.rich(TextSpan(
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            children: [
              TextSpan(text: movie.plot),
              TextSpan(
                text: " More...",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.cyan),
              )
            ]))
      ],
    );
  }
}

class MoviePoster extends StatelessWidget {
  const MoviePoster({Key? key, required this.poster}) : super(key: key);
  final String poster;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 4,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(poster), fit: BoxFit.cover)),
      ),
    );
  }
}
// class MoviePlayPage extends StatefulWidget {
//   const MoviePlayPage({ Key? key }) : super(key: key);

//   @override
//   State<MoviePlayPage> createState() => _MoviePlayPageState();
// }

// class _MoviePlayPageState extends State<MoviePlayPage> {
// YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: 'iLnmTe5Q2Qw',
    
// );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: YoutubePlayer(
//     controller: _controller,
//     liveUIColor: Colors.amber,
// ),
//     );
//   }
// }

// class MoviePlayPage extends StatefulWidget {
//   const MoviePlayPage({ Key? key }) : super(key: key);

//   @override
//   State<MoviePlayPage> createState() => _MoviePlayPageState();
// }

// class _MoviePlayPageState extends State<MoviePlayPage> {
//     late YoutubePlayerController _controller;
//     late TextEditingController _idController;
//   late TextEditingController _seekToController;

//   late PlayerState _playerState;
//   late YoutubeMetaData _videoMetaData;
//   double _volume = 100;
//   bool _muted = false;
//   bool _isPlayerReady = false;
//    final List<String> _ids = [
//     'nPt8bK2gbaU',
//     'gQDByCdjUXw',
//     'iLnmTe5Q2Qw',
//     '_WoCV4c6XOE',
//     'KmzdUe0RSJo',
//     '6jZDSSZZxjQ',
//     'p2lYr3vM_1w',
//     '7QUtEmBT_-w',
//     '34_PXCzGw1M',
//   ];
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: _ids.first,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: true,
//         disableDragSeek: false,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         enableCaption: true,
//       ),
//     )..addListener(listener);
//     _idController = TextEditingController();
//     _seekToController = TextEditingController();
//     _videoMetaData = const YoutubeMetaData();
//     _playerState = PlayerState.unknown;
//   }
//     void listener() {
//     if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//       setState(() {
//         _playerState = _controller.value.playerState;
//         _videoMetaData = _controller.metadata;
//       });
//     }
//   }

//   @override
//   void deactivate() {
//     // Pauses video while navigating to next page.
//     _controller.pause();
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _idController.dispose();
//     _seekToController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return YoutubePlayerBuilder(
//       onExitFullScreen: () {
//         // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
//         SystemChrome.setPreferredOrientations(DeviceOrientation.values);
//       },
//       player: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Colors.blueAccent,
//         topActions: <Widget>[
//           const SizedBox(width: 8.0),
//           Expanded(
//             child: Text(
//               _controller.metadata.title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 18.0,
//               ),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//             ),
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.settings,
//               color: Colors.white,
//               size: 25.0,
//             ),
//             onPressed: () {
//               log('Settings Tapped!');
//             },
//           ),
//         ],
//         onReady: () {
//           _isPlayerReady = true;
//         },
//         onEnded: (data) {
//           _controller
//               .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
//           _showSnackBar('Next Video Started!');
//         },
//       ),
//       builder: (context, player) => Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: const EdgeInsets.only(left: 12.0),
//             child: Image.asset(
//               'assets/ypf.png',
//               fit: BoxFit.fitWidth,
//             ),
//           ),
//           title: const Text(
//             'Youtube Player Flutter',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {
                
//               },
//               icon: const Icon(Icons.video_library),
//               // onPressed: () => Navigator.push(
//               //   context,
//               //   CupertinoPageRoute(
//               //     builder: (context) => const VideoList(),
//               //   ),
//               // ),
//             ),
//           ],
//         ),
//         body: ListView(
//           children: [
//             player,
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   _space,
//                   _text('Title', _videoMetaData.title),
//                   _space,
//                   _text('Channel', _videoMetaData.author),
//                   _space,
//                   _text('Video Id', _videoMetaData.videoId),
//                   _space,
//                   Row(
//                     children: [
//                       _text(
//                         'Playback Quality',
//                         _controller.value.playbackQuality ?? '',
//                       ),
//                       const Spacer(),
//                       _text(
//                         'Playback Rate',
//                         '${_controller.value.playbackRate}x  ',
//                       ),
//                     ],
//                   ),
//                   _space,
//                   TextField(
//                     enabled: _isPlayerReady,
//                     controller: _idController,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Enter youtube <video id> or <link>',
//                       fillColor: Colors.blueAccent.withAlpha(20),
//                       filled: true,
//                       hintStyle: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         color: Colors.blueAccent,
//                       ),
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.clear),
//                         onPressed: () => _idController.clear(),
//                       ),
//                     ),
//                   ),
//                   _space,
//                   Row(
//                     children: [
//                       _loadCueButton('LOAD'),
//                       const SizedBox(width: 10.0),
//                       _loadCueButton('CUE'),
//                     ],
//                   ),
//                   _space,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.skip_previous),
//                         onPressed: _isPlayerReady
//                             ? () => _controller.load(_ids[
//                                 (_ids.indexOf(_controller.metadata.videoId) -
//                                         1) %
//                                     _ids.length])
//                             : null,
//                       ),
//                       IconButton(
//                         icon: Icon(
//                           _controller.value.isPlaying
//                               ? Icons.pause
//                               : Icons.play_arrow,
//                         ),
//                         onPressed: _isPlayerReady
//                             ? () {
//                                 _controller.value.isPlaying
//                                     ? _controller.pause()
//                                     : _controller.play();
//                                 setState(() {});
//                               }
//                             : null,
//                       ),
//                       IconButton(
//                         icon: Icon(_muted ? Icons.volume_off : Icons.volume_up),
//                         onPressed: _isPlayerReady
//                             ? () {
//                                 _muted
//                                     ? _controller.unMute()
//                                     : _controller.mute();
//                                 setState(() {
//                                   _muted = !_muted;
//                                 });
//                               }
//                             : null,
//                       ),
//                       FullScreenButton(
//                         controller: _controller,
//                         color: Colors.blueAccent,
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.skip_next),
//                         onPressed: _isPlayerReady
//                             ? () => _controller.load(_ids[
//                                 (_ids.indexOf(_controller.metadata.videoId) +
//                                         1) %
//                                     _ids.length])
//                             : null,
//                       ),
//                     ],
//                   ),
//                   _space,
//                   Row(
//                     children: <Widget>[
//                       const Text(
//                         "Volume",
//                         style: TextStyle(fontWeight: FontWeight.w300),
//                       ),
//                       Expanded(
//                         child: Slider(
//                           inactiveColor: Colors.transparent,
//                           value: _volume,
//                           min: 0.0,
//                           max: 100.0,
//                           divisions: 10,
//                           label: '${(_volume).round()}',
//                           onChanged: _isPlayerReady
//                               ? (value) {
//                                   setState(() {
//                                     _volume = value;
//                                   });
//                                   _controller.setVolume(_volume.round());
//                                 }
//                               : null,
//                         ),
//                       ),
//                     ],
//                   ),
//                   _space,
//                   AnimatedContainer(
//                     duration: const Duration(milliseconds: 800),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.0),
//                       color: _getStateColor(_playerState),
//                     ),
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       _playerState.toString(),
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w300,
//                         color: Colors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _text(String title, String value) {
//     return RichText(
//       text: TextSpan(
//         text: '$title : ',
//         style: const TextStyle(
//           color: Colors.blueAccent,
//           fontWeight: FontWeight.bold,
//         ),
//         children: [
//           TextSpan(
//             text: value,
//             style: const TextStyle(
//               color: Colors.blueAccent,
//               fontWeight: FontWeight.w300,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Color _getStateColor(PlayerState state) {
//     switch (state) {
//       case PlayerState.unknown:
//         return Colors.grey[700]!;
//       case PlayerState.unStarted:
//         return Colors.pink;
//       case PlayerState.ended:
//         return Colors.red;
//       case PlayerState.playing:
//         return Colors.blueAccent;
//       case PlayerState.paused:
//         return Colors.orange;
//       case PlayerState.buffering:
//         return Colors.yellow;
//       case PlayerState.cued:
//         return Colors.blue[900]!;
//       default:
//         return Colors.blue;
//     }
//   }

//   Widget get _space => const SizedBox(height: 10);

//   Widget _loadCueButton(String action) {
//     return Expanded(
//       child: MaterialButton(
//         color: Colors.blueAccent,
//         onPressed: _isPlayerReady
//             ? () {
//                 if (_idController.text.isNotEmpty) {
//                   var id = YoutubePlayer.convertUrlToId(
//                         _idController.text,
//                       ) ??
//                       '';
//                   if (action == 'LOAD') _controller.load(id);
//                   if (action == 'CUE') _controller.cue(id);
//                   FocusScope.of(context).requestFocus(FocusNode());
//                 } else {
//                   _showSnackBar('Source can\'t be empty!');
//                 }
//               }
//             : null,
//         disabledColor: Colors.grey,
//         disabledTextColor: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 14.0),
//           child: Text(
//             action,
//             style: const TextStyle(
//               fontSize: 18.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w300,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }

//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(
//           message,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontWeight: FontWeight.w300,
//             fontSize: 16.0,
//           ),
//         ),
//         backgroundColor: Colors.blueAccent,
//         behavior: SnackBarBehavior.floating,
//         elevation: 1.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50.0),
//         ),
//       ),
//     );
//   }
// }
