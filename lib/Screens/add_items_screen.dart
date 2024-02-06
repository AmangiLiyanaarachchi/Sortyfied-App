import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';

class AddItemsScreen extends StatefulWidget {
  final String title;

  const AddItemsScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<AddItemsScreen> createState() => _AddItemsScreenState();
}

class _AddItemsScreenState extends State<AddItemsScreen> {
  bool _isPasswordVisible = false;
  bool _isPINVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _togglePINVisibility() {
    setState(() {
      _isPINVisible = !_isPINVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Add Account",
        showHomeIcon: true,
        onHomeIconPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/logo.jpg',
                    width: 80,
                    height: 80,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: widget.title,
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.fromLTRB(15, 10, 15, 5),
                            hintStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: 'Account name',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 10),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(0),
                        border: const Border(
                          top: BorderSide.none,
                          bottom: BorderSide.none,
                        ),
                      ),
                      child: ExpansionTile(
                        title: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 22,
                                child: InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.document_scanner_rounded,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Text(
                                  'Account details',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Name on account',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Name on account',
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          icon: const Icon(
                                              Icons.add_circle_outline),
                                          onPressed: () {
                                            // Implement the action when the add icon is tapped.
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Account Number',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Account number',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //second cards
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(0),
                        border: const Border(
                          top: BorderSide.none,
                          bottom: BorderSide.none,
                        ),
                      ),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 22,
                              child: InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.document_scanner_rounded,
                                  size: 32,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: Text(
                                'Online access',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Website',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Website',
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.all(12),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        IconButton(
                                          icon: const Icon(
                                              Icons.add_circle_outline),
                                          onPressed: () {
                                            // Implement the action when the add icon is tapped.
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Username/login',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Username/login',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Password',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      obscureText: !_isPasswordVisible,
                                      decoration: InputDecoration(
                                        hintText: 'Enter password',
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.all(12),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isPasswordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: _togglePasswordVisibility,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'PIN',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextField(
                                      obscureText: !_isPINVisible,
                                      decoration: InputDecoration(
                                        hintText: 'Enter PIN',
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.all(12),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isPINVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: _togglePINVisibility,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
