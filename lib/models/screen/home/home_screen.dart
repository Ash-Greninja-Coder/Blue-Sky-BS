import 'package:flutter/material.dart';
import 'package:book/models/products.dart';
import 'package:book/details/details_screen.dart';
import 'package:book/models/functions/menu.dart';
import 'package:book/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Image.asset(
          'assests/images/logo.png',
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 4,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: const Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              height:  20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin),
            child: Text(
              'Deals of the day',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height:  200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: books[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width:  150,
                    margin: const EdgeInsets.symmetric(horizontal:  8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius:  1,
                          blurRadius:  5,
                          offset: const Offset(0,  3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height:  100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(books[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            books[index].title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            books[index].price.toString(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height:  20,
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin),
            child: Text(
              'Trending Now',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height:  200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: books[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width:  150,
                    margin: const EdgeInsets.symmetric(horizontal:  8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius:  1,
                          blurRadius:  5,
                          offset: const Offset(0,  3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height:  100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(books[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            books[index].title,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            books[index].price.toString(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}