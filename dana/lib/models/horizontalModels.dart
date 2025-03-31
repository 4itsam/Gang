import 'package:flutter/material.dart';

class Horizontalmodels {
  Color boxColor;

  String name;

  String jobPosition;

  String image;

  Horizontalmodels({
    required this.name,
    required this.jobPosition,
    required this.boxColor,
    required this.image
  });

  static List<Horizontalmodels> getHoriz() {
    List<Horizontalmodels> horiModels = [];

    horiModels.add(
      Horizontalmodels(
        name: "Ali Miri",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Ali.jpg"
      ),
    );
        horiModels.add(
      Horizontalmodels(
        name: "Milad Omara",
        jobPosition: "Frontend dev",
        boxColor: const Color.fromARGB(255, 34, 34, 34),
        image: "assets/images/p_Milad.jpg"
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Mmd gerkani",
        jobPosition: "backend dev",
        boxColor: const Color.fromARGB(255, 6, 53, 6),
        image: "assets/images/p_Mohammad.jpg"
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Ms Abdi",
        jobPosition: "Ui/Ux designer",
        boxColor: const Color.fromARGB(255, 8, 36, 78),
        image: "assets/images/p_Abdi.jpg"
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Ms Rezaei",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 87, 85, 6),
        image: "assets/images/p_Rezaei.jpg"
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Ms Banaei",
        jobPosition: "Flutter dev",
        boxColor: const Color.fromARGB(255, 5, 53, 59),
        image: "assets/images/p_Banaei.jpg"
      ),
    );
    horiModels.add(
      Horizontalmodels(
        name: "Ilia mir",
        jobPosition: "unknown",
        boxColor: const Color.fromARGB(255, 54, 7, 63),
        image: "assets/images/p_Mir.jpg"
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
