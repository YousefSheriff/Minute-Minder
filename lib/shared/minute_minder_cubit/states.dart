

import 'package:minute_minder/models/send_query/send_query_model.dart';

abstract class MinuteMinderAppStates{}

class AppInitialState extends MinuteMinderAppStates{}

class AppChangeTabBarItemsState extends MinuteMinderAppStates{}

class AppChangePlayingModeState extends MinuteMinderAppStates{}

class MinuteMinderGetUserNameLoadingState extends MinuteMinderAppStates{}

class MinuteMinderGetUserNameSuccessState extends MinuteMinderAppStates
{
  final String userName;

  MinuteMinderGetUserNameSuccessState(this.userName);

}

class MinuteMinderGetUserNameErrorState extends MinuteMinderAppStates
{
  final String error ;

  MinuteMinderGetUserNameErrorState(this.error);

}

class MinuteMinderProfileImagePickedSuccessState extends MinuteMinderAppStates{}

class MinuteMinderProfileImagePickedErrorState extends MinuteMinderAppStates{}

class MinuteSendQueryLoadingState extends MinuteMinderAppStates{}

class MinuteSendQuerySuccessState extends MinuteMinderAppStates
{
  final String messageModel;

  MinuteSendQuerySuccessState(this.messageModel);
}

class MinuteSendQueryErrorState extends MinuteMinderAppStates
{
  final String error;

  MinuteSendQueryErrorState(this.error);

}


class InitialMinuteMinderState extends MinuteMinderAppStates {}

class NewMessageState extends MinuteMinderAppStates {}

class MinuteMinderVideoPositionChangedState extends MinuteMinderAppStates {}
