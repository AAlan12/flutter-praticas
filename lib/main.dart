import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(children: [
          Task('Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
          Task('Finalizar FF8',
              'https://upload.wikimedia.org/wikipedia/pt/thumb/5/58/FFVIII.jpg/300px-FFVIII.jpg'),
          Task('Death Stranding',
              'https://cdn1.epicgames.com/offer/0a9e3c5ab6684506bd624a849ca0cf39/EGS_DeathStrandingDirectorsCut_KOJIMAPRODUCTIONS_S4_1200x1600-5f99e16507795f9b497716b470cfd876'),
          Task('Terminar Pequeno Príncipe',
              'https://edipro.com.br/wp-content/uploads/2020/09/Pequeno-principe-O-grande-9788567097107-600x863.jpg'),
          Task('Inglês',
              'https://play-lh.googleusercontent.com/W7ati37w9D9qOPw4KXiRmWd3MNvW3mUFMcxRrDqCU9mq6FmQA0HyvYXTQiRLShASca8g'),
          Task('Treinar a jogar de Jarvan',
              'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/JarvanIV_30.jpg'),
          Task('Academia',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJpc4cT9ij2jBsTiVXjwCw-cAOoxn1ceGC6A&usqp=CAU'),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String img;

  const Task(this.nome, this.img, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(Icons.star, size: 15, color: Colors.blue,),
                              Icon(Icons.star, size: 15, color: Colors.blue[100],),
                              Icon(Icons.star, size: 15, color: Colors.blue[100],),
                            ],)
                        ],
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'UP',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Nivel $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
