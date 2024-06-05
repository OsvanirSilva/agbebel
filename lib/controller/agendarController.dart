
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../view/util.dart';
import 'package:agbebel/model/agendar.dart';

class AgendarController{

  void adicionar(context, Agendar a){
    FirebaseFirestore.instance.collection('agendamento')
      .add(a.toJson())
      .then((value) => sucesso(context,'Agendamento criado com sucesso!'))
      .catchError((e) => erro(context,'Não foi possível agendar.'))
      .whenComplete(() => Navigator.pop(context));
  }

  //
  // Recuperar todas as tarefas do usuário que está logado
  //
  listar(){
    return FirebaseFirestore.instance.collection('agendamento')
      .where('uid', isEqualTo: LoginController().idUsuario());
  }

  //
  // ATUALIZAR
  //
  void atualizar(context,id,Agendar a){    
    FirebaseFirestore.instance.collection('agendamento')
    .doc(id)
    .update(a.toJson())
    .then((value) => sucesso(context,'Agendamento atualizada com sucesso!'))
    .catchError((e) => erro(context,'Não foi possível atualizar o agendamento.'))
    .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  // 
  void excluir(context,id){    
    FirebaseFirestore.instance.collection('agendamento')
    .doc(id)
    .delete()
    .then((value) => sucesso(context,'Agendamento excluído com sucesso!'))
    .catchError((e) => erro(context,'Não foi possível excluir o agendamento.'));
  }

}