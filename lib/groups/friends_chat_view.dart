import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:we_live_chat_app/groups/addgroups/add_chatfriends.dart';
import 'package:we_live_chat_app/groups/friends_info.dart';
import 'package:we_live_chat_app/groups/friendschat.dart';

class GroupChatHomeScreen extends StatefulWidget {
  const GroupChatHomeScreen({Key? key}) : super(key: key);

  @override
  _GroupChatHomeScreenState createState() => _GroupChatHomeScreenState();
}

class _GroupChatHomeScreenState extends State<GroupChatHomeScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isLoading = true;

  List groupList = [];

  @override
  void initState() {
    super.initState();
    getAvailableGroups();
  }

  void getAvailableGroups() async {
    String uid = _auth.currentUser!.uid;

    await _firestore
        .collection('users')
        .doc(uid)
        .collection('groups')
        .get()
        .then((value) {
      setState(() {
        groupList = value.docs;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF701ebd),
            Color(0xFF873bcc),
            Color(0xFFfe4a97),
            Color(0xFFe17763),
            Color(0xFF68998c),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Groups"),
        ),
        body: isLoading
            ? Container(
                height: size.height,
                width: size.width,
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: groupList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => GroupChatRoom(
                          groupName: groupList[index]['name'],
                          groupChatId: groupList[index]['id'],
                        ),
                      ),
                    ),
                    leading: Icon(Icons.group),
                    title: Text(groupList[index]['name']),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddMembersInGroup(),
            ),
          ),
          tooltip: "Create Group",
        ),
      ),
    );
  }
}
