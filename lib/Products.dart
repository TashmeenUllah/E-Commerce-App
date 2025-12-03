import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Detail.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 227, 227),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromARGB(255, 229, 227, 227),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: BackButton(),
          ),
        ),
        title: TextField(
          style: new TextStyle(fontSize: 16.0, color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
            filled: true,

            fillColor: Colors.white,
            hintText: 'Chicken',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.cancel),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.production_quantity_limits_outlined),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                  decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                      color: Colors.orangeAccent,
                        width: 2.0,
                      ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Icon(Icons.circle, color: Colors.black),
                              SizedBox(width: 10),
                              Text('Cat'),
                              SizedBox(width: 10),
                              Icon(Icons.cancel_outlined),
                            ],
                          ),
                        ),

                        // suffixIcon:Icon(Icons.castle_sharp)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.local_offer, color: Colors.grey),
                        ),
                        SizedBox(width: 10),
                        Text('Offers'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21.0),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.star_border_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text('4.0+'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 0.55,
                      children: <Widget>[
                        Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Image.asset("assets/images/login.png"),
                             
                              ],
                            ),
                          ),
                          //  Container(
                          //     width: 100,
                          //     height: 30,
                          //     color: Colors.yellow,
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(top:4.0,left: 10),
                          //       child: Text("20% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //     ),
                          //    ),
                             Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Chicken & Green Pea\nRecipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 4.8 (2.2k)"),
                                  ),
                                ],
                              
                               ),
                               
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$28.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: InkWell(
                                          child: Icon(Icons.add,color: Colors.white,),
                                          onTap: (){
                                             Navigator.push(
                                              context,
                                            MaterialPageRoute(
                                            builder: (context) => const Detail(),
                                  ),
                                             );
                                          },
                                          )
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                        
                          
                        Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Image.asset("assets/images/login.png"),
                             
                              ],
                            ),
                          ),
                          //  Padding(
                          //    padding: const EdgeInsets.only(top:25.0),
                          //    child: Container(
                          //       width: 80,
                          //       height: 30,
                          //       color: Colors.yellow,
                          //       child: Padding(
                          //         padding: const EdgeInsets.only(top:4.0,left: 5),
                          //         child: Text("25% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //       ),
                          //      ),
                          //  ),
                          //    Padding(
                          //      padding: const EdgeInsets.only(top:135.0,left:20),
                          //      child: Text("Blue Skin & Stomach\nCare",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                          //    ),
                          //    Padding(
                          //      padding: const EdgeInsets.only(top:172.0,left: 15),
                          //      child: Row(
                          //       children: [
                          //         Icon(Icons.star_border_outlined,color: Colors.amber,),
                          //         Text(" 5.0 (345)"),
                          //       ],
                              
                          //      ),
                               
                          //    ),
                             Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Blue Skin & Stomach\nCare",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 5.0 (345)"),
                                  ),
                                ],
                              
                               ),
                               
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$32.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: Icon(Icons.add,color: Colors.white,),
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                       Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Image.asset("assets/images/login.png"),
                             
                              ],
                            ),
                          ),
                          //  Container(
                          //     width: 100,
                          //     height: 30,
                          //     color: Colors.yellow,
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(top:4.0,left: 10),
                          //       child: Text("20% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //     ),
                          //    ),
                           Padding(
                             padding: const EdgeInsets.only(top:25.0),
                             child: Container(
                                width: 80,
                                height: 30,
                                color: Colors.yellow,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:4.0,left: 5),
                                  child: Text("25% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                               ),
                           ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:135.0,left:20),
                            //    child: Text("Nature's Diet With\nChicken",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            //  ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:172.0,left: 15),
                            //    child: Row(
                            //     children: [
                            //       Icon(Icons.star_border_outlined,color: Colors.amber,),
                            //       Text(" 4.8 (4.3k)"),
                            //     ],
                              
                            //    ),
                               
                            //  ),
                             Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Nature's Diet With\nChicken",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 4.8 (4.3k)"),
                                  ),
                                ],
                              
                               ),
                               
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$44.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: Icon(Icons.add,color: Colors.white,),
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                        Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Image.asset("assets/images/login.png"),
                             
                              ],
                            ),
                          ),
                          //  Container(
                          //     width: 100,
                          //     height: 30,
                          //     color: Colors.yellow,
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(top:4.0,left: 10),
                          //       child: Text("20% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //     ),
                          //    ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:135.0,left:20),
                            //    child: Text("Freedom Gain Free\nBlue Buffalo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            //  ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:172.0,left: 15),
                            //    child: Row(
                            //     children: [
                            //       Icon(Icons.star_border_outlined,color: Colors.amber,),
                            //       Text(" 4.9 (1.9k)"),
                            //     ],
                              
                            //    ),
                               
                            //  ),
                             Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Freedom Gain Free\nBlue Buffalo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 4.9 (1.9k)"),
                                  ),
                                ],
                              
                               ),
                               
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$24.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: Icon(Icons.add,color: Colors.white,),
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                        Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/login.png"),
                                ),
                             
                              ],
                            ),
                          ),
                          //  Padding(
                          //    padding: const EdgeInsets.only(top:28.0,right:10),
                          //    child: Container(
                          //       width: 80,
                          //       height: 30,
                          //       color: Colors.yellow,
                          //       child: Padding(
                          //         padding: const EdgeInsets.only(top:4.0,left: 5),
                          //         child: Text("20% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //       ),
                          //      ),
                           //),
                           
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:135.0,left:20),
                            //    child: Text("Chicken & Green Pea\nRecipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            //  ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:172.0,left: 15),
                            //    child: Row(
                            //     children: [
                            //       Icon(Icons.star_border_outlined,),
                            //       Text(" 4.8 (2.2k)"),
                            //     ],
                              
                            //    ),
                               
                            //  ),
                             Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Chicken & Green Pea\nRecipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 4.8 (2.2k)"),
                                  ),
                                ],
                              
                               ),
                               
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$28.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: Icon(Icons.add,color: Colors.white,),
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                        Stack(
                          children:[

                           Container(
                            
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                            ),
                            
                          
                            child: Column(
                              children: [
                                Image.asset("assets/images/login.png"),
                             
                              ],
                            ),
                          ),
                          //  Positioned(
                          //   right:0,
                          
                          //    child: Container(
                          //       width: 100,
                          //       height: 30,
                          //       color: Colors.yellow,
                          //       child: Padding(
                          //         padding: const EdgeInsets.only(top:4.0,left: 10),
                          //         child: Text("20% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          //       ),
                          //      ),
                          //  ),
                           Padding(
                             padding: const EdgeInsets.only(top:25.0),
                             child: Container(
                                width: 80,
                                height: 30,
                               
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                   color: Colors.yellow,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:4.0,left: 5),
                                  child: Text("25% OFF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  
                                ),
                               ),
                           ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:135.0,left:20),
                            //    child: Text("Chicken & Green Pea\nRecipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            //  ),
                            //  Padding(
                            //    padding: const EdgeInsets.only(top:172.0,left: 15),
                            //    child: Row(
                            //     children: [
                            //       Icon(Icons.star_border_outlined),
                            //       Text(" 4.8 (2.2k)"),
                            //     ],
                              
                            //    ),
                               
                            //  ),
                           Padding(
                               padding: const EdgeInsets.only(top:200.0,left:20),
                               child: Text("Chicken & Green Pea\nRecipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:237.0,left: 15),
                               child: Row(
                                children: [
                                  Icon(Icons.star_border_outlined,color: Colors.amber,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(" 4.8 (2.2k)"),
                                  ),
                                ],
                              
                               ),
                               
                             ), 
                             Padding(
                               padding: const EdgeInsets.only(top:250.0,left: 20),
                               child: Row(
                                 children: [
                                   Text("\$28.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 55.0,bottom: 5),
                                     child: Stack(
                                       children:[
                                         CircleAvatar(
                                        backgroundColor: Colors.deepOrange,
                                        child: Icon(Icons.add,color: Colors.white,),
                                       ),
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



