import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  //todo 1 variabel
  bool issignedin = false;
  String fullName = 'Rachmadi.';
  String userName = 'Rachmadi';
  int favoriteCandiCount = 0;

  void signIn() {
    setState(() {
      issignedin = true;
    });
  }

  void signOut() {
    setState(() {
      issignedin = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Column(
            children: [
              //todo 2 profile header
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(200 - 50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.purple),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'images/placeholder_image.png',
                          ),
                        ),
                      ),
                      if (issignedin)
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              //todo 3 profile info
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(Icons.lock, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          'pengguna',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ': $userName',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Divider(color: Colors.deepPurple),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'nama',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ': $fullName',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  if (issignedin) const Icon(Icons.edit),
                ],
              ),
              SizedBox(height: 4),
              Divider(color: Colors.deepPurple),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(width: 8),
                        Text(
                          'favorit',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ': $favoriteCandiCount',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              //todo 4 profile action
              const SizedBox(height: 4),
              Divider(color: Colors.deepPurple[100]),
              const SizedBox(height: 16),
              issignedin
                  ? TextButton(
                    onPressed: () {
                      signOut();
                    },
                    child: const Text('Signed Out'),
                  )
                  : TextButton(
                    onPressed: () {
                      signIn();
                    },
                    child: const Text('Signed In'),
                  ),
              //todo 5
              // void () {
              //   setState(() {
              //     issignedin = !issignedin;
              //   });
              // }

              // TODO: 6. Implementasi fungsi signOut
              // void () {
              //   setState(() {
              //     isSignedIn = !isSignedIn;
              //   });
              // }
            ],
          ),
        ],
      ),
    );
  }
}
