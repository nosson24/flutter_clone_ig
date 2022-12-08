part of 'profile_user_bloc.dart';

abstract class ProfileUserEvent extends Equatable {
  const ProfileUserEvent();

  @override
  List<Object> get props => [];
}

// class GetData extends ProfileUserEvent {
//   const GetData();
  
// }
class GetImage extends ProfileUserEvent{
  const GetImage();
}