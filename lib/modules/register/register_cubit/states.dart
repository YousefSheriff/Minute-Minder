
abstract class MinuteMinderRegisterStates {}

class MinuteMinderRegisterInitialState extends MinuteMinderRegisterStates{}

class MinuteMinderRegisterLoadingState extends MinuteMinderRegisterStates{}

class MinuteMinderRegisterSuccessState extends MinuteMinderRegisterStates {}

class MinuteMinderRegisterErrorState extends MinuteMinderRegisterStates
{
  final String error ;

  MinuteMinderRegisterErrorState(this.error);
}

class MinuteMinderCreateUserSuccessState extends MinuteMinderRegisterStates
{
  final String uId ;

  MinuteMinderCreateUserSuccessState(this.uId);
}

class MinuteMinderCreateUserErrorState extends MinuteMinderRegisterStates
{
  final String error ;

  MinuteMinderCreateUserErrorState(this.error);
}

class MinuteMinderRegisterChangeEyeIconState extends MinuteMinderRegisterStates{}



