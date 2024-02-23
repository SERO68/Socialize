import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Landscreen extends StatefulWidget {
  const Landscreen({super.key});

  @override
  State<Landscreen> createState() => _LandscreenState();
}

class _LandscreenState extends State<Landscreen> {
  final List<Post> posts = [
    Post('images/boy1.jpg', 'Ahmed', 'images/pic1.jpg', 'Free palstine', 9999,
        'great', '30 min ago'),
    Post('images/boy2.jpg', 'Mostafa', 'images/pic2.jpg', 'true', 5, 'great',
        '30 min ago'),
    Post('images/boy3.jpg', 'Mansour', 'images/pic3.jpg', '', 1, 'great',
        '30 min ago'),
    Post('images/girl1.jpg', 'Menna', 'images/pic4.jpg', '', 10000, 'great',
        '30 min ago'),
    Post('images/girl2.jpg', 'Jihad', 'images/pic5.jpg', 'ture', 1000, 'great',
        '30 min ago'),
    Post('images/boy4.jpg', 'Adham', 'images/pic6.jpg', 'i love it', 4, 'great',
        '30 min ago'),
  ];
  int selcetedindex = 0;

  void changenavigation(int index) {
    setState(() {
      selcetedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selcetedindex,
        onTap: changenavigation,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 31, 26, 162),
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bell,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.user,
              ),
              label: ''),
        ],
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromRGBO(43, 11, 171, 1),
              Color.fromRGBO(92, 81, 193, 1)
            ])),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.cameraRetro,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'fonthead4',
                                  fontSize: 30),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.paperPlane,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ])),
              Expanded(
                flex: 8,
                child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: ListView.builder(
                                itemCount: posts.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10.0), 
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: const Offset(0,
                                                2), 
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  posts[index].userProfilePic),
                                            ),
                                            title: Text(posts[index].userName,
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            subtitle: Text(
                                                'Posted on ${posts[index].timePosted}',
                                                style: const TextStyle(
                                                    color: Colors.grey)),
                                          ),
                                          AspectRatio(
                                            aspectRatio: 16 /
                                                9, 
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    10.0), 
                                                image: DecorationImage(
                                                  fit: BoxFit
                                                      .contain, 
                                                  image: NetworkImage(
                                                      posts[index].postImage),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 8.0),
                                            child: Text(
                                              posts[index].postText,
                                              style: const TextStyle(
                                                  fontSize:
                                                      18), 
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1.0, top: 8.0),
                                            child: Row(
                                              children: <Widget>[
                                                IconButton(
                                                  icon: const Icon(Icons.thumb_up,
                                                      color: Colors.blue),
                                                  onPressed: () {},
                                                ),
                                                Text('${posts[index].likes}',
                                                    style: const TextStyle(
                                                        color: Colors.blue)),
                                                const SizedBox(
                                                    width:
                                                        10), 
                                                IconButton(
                                                  icon: const Icon(Icons.comment,
                                                      color: Colors.grey),
                                                  onPressed: () {},
                                                ),
                                                Text(
                                                    '${posts[index].comments.length}',
                                                    style: const TextStyle(
                                                        color: Colors.grey)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Post {
  final String userProfilePic;
  final String userName;
  final String postImage;
  final String postText;
  final int likes;
  final String comments;
  final String timePosted;

  Post(this.userProfilePic, this.userName, this.postImage, this.postText,
      this.likes, this.comments, this.timePosted);
}
