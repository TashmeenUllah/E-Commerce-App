import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text("Details"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.heart_broken),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(child: Image.asset("assets/images/login.png")),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 300.0, left: 20),
                    child: Text(
                      "Chicken & Green Pea Recipe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 330.0, left: 20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "By",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                            text: "  Natural Balance   -  ",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.star_border_outlined),
                    Text("4.8 (2.2k)"),
                    Icon(Icons.keyboard_arrow_right_outlined),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360.0, left: 20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          // TextSpan(
                          //   text: "By",
                          //   style: TextStyle(color: Colors.grey),
                          // ),
                          TextSpan(
                            text: "\$28.99",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230.0),
                     child: Container(
                        width: 25,
                        height: 25,
                        child: Center(child: Text("-",style: TextStyle(color: Colors.amber,fontSize: 15),)),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            
                          ),
                          
                          borderRadius: BorderRadius.circular(60),
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text("1"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: 25,
                        height: 25,
                        child: Center(child: Text("+",style: TextStyle(color: Colors.amber,fontSize: 15),)),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.amber,
                            
                          ),
                          
                          borderRadius: BorderRadius.circular(60),
                        ),
                        
                      ),
                      
                          
                        
                      
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 395.0, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Flavor",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 430.0, left: 15),
                child: Wrap(
                  spacing: 18.0, // gap between adjacent chips
                  runSpacing: 8.0, // gap between lines
                  children: <Widget>[
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Center(
                        child: Text(
                          "Duck & Green Pea",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          "Duck & Green Pea",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          "Duck & Green Pea",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          "Duck & Green Pea",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //  ListView(
              //   children: [
              //     Container(
              //       width: 150,
              //       height: 50,
              //       color: Colors.amber,
              //     ), Container(
              //       width: 150,
              //       height: 50,
              //       color: Colors.amber,
              //     ), Container(
              //       width: 150,
              //       height: 50,
              //       color: Colors.amber,
              //     ), Container(
              //       width: 150,
              //       height: 50,
              //       color: Colors.amber,
              //     )
              //   ],
              //  )
              // GridView(

              //  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              //  children: [
              //   Container(
              //     width:100,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              //    Container(
              //     width:100,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              //    Container(
              //     width:100,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              //    Container(
              //     width:100,
              //     height: 50,
              //     color: Colors.amber,
              //   ),
              //  ],
              // ),

              // Wrap(
              //   children: [
              //     Row(

              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //         width:150,
              //          height: 65,
              //          color: Colors.amber,
              //        ),
              //        SizedBox(
              //         width: 30,
              //        ),
              //         Container(
              //         width:150,
              //          height: 65,
              //          color: Colors.amber,
              //        ),
              //         SizedBox(
              //         width: 30,
              //        ),
              //         Container(
              //         width:150,
              //          height: 65,
              //          color: Colors.amber,
              //         ),

              //   ],
              //                  ),
              //   ],
              // ),
              //      Wrap(
              //   spacing: 18.0, // gap between adjacent chips
              //   runSpacing: 4.0, // gap between lines
              //   children: <Widget>[
              //     Chip(
              //       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('EL')),
              //       label: const Text('Elon Musk'),
              //     ),
              //     Chip(
              //       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('BG')),
              //       label: const Text('Bill Gates'),
              //     ),
              //     Chip(
              //       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('MZ')),
              //       label: const Text('Mark Zuckerberg'),
              //     ),
              //     Chip(
              //       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JB')),
              //       label: const Text('Jeff Bezos'),
              //     ),
              //   ],
              // )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Size In Pound",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 15,
              children: [
               
               
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(
                    
                    radius: 30, backgroundColor: Colors.white,
                    child: Text("2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                    
                    ),
                ),
                
                Container(
                    
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("4",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("4.5",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),

                Container(
                  
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("5",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                ),
             
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("8",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                ),
                Container(
                    
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                ),
                
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: CircleAvatar(backgroundColor: Colors.white, radius: 30,
                       child: Text("16",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                ), 
              ],
            ),
          ),
           SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 345,
            height: 40,
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                
              ),
              onPressed: (){}, child: Text("Add to Cart",style: TextStyle(color: Colors.white),)),
          )
        ],
        
      ),
      
    );
  }
}
