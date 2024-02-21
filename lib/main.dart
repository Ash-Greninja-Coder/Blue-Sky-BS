import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/homepage': (context) =>  HomePage(),
        '/menu': (context) => const Menu(),
        '/cart': (context) =>  const CartPage(),
      },
    );
  }
}

 class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
            'Blue Sky',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 56),
            const Padding(
              padding:  EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Welcome to our app',
                style: TextStyle(
                  fontSize: 32,
                  height: 0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform login logic with email and password
                    // ...
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/homepage');
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform signup logic with email and password
                    // ...
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/homepage');
                  }
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
    final List<Book> books = [
    Book(title: 'Book  1', price: 'Rs.  409', imageUrl: 'https://m.media-amazon.com/images/I/81QGiLhpmtL._AC_UF1000,1000_QL80_.jpg'),
    Book(title: 'Book  2', price: 'Rs.  11,025', imageUrl: 'https://m.media-amazon.com/images/I/71wP18MWVUL._AC_UF1000,1000_QL80_.jpg'),
    Book(title: 'Book  11', price: 'Rs.   1100', imageUrl: 'https://m.media-amazon.com/images/I/91ctQaCi8QL._AC_UF1000,1000_QL80_.jpg'),
    Book(title: 'Book  12', price: 'Rs.   1200', imageUrl: 'data:image/jpeg;base64,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'),
    Book(title: 'Book  13', price: 'Rs.   4,495', imageUrl: 'https://m.media-amazon.com/images/I/81EksXH-u9L._AC_UF1000,1000_QL80_.jpg'),
    Book(title: 'Book  14', price: 'Rs.   1400', imageUrl: 'https://m.media-amazon.com/images/I/61EHBRStQKL._AC_UF1000,1000_QL80_.jpg'),
    Book(title: 'Book  15', price: 'Rs.   1500', imageUrl: 'data:image/jpeg;base64,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'),
    Book(title: 'Book  16', price: 'Rs.   1600', imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1423434829i/24879741.jpg'),
    Book(title: 'Book  17', price: 'Rs.   1700', imageUrl: 'data:image/jpeg;base64,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'),
    Book(title: 'Book  18', price: 'Rs.   1800', imageUrl: 'data:image/jpeg;base64,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'),
    Book(title: 'Book  19', price: 'Rs.   1900', imageUrl: 'https://m.media-amazon.com/images/I/41y-F+hz+uS.jpg'),
    Book(title: 'Book  20', price: 'Rs.   2000', imageUrl: 'data:image/jpeg;base64,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'),
  ];

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
        title: const Text(
            'Blue Sky',
            style: TextStyle(
              fontSize: 32,
            ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Deals of the Day',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
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
                              image: NetworkImage(books[index].imageUrl),
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
                            books[index].price,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Trending Now',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
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
                              image: NetworkImage(books[index].imageUrl),
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
                            books[index].price,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Book {
  final String title;
  final String price;
  final String imageUrl;

  Book({required this.title, required this.price, required this.imageUrl});
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child:  Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize:  24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Languages'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.track_changes),
            title: const Text('Track Order'),
            onTap: () {
              // Update the state of the app
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<CartItem> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: _cartItems.isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                final item = _cartItems[index];
                return ListTile(
                  leading: Image.network(item.imageUrl),
                  title: Text(item.name),
                  subtitle: Text('Quantity: ${item.quantity}'),
                  trailing: const Text('INR{item.price * item.quantity}'),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _cartItems.add(
              CartItem(
                name: 'Item ${_cartItems.length + 1}',
                imageUrl: 'https://via.placeholder.com/150',
                price: 10.99,
                quantity: 1,
              ),
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CartItem {
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
}