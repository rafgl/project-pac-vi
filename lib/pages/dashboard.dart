import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Abrir tampa",
      subtitle: "Executa a abertura da tampa da lixeira",
      event: "",
      img: "images/abrir-lata-de-lixo.png");

  Items item2 = new Items(
    title: "Nível de lixos",
    subtitle: "Quantidade de lixos depositados",
    event: "",
    img: "images/lixeira.png",
  );
  Items item3 = new Items(
    title: "Fazer a reciclagem",
    subtitle: "Separa os itens do lixo",
    event: "",
    img: "images/simbolo-de-reciclagem.png",
  );
  Items item4 = new Items(
    title: "Trocar a sacola",
    subtitle: "Troca a sacola automáticamente",
    event: "",
    img: "images/sacola-ecologica.png",
  );
  Items item5 = new Items(
    title: "Notificação",
    subtitle: "Habilita a notificação quando estiver cheio",
    event: "",
    img: "images/notificacao.png",
  );
  Items item6 = new Items(
    title: "Ligar luz",
    subtitle: "Liga luz a da parte interna",
    event: "",
    img: "images/luz-led.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(data.img, width: 42),
                SizedBox(height: 14),
                Text(
                  data.title,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.subtitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: 120,
                  height: 30,
                  child: FlatButton(
                    highlightColor: Colors.blue.withOpacity(0.1),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      side: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    padding: EdgeInsets.all(0.0),
                    color: Colors.green,
                    minWidth: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Executar tarefa',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items(
      {required this.title,
      required this.subtitle,
      required this.event,
      required this.img});
}
