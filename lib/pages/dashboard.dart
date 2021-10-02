import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    highlightColor: Colors.blue.withOpacity(0.1),
                    onPressed: () {
                      switch (data.title) {
                        case "Abrir tampa":
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (builder) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(32.0),
                                        topRight: Radius.circular(32.0)),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height - 500,
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: Image.asset(data.img,
                                                  width: 70)),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                              top: 24,
                                            ),
                                            child: Text(
                                              data.title,
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Text(
                                              data.subtitle,
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 40),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 20, right: 20),
                                                  width: 120,
                                                  height: 30,
                                                  // ignore: deprecated_member_use
                                                  child: FlatButton(
                                                    highlightColor: Colors.blue
                                                        .withOpacity(0.1),
                                                    onPressed: () {},
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9.0),
                                                      side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    color: Colors.green,
                                                    minWidth: double.infinity,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text(
                                                        'Abrir a tampa',
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Poppins",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 13),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 20, right: 20),
                                                  width: 120,
                                                  height: 30,
                                                  // ignore: deprecated_member_use
                                                  child: FlatButton(
                                                    highlightColor: Colors.blue
                                                        .withOpacity(0.1),
                                                    onPressed: () {},
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9.0),
                                                      side: BorderSide(
                                                        color: Colors.red,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    color: Colors.red,
                                                    minWidth: double.infinity,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Text(
                                                        'Não abrir a tampa',
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Poppins",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 13),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                          break;
                        case "Nível de lixos":
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (builder) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(32.0),
                                        topRight: Radius.circular(32.0)),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height - 400,
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              alignment: Alignment.center,
                                              padding: const EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: Image.asset(data.img,
                                                  width: 70)),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                              top: 24,
                                            ),
                                            child: Text(
                                              data.title,
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Text(
                                              data.subtitle,
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 30),
                                            alignment: Alignment.center,
                                            child: CircularPercentIndicator(
                                              progressColor: Colors.green,
                                              radius: 120.0,
                                              lineWidth: 13.0,
                                              animation: true,
                                              percent: 0.7,
                                              center: new Text(
                                                "70.0%",
                                                style: new TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                          break;
                        case 'APPROVED':
                          break;
                        case 'DENIED':
                          break;
                        case 'OPEN':
                          break;
                        default:
                      }
                    },
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
