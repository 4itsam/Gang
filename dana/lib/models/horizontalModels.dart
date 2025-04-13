import 'package:flutter/material.dart';

class Horizontalmodels {
  Color boxColor;

  String name;

  String jobPosition;

  String image;

  String description;

  Horizontalmodels({
    required this.name,
    required this.jobPosition,
    required this.boxColor,
    required this.image,
    required this.description,
  });

  static List<Horizontalmodels> getHoriz() {
    List<Horizontalmodels> horiModels = [];

    horiModels.add(
      Horizontalmodels(
        name: "Ali Miri",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Ali.jpg",
        description:
            "A Financial Management student and Flutter developer, Ali is driven by personal growth, education, and creating valuable content. Passionate about challenges, chess, and sports, he’s on a path toward migration with his skills.",
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Milad Omara",
        jobPosition: "Frontend dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Milad.jpg",
        description:
            "A front-end developer and website designer who’s passionate about Habiib's music, loves working out, and leads a programming group. A creative and dynamic force in the tech world.",
      ),
    );

    horiModels.add(
      Horizontalmodels(
        name: "Abood Balouchi",
        jobPosition: "Back-End dev",
        boxColor: const Color.fromARGB(255, 78, 8, 65),
        image: "assets/images/p_Abood.jpg",
        description:
            "A driven chemical engineering student with big dreams and a passion for growth. Blending tech, creativity, and curiosity to build, learn, and lead—with a touch of humor and a whole lot of heart.",
      ),
    );

    horiModels.add(
      Horizontalmodels(
        name: "Ms Abdi",
        jobPosition: "Ui/Ux designer",
        boxColor: const Color.fromARGB(255, 8, 36, 78),
        image: "assets/images/p_Abdi.jpg",
        description:
            "A Persian literature student and talented designer, Miss Abdi has a green thumb and loves flowers. Her warm personality and friendly nature make her an absolute joy to work with.",
      ),
    );

    return horiModels;
  }
}
