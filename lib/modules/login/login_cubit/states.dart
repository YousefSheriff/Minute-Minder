
abstract class MinuteMinderLoginStates {}

class MinuteMinderLoginInitialState extends MinuteMinderLoginStates{}

class MinuteMinderLoginLoadingState extends MinuteMinderLoginStates{}

class MinuteMinderLoginSuccessState extends MinuteMinderLoginStates
{
  final String uId ;

  MinuteMinderLoginSuccessState(this.uId);
}

class MinuteMinderLoginErrorState extends MinuteMinderLoginStates
{
  final String error ;

  MinuteMinderLoginErrorState(this.error);
}

class MinuteMinderLoginChangeEyeIconState extends MinuteMinderLoginStates{}
