import 'package:flutter/material.dart';
import 'package:fyc_ride/screens/message_veiw.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';

class SupportChat extends StatefulWidget {
  const SupportChat({
    super.key,
  });

  @override
  State<SupportChat> createState() => _SupportChatState();
}

class _SupportChatState extends State<SupportChat> {
  final TextEditingController inputTextController = TextEditingController();

  // @override
  // void initState() {
  //   socketController.socket.connect();
  //   socketController.connectToServer(widget.ticket.id!);

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   socketController.disconnect();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    //query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Soniya zerrt",
              style: Poppins.titleLarge,
            ),
            Text(
              "Passenger",
              style: Secondary.bodySmall,
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            top: 6,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            //   backgroundImage: CachedNetworkImageProvider(userModal.userData!.profileImage!),
          ),
        ),
        actions: [
          IconButton.filled(
              alignment: FractionalOffset.center,
              padding: const EdgeInsets.all(4),
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xff303538))),
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.call)),
          IconButton.filled(
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xff303538))),
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: const MessageView(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: inputTextController,
          maxLines: 10,
          minLines: 1,
          decoration: InputDecoration(
              fillColor: const Color.fromARGB(255, 45, 43, 49),
              filled: true,
              suffixIcon: IconButton.filled(
                  alignment: AlignmentDirectional.center,
                  onPressed: () {
                    if (inputTextController.text.isNotEmpty) {
                      // socketController.sendMessage(inputTextController.text);

                      // inputTextController.clear();
                    }
                  },
                  style: IconButton.styleFrom(fixedSize: Size(40, 40), backgroundColor: Colors.transparent),
                  icon: GradientIcon(const Icon(Icons.arrow_upward_rounded, size: 18, color: Colors.white))),
              //   isDense: true,
              hintText: " Type something ",
              // hintStyle: const TextStyle(
              //   fontSize: 12,
              //   fontWeight: FontWeight.w400,
              // ),

              contentPadding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
              //enabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(33)),
              border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(33))),
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
