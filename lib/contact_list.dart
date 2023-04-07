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
                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
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
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1613940102159-1e7a40f2b60ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGFuZHNvbWUlMjBib3l8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
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