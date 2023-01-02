import 'model/brands.dart';
import 'model/categories.dart';
import 'model/recipes.dart';

const double kDefaultPadding = 16.0;

const double kDefaultIconSize = 20.0;

final List<BrandsModel> allBrands = [
  BrandsModel(
    logo: 'assets/brands/mcdonalds.jpg',
    title: 'Veggie tomato mix',
    time: '25 MINS',
    offer: 'FREE ITEM',
  ),
  BrandsModel(
    logo: 'assets/brands/kfc.png',
    title: 'Egg and cucumber',
    time: '31 MINS',
    offer: '60% OFF',
  ),
  BrandsModel(
    logo: 'assets/brands/pizzahut.png',
    title: 'Egg and cucumber',
    time: '21 MINS',
    offer: '40% OFF',
  ),
  BrandsModel(
    logo: 'assets/brands/bn.jpeg',
    title: 'Egg and cucumber',
    time: '21 MINS',
    offer: '40% OFF',
  ),
  BrandsModel(
    logo: 'assets/brands/Baskin-Robbins.png',
    title: 'Egg and cucumber',
    time: '21 MINS',
    offer: '40% OFF',
  ),
];

final List<RecipesModel> allRecipes = [
  RecipesModel(
    title: 'Kabab Factory Palace',
    img:
        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80',
    rating: '4.1',
    time: '41 mins',
  ),
  RecipesModel(
    title: 'Bangalore Cusines Hot Pizza',
    img:
        'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    rating: '4.0',
    time: '35 mins',
  ),
  RecipesModel(
    title: 'Bangalore Cusines Hot Pizza',
    img:
        'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1081&q=80',
    rating: '4.0',
    time: '35 mins',
  ),
  RecipesModel(
    title: 'Bangalore Cusines Hot Pizza',
    img:
        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    rating: '4.0',
    time: '35 mins',
  ),
  RecipesModel(
    title: 'Bangalore Cusines Hot Pizza',
    img:
        'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80',
    rating: '4.0',
    time: '35 mins',
  ),
];

final List<CategoriesModel> categories = [
  CategoriesModel(
    img: 'assets/icons/c1.png',
    label: 'Burger',
  ),
  CategoriesModel(
    img: 'assets/icons/c2.png',
    label: 'Pizza',
  ),
  CategoriesModel(
    img: 'assets/icons/c3.png',
    label: 'Fries',
  ),
  CategoriesModel(
    img: 'assets/icons/c4.png',
    label: 'Fried Chicken',
  ),
  CategoriesModel(
    img: 'assets/icons/c5.png',
    label: 'Donuts',
  ),
  CategoriesModel(
    img: 'assets/icons/c6.png',
    label: 'Sandwich',
  ),
  CategoriesModel(
    img: 'assets/icons/c7.png',
    label: 'Ice Cream',
  ),
  CategoriesModel(
    img: 'assets/icons/c8.png',
    label: 'Drinks',
  ),
];
