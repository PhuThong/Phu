import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'demo component'), 
      ),
    body: 
    
    SingleChildScrollView(
      child: Column(
            children: [
        TextWidget(),
        Row1Widget(),
        Row2Widget(),
        RowColumnWidget(),
        Column1Widget(),
        Column2Widget(),
        Column3Widget(),
      ],
    )
    
    ),);
    
  }
}

class Column3Widget extends StatelessWidget {
  const Column3Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
              TextField(
                decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 5.0),),

                // decoration: InputDecoration(
                // border: OutlineInputBorder(
                //   borderRadius:BorderRadius.circular(16),
                //   borderSide: BorderSide(color: Colors.red, width: 5.0)
                // ),
                hintText: 'Nhập tên',
            ),
              ),
              SizedBox(height: 27),
              ElevatedButton(onPressed: (){}, child: Text('Tiếp theo'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFBE1558)
              ),
              ),
              

        ],
      ),
    );
  }
}

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 62,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Column(
        
            children: [
              Image.asset('assets/images/ic_phone.png',
              height: 32,
              width: 32,
              ),
              SizedBox(height: 6,),
              Text('Liên hệ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
          Column(
        
            children: [
              Image.asset('assets/images/ic_share.png',
              height: 32,
              width: 32,
              ),
              SizedBox(height: 6,),
              Text('Chia sẻ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
          Column(
        
            children: [
              Image.asset('assets/images/ic_map.png',
              height: 32,
              width: 32,
              ),
              SizedBox(height: 6,),
              Text('Chỉ đường',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Column2Widget extends StatelessWidget {
  const Column2Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 29,
      
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 19),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Color(0xFFD9D9D9),),
          height: 75,
          

          
        ),
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 56,horizontal: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Ho ten',
          textAlign: TextAlign.center,
           style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
          ),
          
         SizedBox(height: 9),
          Text('Nguyen Dinh Phu', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, 
          color: Color(0xFF898989)
          ),),
          SizedBox(height: 16),
          Text('Dia chi',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 9),
          Text('so 75, duong Nguyen Trong Duong, khoi 67, phuong Hong Son, thanh pho Vinh, tinh Nghe An',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, 
          color: Color(0xFF898989)
          ),
          ),
          
          
        ],


      ),
    ),
      ],
    );
  }
}

class Column1Widget extends StatelessWidget {
  const Column1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 56,horizontal: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ho ten', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
         SizedBox(height: 9),
          Text('Nguyen Dinh Phu', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, 
          color: Color(0xFF898989)
          ),),
          SizedBox(height: 16),
          Text('Dia chi',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          SizedBox(height: 9),
          Text('so 75, duong Nguyen Trong Duong, khoi 67, phuong Hong Son, thanh pho Vinh, tinh Nghe An',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, 
          color: Color(0xFF898989)
          ),
          ),
          
          
        ],


      ),
    );
  }
}
class Row2Widget extends StatelessWidget {
  const Row2Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/ic_cloud.png',
          height: 32, width: 32,
          ),
          SizedBox(width: 19),
         Expanded(
           child: Container(
             height: 51,
             color: Color(0xFFD9D9D9),
             child: Center (
             child: Text('Xin chao',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28
             ),
             ),
           ),
         ),
         ),
          
        ],
      ),
    );
  }
}

class Row1Widget extends StatelessWidget {
  const Row1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/ic_cloud.png',
          height: 32, width: 32,
          ),
          SizedBox(width: 19),
         Expanded(
           child: Text('Xin chao minh la nguyen dinh phu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),
            ),
         ),
          
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
   
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
         color: Color(0xFFF2994A),
         border: Border.all(
           color: Color(0xFF11BD2C),
           width: 3,
        style: BorderStyle.solid,
         )
      ),
      
     
      height: 161,
      width: 388,
      child: Center(child: Text('XIN CHAO',style: TextStyle(
        color: Colors.white, fontSize: 28,
         
      )

      ),
    ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40,
        left: 15,
        right: 15,
      ),
      child: Text('Xin chao cac ban, minh la nguyen dinh phu',
      style:TextStyle(
        color: Color(0xFFBE1558),
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      ),
    );
  }
}

  