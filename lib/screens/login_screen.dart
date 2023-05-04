import 'package:flutter/material.dart';
import 'main_page.dart';
class LoginPage extends StatefulWidget
{
	const LoginPage({Key? key}) : super(key: key);

	 @override
  	State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{
  	//Essa GlobalKey é usada para dar uma identificação pro
  	//	formulario em especifico e validar os inputs
  	final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  	//Atribuindo a estilização de um botão a uma variavel(?)
		final ButtonStyle btnStyle = ElevatedButton.styleFrom(
			  onPrimary: Colors.white,
	    	primary: Colors.deepPurple[800],
	    	minimumSize: Size.fromHeight(55),//fromHeight: o width será infinito e o Height dinamico
	    	textStyle: TextStyle(fontSize: 15),

	    	//Mexendo com a borda do botão de login
	    	shape: RoundedRectangleBorder(
	    		borderRadius: BorderRadius.circular(50),
	    	),
    );

	  /**
		 * Campos para o login
	  **/
	  String username = "admin";
	  String password = "admin";

	  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(

    	width: double.infinity,

    	height: double.infinity,

    	//Para usar o Padding é necessario o Widget EdgeInsets()
    	padding: EdgeInsets.all(30.7),

    	child: Column(

    		mainAxisAlignment: MainAxisAlignment.center,

    		crossAxisAlignment: CrossAxisAlignment.center,
    		
    		children: <Widget>[

    			Image.asset('images/login_logo.png',width: 200,height: 150),

    			Text('Quero ser famoso...',style:TextStyle(color: Colors.grey)),

    			//Widget de um formulario no Flutter
    			Form(
    				key: _formKey,//A identificaçao

    				child: Column( 

    					children: <Widget>[

	    					TextFormField(
		    					decoration: InputDecoration(
		    						icon: Icon(Icons.person),
		    						labelText: 'Name *',
		    						hintText: 'Enter your email',

		    					),
		    					validator: (String? value){

		    						if(value == null || value.isEmpty)
		    							return 'Username is required';
		    						else if(value != username)
		    							return 'Incorrect Username or Password';
		    					},
    						),

	    					//Espaço entre os inputs
    						SizedBox(height: 20),
    						
    						TextFormField(

	    						obscureText: true, //Ocultado o texto para o password
									enableSuggestions: false, //Esse aki vai impedir de apareça as palavras de sugestao
									autocorrect: false, //Desabilita o corretor automatico
									//obscuringCharacter: "*",//Charactere que vai ocultar a senha

    							decoration: InputDecoration(
    								icon: Icon(Icons.person),
		    						labelText: 'Password *',
		    						hintText: 'Enter your password',
		    					),

		    					validator: (String? value){
		    						if(value == null || value.isEmpty)
		    							return 'Password is required';
		    						else if(value != username)
		    							return 'Incorrect Username or Password';
		    					},
    						),

    						SizedBox(height: 5),

    						Row(
    							mainAxisAlignment: MainAxisAlignment.start,
	    						children: <Widget>[ 
		    						Checkbox(
		    							value: isChecked,
		    							//checkColor: Colors.white,//Cor do cértinho
		    							onChanged:(bool? value){
		    								setState((){
		    									isChecked = value;
		    								});
		    							}
		    						),
		    						Text('Remember me'),
	    						],
	    					),

    						SizedBox(height: 30),

    						ElevatedButton(
    							child: Text('Login'),
    							style: btnStyle,
    							onPressed:(){
    								if(_formKey.currentState!.validate())
    								{
    										print('Form correto');
    										Navigator.push(context, MaterialPageRoute<void>(
    											builder: (BuildContext context)
    											{
    												return MainPage();
    											}
    										));
    								}
    							}
    						),
    						SizedBox(height: 10),
    						Row(
    							mainAxisAlignment: MainAxisAlignment.center,
    							children:<Widget>[
    								Text('Don\'t have an account? '),
    								GestureDetector(
    									child: Text('Signup here',style: TextStyle(color: Colors.purple,fontSize: 15)),
    									onTap:(){print('Register');},
    								),
    							],
    						),
    					],
    				),
    			),
    		],
    	),
   	);
  }
}