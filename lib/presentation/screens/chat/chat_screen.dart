import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fvsa3-1.fna.fbcdn.net/v/t1.18169-9/10406685_786163324807257_5991417956788567990_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=7a1959&_nc_ohc=24A3LcxsKugAX98SlLn&_nc_ht=scontent.fvsa3-1.fna&oh=00_AfDvzxrsyOn9iitJiFA-N71ol8AdyebvvoxEI0s6gPwNWw&oe=654B01F2'),
          ),
        ),
        title: const Text('Chumi'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //Wrapped para que no utilice espacio del notch ni barra inferior
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal:
                10), //Esto es para que el contenido no quede pegado a los marcos
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessagesBubble()
                    : const MyMessageBubble();
              },
            )),
            const SizedBox(height: 2),
            //caja de texto mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
