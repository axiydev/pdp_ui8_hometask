import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.grey[300],
      appBar:AppBar(
        //facebook
        title:Text('facebook',style:TextStyle(fontSize:28,color:Colors.blue,fontWeight:FontWeight.bold),),
        centerTitle:false,
        backgroundColor:Colors.white,
        elevation:0.0,
        bottomOpacity:0.0,
        actions:[
          //searh button
          IconButton(
            icon:Icon(Icons.search,size:28),
            onPressed:(){},
            color:Colors.grey[700],
          ),
          //camera button
          IconButton(
            icon:Icon(Icons.camera_alt,size:28),
            onPressed:(){},
            color:Colors.grey[700],
          ),
        ],
      ),
      body:ListView(
        children:[
          //header
          Container(
            padding:EdgeInsets.all(10),
            height:120,
            color:Colors.white,
            child:Column(
              children:[
                Expanded(
                  child:Row(
                    children:[
                      //user img
                      Container(
                        height:45,
                        width:45,
                        decoration:BoxDecoration(
                          shape:BoxShape.circle,
                          image:DecorationImage(
                            image:AssetImage('assets/images/user_5.jpeg'),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width:10),
                      //textfield
                      Expanded(
                        child:Container(
                          height:45,
                          decoration:BoxDecoration(
                            color:Colors.white,
                            border:Border.all(color:Colors.grey,width:1),
                            borderRadius:BorderRadius.circular(25),
                          ),
                          child:TextField(
                            decoration:InputDecoration(
                              contentPadding:EdgeInsets.only(left:15),
                              hintText:'What\'s on your mind?',
                              hintStyle:TextStyle(color:Colors.grey[600],fontSize:17),
                              border:InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:10),
                //sectors
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      //live
                      Expanded(
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                IconButton(
                                  icon:Icon(Icons.video_call),
                                  color:Colors.red,
                                  onPressed:(){},
                                ),
                                Text('Live',style:TextStyle(color:Colors.grey[700],fontSize:16),),
                              ],
                          ),
                      ),
                      Container(width:1,color:Colors.grey[400],margin:EdgeInsets.only(top:8,bottom:8)),
                      //photo
                      Expanded(
                        child:Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            IconButton(
                              icon:Icon(Icons.image,),
                              color:Colors.green,
                              onPressed:(){},
                            ),
                            Text('Photo',style:TextStyle(color:Colors.grey[700],fontSize:16),),
                          ],
                        ),
                      ),
                      SizedBox(width:1,child:Container(margin:EdgeInsets.only(top:8,bottom:8),color:Colors.grey[400],)),
                      //chech in
                      Expanded(
                        child:Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            IconButton(
                              icon:Icon(Icons.location_on_rounded,),
                              color:Colors.red,
                              onPressed:(){},
                            ),
                            Text('Check in',style:TextStyle(color:Colors.grey[700],fontSize:16),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        //  #Stories
          Container(
            margin:EdgeInsets.only(top:10),
            padding:EdgeInsets.only(top:10,bottom:10,left:10),
            height:200,
            color:Colors.white,
            child:ListView(
              scrollDirection:Axis.horizontal,
              children:[
                _makeStory(
                  userImg:'assets/images/user_5.jpeg',
                  storyImg:'assets/images/story_5.jpeg',
                  storyText:'User Five',
                ),
                _makeStory(
                  userImg:'assets/images/user_4.jpeg',
                  storyImg:'assets/images/story_4.jpeg',
                  storyText:'User Four',
                ),
                _makeStory(
                  userImg:'assets/images/user_3.jpeg',
                  storyImg:'assets/images/story_3.jpeg',
                  storyText:'User Three',
                ),
                _makeStory(
                  userImg:'assets/images/user_2.jpeg',
                  storyImg:'assets/images/story_2.jpeg',
                  storyText:'User Two',
                ),
                _makeStory(
                  userImg:'assets/images/user_1.jpeg',
                  storyImg:'assets/images/story_1.jpeg',
                  storyText:'User One',
                ),
              ],
            ),
          ),
          //user posts
          _makePost(
            userImg:'assets/images/user_2.jpeg',
            postImg:'assets/images/story_2.jpeg',
            userNme:'User Two',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_1.jpeg',
            postImg:'assets/images/feed_1.jpeg',
            userNme:'User One',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_3.jpeg',
            postImg:'assets/images/feed_3.jpeg',
            userNme:'User Three',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_4.jpeg',
            postImg:'assets/images/feed_4.jpeg',
            userNme:'User Four',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_5.jpeg',
            postImg:'assets/images/feed_5.jpeg',
            userNme:'User Five',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
        ],
      ),
    );
  }
  Widget _makeStory({String userImg,String storyImg,String storyText,}){
    return AspectRatio(
      aspectRatio:1.4/2,
      child:Container(
        margin:EdgeInsets.only(right:10),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(17),
          color:Colors.green,
          image:DecorationImage(
            image:AssetImage(storyImg),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(10),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(17),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Container(
                height:40,
                width:40,
                padding:EdgeInsets.all(2),
                decoration:BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.blue,
                ),
                child:Container(
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    image:DecorationImage(
                      image:AssetImage(userImg),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(storyText,style:TextStyle(color:Colors.white,fontSize:17),),
            ],
          ),
        ),
      ),
    );
  }
  Widget _makePost({userImg,postImg,userNme,userTxt}){
    return Container(
      margin:EdgeInsets.only(top:10),
      color:Colors.white,
      child:Column(
        children:[
          Container(
            padding:EdgeInsets.only(left:10,right:10,top:10),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children:[
                    Container(
                      height:50,
                      width:50,
                      decoration:BoxDecoration(
                        shape:BoxShape.circle,
                        image:DecorationImage(
                          image:AssetImage(userImg),
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width:10),
                    Container(
                      child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                          Text(userNme,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:19,letterSpacing: 1),),
                          Text('1 hr ago',style:TextStyle(color:Colors.grey,fontSize:16),),
                        ],
                      ),
                    ),
                  ] ,
                ),
                IconButton(
                  icon:Icon(Icons.more_horiz,size:27),
                  color:Colors.grey[700],
                  onPressed:(){},

                ),
              ],
            ),
          ),
          SizedBox(height:20),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child:Text(userTxt,style:TextStyle(color:Colors.grey[700],height:1.2,letterSpacing: 1,fontSize:15,)),
          ),
          SizedBox(height:20),
          Container(
            height:240,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage(postImg),
                fit:BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height:20),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children:[
                    makeLike(),
                    Transform.translate(
                      offset:Offset(-5,0),
                      child:makeLove(),
                    ),
                    Text('2.5K',style:TextStyle(color:Colors.grey[600],fontSize:15),),
                  ],
                ),
                Text('400 Comments',style:TextStyle(color:Colors.grey[600],fontSize:15)),
              ],
            ),
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              _makeLikeButton(isActive:true,),
              _makeCommentButton(isActive:false),
              _makeShareButton(isActive:false),
            ],
          ),
        ],
      ),
    );
  }
  //like icon
  Widget makeLike(){
    return Container(
      height:25,
      width:25,
      decoration:BoxDecoration(
        color:Colors.blue,
        shape:BoxShape.circle,
      ),
      child:Center(
        child:Icon(Icons.thumb_up_alt,color:Colors.white,size:15),
      ),
    );
  }
  //love icon
  Widget makeLove(){
    return Container(
      height:25,
      width:25,
      decoration:BoxDecoration(
        color:Colors.red,
        shape:BoxShape.circle,
      ),
      child:Center(
        child:Icon(Icons.favorite,color:Colors.white,size:15),
      ),
    );
  }
  //likebutton
  Widget _makeLikeButton({bool isActive}){
  return Container(
      margin:EdgeInsets.only(left: 10),
      child:Row(
        children:[
          IconButton(
            icon:Icon(Icons.thumb_up,size:20),
            color:isActive?Colors.blue:Colors.grey,
            onPressed:(){},
          ),
          Text('Like',style:TextStyle(color:isActive?Colors.blue:Colors.grey,fontSize:16),),
        ],
      ),
  );
 }
 //comment button
 Widget _makeCommentButton({bool isActive}){
    return Container(
        child:Row(
          children:[
            IconButton(
              icon:Icon(Icons.comment,size:20),
              color:isActive?Colors.blue:Colors.grey,
              onPressed:(){},
            ),
            Text('Comment',style:TextStyle(color:isActive?Colors.blue:Colors.grey,fontSize:16)),
          ],
        ),
    );
 }
 //share button
 Widget _makeShareButton({bool isActive}){
    return Container(
      margin:EdgeInsets.only(right:10),
        child:Row(
          children:[
            IconButton(
              icon:Icon(Icons.share,size:20),
              color:isActive?Colors.blue:Colors.grey,
              onPressed:(){},
            ),
            Text('Share',style:TextStyle(color:isActive?Colors.blue:Colors.grey,fontSize:16)),
          ],
        ),
    );
 }
}