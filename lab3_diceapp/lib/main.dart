import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        // Thanh ứng dụng AppBar: Chia thành 5 khu vực: Leading, title, Tool Bar,flexibleSpace, bottom
        appBar: AppBar(
          title: Text('GFG | Dice'),
          backgroundColor: Color.fromARGB(15, 157, 88, 1),
        ),
        body: Dice(),
      ),
    ),
  );
}
//  Widget là nền tảng của flutter, miêu tả một phần giao diện của người dùng: Các componet như text, img, btn
//  State là thông tin thể hiện trên Widget mà có thể thay đổi trong suốt thời gain song sót trên đời của Widget
// Một là: StatefulWidget, bản thân Widget này sẽ chủ động update UI. Hai là: StatelessWidget, bản thân Widget này sẽ thụ động update UI, hay nói cách khác là bị Widget khác ép phải update UI
class Dice extends StatefulWidget{
  @override
  _DiceState createState() => _DiceState();

}

class _DiceState extends State<Dice>{
  int dice_no1 = 1;
  int dice_no2 = 1;
  void update(){
    setState(() {
      //   Random 1 - n -1
      //   Tạo ra một số nguyên tử ngẫu nhiên trong khoảng từ 0 -5
      //   Cộng thê 1 để chuyển dải số thành từ  1 đén 6, để phù jowpj với dice
      dice_no1 = Random().nextInt(6)+1;
      dice_no2 = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Căn giữa xúc xắc
        children: [
          Expanded(
            child: TextButton(
              onPressed: update,
              child: Image.asset('images/dice$dice_no1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: update,
              child: Image.asset('images/dice$dice_no2.png'),
            ),
          ),
        ],
      ),
    );
  }
}