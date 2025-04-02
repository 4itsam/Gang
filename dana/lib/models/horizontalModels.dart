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
    required this.description

  });

  static List<Horizontalmodels> getHoriz() {
    List<Horizontalmodels> horiModels = [];

    horiModels.add(
      Horizontalmodels(
        name: "Ali Miri",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Ali.jpg",
description: "A Financial Management student and Flutter developer, Ali is driven by personal growth, education, and creating valuable content. Passionate about challenges, chess, and sports, he’s on a path toward migration with his skills."
      ),
    );
        horiModels.add(
      Horizontalmodels(
        name: "Milad Omara",
        jobPosition: "Frontend dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Milad.jpg",
        description: "A front-end developer and website designer who’s passionate about Habiib's music, loves working out, and leads a programming group. A creative and dynamic force in the tech world."
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Mmd gerkani",
        jobPosition: "backend dev",
        boxColor: const Color.fromARGB(255, 6, 53, 6),
        image: "assets/images/p_Mohammad.jpg",
description: "A mechanical engineering student and backend developer who’s known for his great sense of humour and easy-going nature. A fun-loving guy from Kerman with a knack for tech."      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Miss Abdi",
        jobPosition: "Ui/Ux designer",
        boxColor: const Color.fromARGB(255, 8, 36, 78),
        image: "assets/images/p_Abdi.jpg",
description:      "A Persian literature student and talented designer, Miss Abdi has a green thumb and loves flowers. Her warm personality and friendly nature make her an absolute joy to work with." ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Miss Rezaei",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 49, 59, 5),
        image: "assets/images/p_Rezaei.jpg",
        description: "A fellow financial management student and Flutter enthusiast, Miss Rezaei shares a love for Habiib's music. Known for her friendliness, she’s also very particular about how her last name is spelled—with 'ئ'."
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Miss Banaei",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 5, 53, 59),
        image: "assets/images/p_Banaei.jpg",
        description: "A public administration student who comes across as smart, respectable, and well-rounded. She’s a close friend of Miss Rezaei, though not much else is known."
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Ilia mir",
        jobPosition: "unknown",
        boxColor: const Color.fromARGB(255, 59, 36, 5),
        image: "assets/images/p_Mir.jpg",
        description: "Aspiring to be a full-stack developer, Elias is passionate about learning and has a broad understanding of different tech fields. His curiosity and ambition make him a standout in the programming world."
      ),
    );

    return horiModels;
  }
}

// static List<PopularFoodModels> getPopularFood() {
//     List<PopularFoodModels> foodModels = [];

//     foodModels.add(
//       PopularFoodModels(
//         colorBox: Color.fromARGB(100, 255, 128, 0),
//         title: "Toast Egg",
//         isSelected: true,
//         image: "assets/images/egg.png"
//       ),
//     );
//         foodModels.add(
//       PopularFoodModels(
//         colorBox: Color.fromARGB(100,0, 255 ,98),
//         title: "Tea",
//         isSelected: true,
//         image: "assets/images/tea.png"
//       ),
//     );

//     return foodModels;
//   }
// }
