import 'package:flutter/material.dart';
import 'package:flutter_daily_ui_challenges/LoginSignUPForms/1/utils/colors.dart';
import 'package:flutter_daily_ui_challenges/LoginSignUPForms/1/pages/b.dart';
import 'dart:math' as math;
import 'dart:convert';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    double appWidth = MediaQuery.of(context).size.width;
    double appHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColors.color1.withOpacity(0.5),
      body: Stack(
        children: <Widget>[
          Positioned(
            // top: -appHeigth/30,
            // right: appHeigth/2,
            left: -appWidth / 2,
            // bottom: 0.0 ,
            child: Container(
              height: 300.0,
              width: 450.0,
              color: Colors.transparent,
              child: Transform.rotate(
                angle: -45 * math.pi / 180,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                ),
              ),
            ),
          ),

          
          
          Positioned(
            top: 150,
            right: 50,
            left: 50,
            // bottom: 0.0 ,
            child: Container(
              height: 372.0,
              width: 450.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            ),
          ),

         
          
          Positioned(
            top: 150,
            right: 52,
            left: 52,
            // bottom: 0.0 ,
            child: Container(
              height: 370.0,
              width: 450.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("CREATE NEW", style: TextStyle(color: Colors.grey)),
                    )),
              ),
            ),
          ),

          Positioned(
            top: 130,
            right: 30,
            left: 30,
            // bottom: 0.0 ,
            child: Container(
              height: 350.0,
              width: 450.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
              ),
            ),
          ),

          Positioned(
            top: appHeigth/1.1,
            // right: appHeigth/2,
            // left: -appWidth / 2,
            // bottom: appHeigth/200,
            child: Container(
              height: 300.0,
              width: 450.0,
              color: Colors.transparent,
              child: Transform.rotate(
                angle: -40 * math.pi / 180,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: SerializedForm() 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}






class SerializedFormBloc extends FormBloc<String, String> {
  final name = TextFieldBloc(
    name: 'name',
  );

  final gender = SelectFieldBloc(
    name: 'gender',
    items: ['male', 'female'],
  );

  final birthDate = InputFieldBloc<DateTime, Object>(
    name: 'birthDate',
    toJson: (value) => value.toUtc().toIso8601String(),
  );

  SerializedFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        name,
        gender,
        birthDate,
      ],
    );
  }

  @override
  void onSubmitting() async {
    emitSuccess(
      canSubmitAgain: true,
      successResponse: JsonEncoder.withIndent('    ').convert(
        state.toJson(),
      ),
    );
  }
}

class SerializedForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SerializedFormBloc(),
      child: Builder(
        builder: (context) {
          final formBloc = context.bloc<SerializedFormBloc>();

          return Theme(
            data: Theme.of(context).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(title: Text('Serialized Form')),
              floatingActionButton: FloatingActionButton(
                onPressed: formBloc.submit,
                child: Icon(Icons.send),
              ),
              body: FormBlocListener<SerializedFormBloc, String, String>(
                onSuccess: (context, state) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(state.successResponse),
                    duration: Duration(seconds: 2),
                  ));
                },
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.name,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.people),
                          ),
                        ),
                        RadioButtonGroupFieldBlocBuilder<String>(
                          selectFieldBloc: formBloc.gender,
                          itemBuilder: (context, value) =>
                              value[0].toUpperCase() + value.substring(1),
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            prefixIcon: SizedBox(),
                          ),
                        ),
                        DateTimeFieldBlocBuilder(
                          dateTimeFieldBloc: formBloc.birthDate,
                          format: DateFormat('dd-mm-yyyy'),
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                          decoration: InputDecoration(
                            labelText: 'Date of Birth',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  static void show(BuildContext context, {Key key}) => showDialog<void>(
        context: context,
        useRootNavigator: false,
        barrierDismissible: false,
        builder: (_) => LoadingDialog(key: key),
      ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));

  static void hide(BuildContext context) => Navigator.pop(context);

  LoadingDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          child: Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(12.0),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  SuccessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.tag_faces, size: 100),
            SizedBox(height: 10),
            Text(
              'Success',
              style: TextStyle(fontSize: 54, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            RaisedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => SerializedForm())),
              icon: Icon(Icons.replay),
              label: Text('AGAIN'),
            ),
          ],
        ),
      ),
    );
  }
}











