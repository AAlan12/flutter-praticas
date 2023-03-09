import 'package:flutter/material.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  
  const InitialScreen({Key? key}) : super(key: key);
  
  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen>{
  
  bool opacidade = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(children: [
            Task(
                'Aprender Flutter',
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                5),
            Task(
                'Finalizar FF8',
                'https://upload.wikimedia.org/wikipedia/pt/thumb/5/58/FFVIII.jpg/300px-FFVIII.jpg',
                4),
            Task(
                'Death Stranding',
                'https://cdn1.epicgames.com/offer/0a9e3c5ab6684506bd624a849ca0cf39/EGS_DeathStrandingDirectorsCut_KOJIMAPRODUCTIONS_S4_1200x1600-5f99e16507795f9b497716b470cfd876',
                2),
            Task(
                'Terminar Pequeno Príncipe',
                'https://edipro.com.br/wp-content/uploads/2020/09/Pequeno-principe-O-grande-9788567097107-600x863.jpg',
                1),
            Task(
                'Inglês',
                'https://play-lh.googleusercontent.com/W7ati37w9D9qOPw4KXiRmWd3MNvW3mUFMcxRrDqCU9mq6FmQA0HyvYXTQiRLShASca8g',
                2),
            Task(
                'Treinar a jogar de Jarvan',
                'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/JarvanIV_30.jpg',
                5),
            Task(
                'Academia',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJpc4cT9ij2jBsTiVXjwCw-cAOoxn1ceGC6A&usqp=CAU',
                3),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      );
  }
}

