part of 'profile_user_bloc.dart';

abstract class ProfileUserState extends Equatable {
  const ProfileUserState();

  @override
  List<Object> get props => [];
}

class ProfileUserInitial extends ProfileUserState {}

class ProfileError extends ProfileUserState {
  final String error;

  const ProfileError(this.error);

  @override
  List<Object> get props => [error];
}

class ProfileLoading extends ProfileUserState {
  @override
  List<Object> get props => [];
}

// class ProfileLoaded extends ProfileUserState {
//   List<ProductModel> mydata;

//   ProfileLoaded(this.mydata);

//   @override
//   List<Object> get props => [mydata];
// }
class ImageLoaded extends ProfileUserState {
  List<ImagePostModel> myImage;

  ImageLoaded(this.myImage);

  @override
  List<Object> get props => [myImage];
}