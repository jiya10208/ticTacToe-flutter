import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicTacToe(),
    ),
  );
}

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List winnings = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  var currPlayer = 1;
  var playerChoice = 'X';
  var cpuChoice = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TIC TAC TOE"),
      ),
      backgroundColor: const Color.fromARGB(255, 120, 192, 255),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: gridValues.length,
              itemBuilder: (context, index) {
                return Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 244, 112, 156),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            gridValues[index] = playerChoice;
                          },
                        );
                        debugPrint(
                          "$index,${gridValues[index].toString()}",
                        );
                      },
                      child: Center(
                        child: Text(
                          gridValues[index].toString(),
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
// ElevatedButton(
//                     onPressed: () {},
//                     child: Center(
//                       child: Text(
//                         gridValues[index].toString(),
//                         style: const TextStyle(fontSize: 50),
//                       ),
//                     ),
//                   );