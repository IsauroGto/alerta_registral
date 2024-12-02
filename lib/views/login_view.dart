import 'package:alerta_registral/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController con = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 120,
        child: _imageGtoLogo(),
      ),
      body: Stack(
        children: [
          _backgroundColor(context),
          _boxForm(context),
          Column(
            children: [
              _imageAppLogo(),
              //_textAppName(),
            ],
          ),
          //_imageGtoLogo(),
        ],
      ),
    );
  }

  Widget _backgroundColor(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: HexColor('#004B87'),
    );
  }

  /*Widget _textAppName() {
    return const Text(
      'Alerta Registral',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }*/
  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.33,
        left: 30,
        right: 30,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0, 0.75),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textLoginForm(),
            _textFieldUser(),
            _textFieldPassword(),
            _buttonLogin(),
            _textRecoverAndRegister(),
          ],
        ),
      ),
    );
  }

  Widget _textLoginForm() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
        bottom: 40,
      ),
      child: Text(
        'Ingreso al sistema',
        style: TextStyle(
          color: HexColor('#004B87'),
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _textFieldUser() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'correo electrónico',
          prefixIcon: Icon(Icons.email),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'contraseña',
          prefixIcon: Icon(Icons.lock),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: ElevatedButton(
        onPressed: () {}, 
        child: const Text(
          'Ingresar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        ),
    );
  }

  Widget _textRecoverAndRegister() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            //onTap: () => con.goToRegisterView(),
            child: const Text(
              'Olvidé mi contraseña',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () => con.goToRegisterView(),
            child: const Text(
              'Registarse'
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageGtoLogo() {
      return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/gobierno_logo.png',
          width: 160,
        ),
      ),
    );
  }

  Widget _imageAppLogo() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 40, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/app_logo_blanco.png',
          width: 110,
        ),
      ),
    );
  }
}