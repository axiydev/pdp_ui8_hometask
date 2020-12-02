import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  bool isWhite=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:isWhite?Colors.grey[300]:Colors.grey[600],
      appBar:AppBar(
        //#facebook
        title:Text('facebook',style:TextStyle(fontSize:28,color:Colors.blue,fontWeight:FontWeight.bold),),
        centerTitle:false,
        backgroundColor:isWhite?Colors.white:Colors.black,
        elevation:0.0,
        bottomOpacity:0.0,
        actions:[
          //#animatedContainer button
          Padding(
            padding:EdgeInsets.symmetric(vertical:15),
            child:GestureDetector(
              child:Container(
              padding:EdgeInsets.all(2),
              height:10,
              width:40,
              decoration:BoxDecoration(
                color:isWhite?Colors.white:Colors.black,
                borderRadius:BorderRadius.circular(15),
                border:Border.all(
                  color:isWhite?Colors.black:Colors.white,
                  width:2,
                ),
              ),
              child:Align(
                alignment:isWhite?Alignment.centerLeft:Alignment.centerRight,
                  child:AnimatedContainer(
                    duration:Duration(milliseconds:200),
                    curve:Curves.easeIn,
                    height:20,
                    width:20,
                    decoration:BoxDecoration(
                      color:isWhite?Colors.black:Colors.white,
                      shape:BoxShape.circle,
                    ),
                  ),
                ),
              ),
              onTap:(){
                setState((){
                  if(isWhite){
                    isWhite=false;
                  }
                  else{
                    isWhite=true;
                  }
                });
              },
            ),
          ),
          //#searh button
          IconButton(
            icon:Icon(Icons.search,size:28),
            onPressed:(){},
            color:isWhite?Colors.grey[700]:Colors.grey[300],
          ),
          //#camera button
          IconButton(
            icon:Icon(Icons.camera_alt,size:28),
            onPressed:(){},
            color:isWhite?Colors.grey[700]:Colors.grey[300],
          ),
        ],
      ),
      body:ListView(
        children:[
          //#header
          Container(
            padding:EdgeInsets.all(10),
            height:120,
            color:isWhite?Colors.white:Colors.black,
            child:Column(
              children:[
                Expanded(
                  child:Row(
                    children:[
                      //#user img
                      Container(
                        height:45,
                        width:45,
                        decoration:BoxDecoration(
                          shape:BoxShape.circle,
                          border:Border.all(width: 1,color:Colors.grey[800]),
                          image:DecorationImage(
                            image:AssetImage('assets/images/user_5.jpeg'),
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width:10),
                      //#textfield
                      Expanded(
                        child:Container(
                          height:45,
                          decoration:BoxDecoration(
                            color:isWhite?Colors.white:Colors.black,
                            border:Border.all(color:isWhite?Colors.grey:Colors.grey[400],width:1),
                            borderRadius:BorderRadius.circular(25),
                          ),
                          child:TextField(
                            decoration:InputDecoration(
                              contentPadding:EdgeInsets.only(left:15),
                              hintText:'What\'s on your mind?',
                              hintStyle:TextStyle(color:isWhite?Colors.grey[600]:Colors.grey[400],fontSize:17),
                              border:InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:10),
                //#sectors
                Expanded(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      //#live
                      Expanded(
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                IconButton(
                                  icon:Icon(Icons.video_call),
                                  color:Colors.red,
                                  onPressed:(){},
                                ),
                                Text('Live',style:TextStyle(color:isWhite?Colors.grey[700]:Colors.grey[500],fontSize:16),),
                              ],
                          ),
                      ),
                      Container(width:1,color:isWhite?Colors.grey[400]:Colors.white,margin:EdgeInsets.only(top:8,bottom:8)),
                      //#photo
                      Expanded(
                        child:Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            IconButton(
                              icon:Icon(Icons.image,),
                              color:Colors.green,
                              onPressed:(){},
                            ),
                            Text('Photo',style:TextStyle(color:isWhite?Colors.grey[700]:Colors.grey[500],fontSize:16),),
                          ],
                        ),
                      ),
                      SizedBox(width:1,child:Container(margin:EdgeInsets.only(top:8,bottom:8),color:isWhite?Colors.grey[400]:Colors.white,)),
                      //#chech in
                      Expanded(
                        child:Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            IconButton(
                              icon:Icon(Icons.location_on_rounded,),
                              color:Colors.red,
                              onPressed:(){},
                            ),
                            Text('Check in',style:TextStyle(color:isWhite?Colors.grey[700]:Colors.grey[500],fontSize:16),),
                          ],
                        ),
                      ),
                      SizedBox(width:10),
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
            color:isWhite?Colors.white:Colors.black,
            child:ListView(
              scrollDirection:Axis.horizontal,
              children:[
                //#user stories
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
          //#user posts
          _makePost(
            userImg:'assets/images/user_2.jpeg',
            postImg1:'assets/images/story_2.jpeg',
            postImg2:'assets/images/story_4.jpeg',
            userNme:'User Two',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_1.jpeg',
            postImg1:'assets/images/feed_1.jpeg',
            postImg2:'assets/images/story_1.jpeg',
            userNme:'User One',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_3.jpeg',
            postImg1:'assets/images/feed_3.jpeg',
            postImg2:'assets/images/story_3.jpeg',
            userNme:'User Three',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_4.jpeg',
            postImg1:'assets/images/feed_4.jpeg',
            postImg2:'assets/images/story_2.jpeg',
            userNme:'User Four',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
          _makePost(
            userImg:'assets/images/user_5.jpeg',
            postImg1:'assets/images/feed_5.jpeg',
            postImg2:'assets/images/story_5.jpeg',
            userNme:'User Five',
            userTxt:'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
          ),
        ],
      ),
    );
  }
  //#story
  Widget _makeStory({String userImg,String storyImg,String storyText,}){
    return AspectRatio(
      aspectRatio:1.4/2,
      child:Container(
        margin:EdgeInsets.only(right:10),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          color:Colors.green,
          image:DecorationImage(
            image:AssetImage(storyImg),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(10),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                isWhite?Colors.black.withOpacity(0.9):Colors.white.withOpacity(0.03),
                isWhite?Colors.black.withOpacity(0.2):Colors.white.withOpacity(0.04),
                isWhite?Colors.black.withOpacity(0.13):Colors.white.withOpacity(0.001),
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
                  decoration:BoxDecoration(
                    shape:BoxShape.circle,
                    border:Border.all(width: 2.2,color:Colors.blue,),
                    image:DecorationImage(
                      image:AssetImage(userImg),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
              Text(storyText,style:TextStyle(color:Colors.white,fontWeight:FontWeight.w400,fontSize:17),),
            ],
          ),
        ),
      ),
    );
  }
  //#post
  Widget _makePost({userImg,postImg1,postImg2,userNme,userTxt}){
    return Container(
      margin:EdgeInsets.only(top:10),
      color:isWhite?Colors.white:Colors.black,
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
                          Text(userNme,style:TextStyle(color:isWhite?Colors.black:Colors.grey[400],fontWeight:FontWeight.bold,fontSize:19,letterSpacing: 1),),
                          Text('1 hr ago',style:TextStyle(color:Colors.grey,fontSize:16),),
                        ],
                      ),
                    ),
                  ] ,
                ),
                IconButton(
                  icon:Icon(Icons.more_horiz,size:27),
                  color:isWhite?Colors.grey[700]:Colors.grey,
                  onPressed:(){},

                ),
              ],
            ),
          ),
          SizedBox(height:20),
          //#sentence
          Container(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child:Text(userTxt,style:TextStyle(color:isWhite?Colors.grey[700]:Colors.grey,height:1.2,letterSpacing: 1,fontSize:15,)),
          ),
          SizedBox(height:20),
          //#post img
          Container(
            height:240,
            child:Row(
              children:[
                Expanded(
                  child:Container(
                    height: double.infinity,
                    width:double.infinity,
                    child:Image(
                      image:AssetImage(postImg1),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child:Container(
                    height: double.infinity,
                    width:double.infinity,
                    child:Image(
                      image:AssetImage(postImg2),
                      fit:BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height:20),
          //#like and favourite
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
  //#like icon
  Widget makeLike(){
    return Container(
      height:25,
      width:25,
      decoration:BoxDecoration(
        border:Border.all(width:1,color:Colors.white),
        color:Colors.blue,
        shape:BoxShape.circle,
      ),
      child:Center(
        child:Icon(Icons.thumb_up_alt,color:Colors.white,size:15),
      ),
    );
  }
  //#love icon
  Widget makeLove(){
    return Container(
      height:25,
      width:25,
      decoration:BoxDecoration(
        border:Border.all(width:1,color:Colors.white),
        color:Colors.red,
        shape:BoxShape.circle,
      ),
      child:Center(
        child:Icon(Icons.favorite,color:Colors.white,size:15),
      ),
    );
  }
  //#likebutton
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
 //#comment button
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
 //#share button
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