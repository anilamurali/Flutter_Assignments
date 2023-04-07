import 'package:flutter/material.dart';


class Contact_LIst extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Contacts"),
      backgroundColor: Colors.blue,),
      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611246981370-93febc04e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3V0ZSUyMGdpcmxzfGVufDB8fDB8fA%3D"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Card(
            color: Colors.grey[300],
             child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611246981370-93febc04e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3V0ZSUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anandu"),
              subtitle: const Text("9035938376"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children: const [
                     Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
                     ),
           ),
            Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1525299374597-911581e1bdef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y3V0ZSUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1663088415522-beb8bd6197c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFuZHNvbWUlMjBib3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611246981370-93febc04e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3V0ZSUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1525299374597-911581e1bdef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y3V0ZSUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
           Card(
            color: Colors.grey[300],
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1663088415522-beb8bd6197c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFuZHNvbWUlMjBib3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
              title: const Text("Anila Murali"),
              subtitle: const Text("9207099797"),
              trailing: SizedBox(
                width: 130,
                child: Wrap(
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:10 ,right: 10),
                      child: Icon(Icons.message),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}