import 'package:flutter/material.dart';
import 'package:flutter_application_ig/pages/profile_page/bloc/profile_user_bloc.dart';
import 'package:flutter_application_ig/pages/profile_page/model/image_ispost_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        if (state is ImageLoaded) {
          List<ImagePostModel> data = state.myImage;
          return GridView.builder(
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.network(data[index].image),
              );
            },
          );
        } else if (state is ProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container(
            height: 300,
            color: Colors.grey[300],
          );
        }
      },
    );
  }
}
