import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/presentation/login/loginscreen.dart';
import 'package:movie_app/values/colors.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  void logout(){
    print('logout');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(height: 0),
        itemCount: 6,
        itemBuilder:(context, index) {
            if(index == 0){
              return Ink(
                color: colorMenuProfile,
                child: ListTile(
                  title: Container(
                    child: 
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            size: 22,
                            color: Colors.red,
                          ),
                          SizedBox(width: 20,),
                          Text('Language',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Text('English',style: TextStyle(color: Colors.red),textAlign: TextAlign.end,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: (){
                    print('Language');
                  },
                ),
              );
            }if(index == 1){
              return 
                Ink(
                  color: colorMenuProfile,
                  child: 
                    ListTile(
                      title: Container(
                      child: 
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone_android,
                                size: 22,
                                color: Colors.red,
                              ),
                              SizedBox(width: 20,),
                              Text('Phone Number',style: TextStyle(color: Colors.white),),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Text('Add',style: TextStyle(color: Colors.red),textAlign: TextAlign.end,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        print('Phone Number');
                      },
                    ),
                );
            }else if(index == 2){
              return 
                Ink(
                  color: colorMenuProfile,
                  child: 
                    ListTile(
                      title: Container(
                      child: 
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.notifications_on,
                                size: 22,
                                color: Colors.red,
                              ),
                              SizedBox(width: 20,),
                              Text('Notifications',style: TextStyle(color: Colors.white),),
                              SizedBox(width: 20,),
                              Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: 
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        print('Notifications');
                      },
                    ),
                );
            }else if(index == 3){
              return 
                Ink(
                  color: colorMenuProfile,
                  child: 
                    ListTile(
                      title: Container(
                      child: 
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shield_outlined,
                                size: 22,
                                color: Colors.red,
                              ),
                              SizedBox(width: 20,),
                              Text('Privacy Settings',style: TextStyle(color: Colors.white),),
                              SizedBox(width: 20,),
                              Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: 
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        print('Privacy Setting');
                      },
                    ),
                );
            }else if(index == 4){
              return 
                Ink(
                  color: colorMenuProfile,
                  child: 
                    ListTile(
                      title: Container(
                      child: 
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.message_rounded,
                                size: 22,
                                color: Colors.red,
                              ),
                              SizedBox(width: 20,),
                              Text('Contact Supports',style: TextStyle(color: Colors.white),),
                              SizedBox(width: 20,),
                              Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: 
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        print('Contact Supports');
                      },
                    ),
                );
            }else{
              return 
                Ink(
                  color: colorMenuProfile,
                  child: 
                    ListTile(
                    title: Container(
                    child: 
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              size: 22,
                              color: Colors.red,
                            ),
                            SizedBox(width: 20,),
                            Text('Log Out',style: TextStyle(color: Colors.white),),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: 
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 22,
                                    color: Colors.red,
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)  => LoginScreen())
                      );
                    },
                  ),
              );
          }
        }),
    );
  }
}