import 'package:flutter/material.dart';
import '../Theme/AppColors.dart';
import '../Theme/Assets.dart';
import '../Widget/CustomCategory.dart';
import '../Widget/CustomContainer.dart';

class Favoritescreen extends StatefulWidget {
  const Favoritescreen({super.key});

  @override
  State<Favoritescreen> createState() => _FavoritescreenState();
}

class _FavoritescreenState extends State<Favoritescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon:  const Icon(Icons.search,size: 30,color:Appcolors.blackC,))
        ],
      ),
      body: const Column(
        children: [
          Text('Favorites',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Appcolors.blackC,
          ),),
          Row_Category(),
          CustomContainer(image: Assets.e_commerce, Firs_N: 'Shirt', Cloth: 'Shirt', price: '50',Color_C: 'Blue',),
          CustomContainer(image: Assets.e_commerce, Firs_N: 'Longsleeve', Cloth: 'Shirt', price: '50',Color_C: 'Blue',),
          CustomContainer(image: Assets.e_commerce, Firs_N: 'Shirt', Cloth: 'Shirt', price: '50',Color_C: 'Blue',),
      


           
        ],
      ),
    )
    ;
  }
}








class Row_Category extends StatelessWidget {
  const Row_Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Customcategory(Name_Category: 'Summer',),
        Customcategory(Name_Category: 'T-Shirts',),
        Customcategory(Name_Category: 'Shirts',),
    
      ],
    );
  }
} 