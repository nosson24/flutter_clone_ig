import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/profile_page/bloc/profile_user_bloc.dart';
import 'package:flutter_application_ig/pages/profile_page/model/image_ispost_model.dart';
import 'package:flutter_application_ig/pages/search_page/widget/explore_grid/explore_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static const id = 'tasks_screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileUserBloc>(context).add(const GetImage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.search,
                color: Colors.black54,
              ),
              const SizedBox(
                width: 4,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const TextField(
                  autofocus: false,

                  // controller: titleText,
                  decoration: InputDecoration(
                    hintText: 'ค้นหา',
                    counterText: "",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const ExploreGrid(),
      //   StreamBuilder(
      //     stream: FirebaseFirestore.instance.collection("ListImage").snapshots(),
      //     builder: (context, AsyncSnapshot<QuerySnapshot> snapshots) {
      //       if (!snapshots.hasData) {
      //         return const Center(
      //           child: SizedBox(
      //             width: 50,
      //             height: 50,
      //             child: CircularProgressIndicator(),
      //           ),
      //         );
      //       }
      //       return ListView.builder(
      //         itemCount: snapshots.data?.docs.length,
      //         itemBuilder: (BuildContext context, int index) {
      //           DocumentSnapshot documentSnapshot = snapshots.data!.docs[index];
      //           return Container(
      //             margin: const EdgeInsets.only(
      //               bottom: 10,
      //               right: 10,
      //               left: 10,
      //             ),
      //             child: Image.network(
      //               documentSnapshot['image'],
      //               fit: BoxFit.scaleDown,
      //             ),
      //           );
      //         },
      //       );
      //     },
      //   ),
      // );
    );
  }
}
