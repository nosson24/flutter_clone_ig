
import 'package:equatable/equatable.dart';
import 'package:flutter_application_ig/pages/profile_page/model/image_ispost_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_ig/pages/profile_page/model/product_model.dart';
import 'package:flutter_application_ig/services/product_repos/product_repos.dart';

part 'profile_user_event.dart';
part 'profile_user_state.dart';

class ProfileUserBloc extends Bloc<ProfileUserEvent, ProfileUserState> {
  ProductRepositoy productRepositoy;
  ProfileUserBloc(
    {
    required this.productRepositoy,
  }
  ) : super(ProfileUserInitial()) {
    on<ProfileUserEvent>((event, emit) {
      // TODO: implement event handler
    });

    // on<GetData>(((event, emit) async {
    //   emit(ProfileLoading());
    //   await Future.delayed(const Duration(seconds: 1));
    //   try {
    //     final data = await productRepositoy.get();
    //     emit(ProfileLoaded(data));
    //   } catch (e) {
    //     emit(ProfileError(e.toString()));
    //   }
    // }));

        on<GetImage>(((event, emit) async {
      emit(ProfileLoading());
      await Future.delayed(const Duration(seconds: 1));
      try {
        final image = await productRepositoy.getImage();
        emit(ImageLoaded(image));
      } catch (e) {
        emit(ProfileError(e.toString()));
      }
    }));
  }
}
