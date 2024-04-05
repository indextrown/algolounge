// https://docs.flutter.dev/get-started/install
import 'package:flutter/material.dart';

class Player {
  String name;
  Player({required this.name});
}

void main() {
  // var dong = Player(name: "hello");
  runApp(const App());
}

// flutter는 화면이 scaffold라는걸 가짐
// flutter sdk에 있는 3개의 core widget중 하나를 상속 받아야함
// StatelessWidget 상속받으려면 build메서드를 구현해야함 -> flutter가 실행하게 되는데 build메서드가 뭘 리턴하든 그걸 화면애 보여줌
class App extends StatelessWidget {
  const App({super.key});

  @override // 이미 존재하는 메서드를 오버라이딩
  // root widget는 두 옵션 중 하나를 return 해야함
  // MaterialApp: 구글 or CupertinoApp: 애플
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818), // Colors.red.shade200,
        // backgroundColor: Color.fromRGBO(18, 18, 18, 0.8),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              // row: 수평 col 수직
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 끝
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.end, // columdml crossaxis는 수평
                    children: [
                      const Text(
                        'Hey, Dong',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$5 194 482',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // container는 div같은거임
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1F2123),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      child: Text(
                        'Request',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
