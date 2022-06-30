import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MenuSection());
}

class MenuSection extends StatelessWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var titleList = [
    "Ndole",
    "Attieke",
    "Le yassa",
    "Couscous",
    "Le Mafe",
    "La sauce Gombo",
    "Le Foufou",
    "Le Saka Saka",
    "Le Poulet DG",
    "Le Hawawshi",
    "Le Mbongo Tchobi",
    "Le Poulet moamba",
  ];

  var descList = [
    "Il est fait à base de plantes amères appelés Ndole (d'où son nom) mais aussi d'un mélange de noix cuites, de poisson, de boeuf et/ou de crevettes. On le mange souvent avec des bananes plantains.",
    "Il est fait à base de manioc et a la même apparence que le couscous mais avec un goût plus acide. Le plat se mange avec du poisson, du poulet, ou de la viande, et est accompagné d'une sauce d'oignons et/ou pimentée mais aussi de bananes plantains.",
    "Il est composé de riz blanc, d'oignons et de citron. Il peut être mangé soit avec du poulet (l'accompagnement le plus connu), avec de la viande ou du poisson..",
    "Originaire d'Afrique du Nord, le coucous est très réputé pour son goût particulier et délicieux mais aussi pour ses vertus thérapeutiques. Elle peut être accompagnée de tout type de sauce et est incontournable lors des grandes occasions",
    "Appelé Mafé au Sénégal et Tigua dégué au Mali, ce plat est très prisé en Afrique de l’Ouest. Il est fait à base de riz blanc, de sauce d'arachide et de viande. On peut le manger avec du poisson, du poulet ou tout simplement avec des légumes.",
    "La sauce gombo est une sauce gluante faite à partir du légume du même nom. Elle est appelée Takou en Guinée, Soupou Kandjia au Sénégal, Kopé en Côte d’Ivoire. Elle peut-être cuisinée avec du poisson fumé ou frais, des crustacés, de la viande et parfois même du poulet.",
    "Plat béninois, le Foufou est une pâte molle réalisée à partir d’ignames, de farine de manioc ou de mais. Il est aussi très consommé en Afrique de l’Ouest et s’accompagne de sauce de toute catégorie et de la viande et/ou du poisson.",
    "Le Saka Saka est fait à base de feuilles de manioc, de poisson fumé, de beurre d’arachide et d’huile de palme. Il peut être aussi consommé avec des bananes plantains, du riz et/ou du pain. Bref, on trouve différentes variétés selon des pays mais quoi qu’il en soit il fait des ravages en Afrique.",
    "Ce ragoût de poulet super simple à réaliser est souvent dégusté avec des poivrons, des carottes et des frites plantains qui ne trahissent jamais. Essayez vous ne le regretterez point !",
    "Ce plat délicieux égyptien ressemble à la pizza du moyen-orient. Elle est composée de viande hachée assaisonnée aux oignions et d’autres épices. Le tout placé dans une page en forme circulaire et cuite au four.",
    "Ce plat assez original est originaire du Cameroun, il est préparé à base de banane plantain cuits à la vapeur. Il est servi avec une soupe noire cuite avec du poisson ou de la viande épicé avec du bongo brûlé.",
    "Le fameux poulet moamba est un des plats nationales de l’Angola. Cette délicieuse recette est préparée à base de beurre de palme et d’épices qui rendent le goût du poulet atypique.",
  ];

  var imagesList = [
    "images/Ndole.webp",
    "images/attieke.webp",
    "images/yassa-sen.webp",
    "images/Couscous.webp",
    "images/Mafe.webp",
    "images/gombo.webp",
    "images/foufou.webp",
    "images/SakaSaka.webp",
    "images/DG.webp",
    "images/hawashi.webp",
    "images/mbongo.webp",
    "images/Poulet-moamba.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Restaurant BissTonPlat',
            style: GoogleFonts.raleway(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialogFunc(context, imagesList[index], titleList[index],
                    descList[index]);
              },
              child: Card(
                  child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imagesList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index].toUpperCase(),
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        /* SizedBox(
                            width: width,
                            child: Text(
                              descList[index],
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ))*/
                      ],
                    ),
                  )
                ],
              )),
            );
          },
        ));
  }
}

showDialogFunc(context, images, title, desc) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        images,
                        width: 250,
                        height: 250,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
