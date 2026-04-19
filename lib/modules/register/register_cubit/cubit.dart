import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minute_minder/models/user_create/user_create_model.dart';
import 'package:minute_minder/modules/register/register_cubit/states.dart';
import 'package:minute_minder/shared/components/constant.dart';

class MinuteMinderRegisterCubit extends Cubit<MinuteMinderRegisterStates> {
  MinuteMinderRegisterCubit() : super(MinuteMinderRegisterInitialState());

  static MinuteMinderRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) {
    emit(MinuteMinderRegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password,)
        .then((value){
          print(value.user!.email);
          print(value.user!.uid);
          userCreate(
            name: name,
            email: email,
            phone: phone,
            uId: value.user!.uid,
          );
          emit(MinuteMinderRegisterSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(MinuteMinderRegisterErrorState(error.toString()));
    });
  }


  void userCreate({
    required String name,
    required String email,
    required String phone,
    required String uId,
  }) {
    UserModel model = UserModel(
      name: name,
      email: email,
      phone: phone,
      uId: uId,
      image: 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Unknown_person.jpg',
    );

    FirebaseFirestore.instance.collection('users').doc(uId).set(model.toMap()).then((value)
    {

      emit(MinuteMinderCreateUserSuccessState(uId));
    }).catchError((error) {
      print(error.toString());
      emit(MinuteMinderCreateUserErrorState(error.toString()));
    });
  }




  IconData suffix = Icons.visibility_outlined;

  bool isPassword = true;

  void changeEyeIcon() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(MinuteMinderRegisterChangeEyeIconState());
  }
}
