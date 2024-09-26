import 'package:flutter/material.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/util/data.dart';

import 'package:intl/intl.dart';

class MessageView extends StatelessWidget {
  final String? room;
  const MessageView({
    super.key,
    this.room,
  });

  bool isReciver(String messageUserId) => true;
  // (messageUserId == userModal.userId);

  // String? scheck(int index) {
  //   if (index >= 1 && socketController.liveMessages[index - 1].createdAt != null && socketController.liveMessages[index].createdAt != null) {
  //     final difference = socketController.liveMessages[index].createdAt!.difference(socketController.liveMessages[index - 1].createdAt!).inDays.abs();

  //     if (difference <= 7) {
  //       if (difference < 1) {
  //         return null;
  //       } else {
  //         return DateFormat('EEEE').format(socketController.liveMessages[index - 1].createdAt!); // EEEE for full weekday name
  //       }
  //     } else {
  //       return DateFormat('dd MM yyyy').format(socketController.liveMessages[index - 1].createdAt!);
  //     }
  //   } else {
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(top: 10, bottom: 80, left: 6, right: 6),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          //   final String? date = scheck(index);
          return Column(
            children: [
              // if (date != null) ...[
              //   Center(
              //     child: Text(date),
              //   )
              // ],
              Row(
                mainAxisAlignment: index.isEven ? MainAxisAlignment.end : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (!index.isEven) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 6,
                        top: 6,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        //  backgroundImage: CachedNetworkImageProvider(userModal.userData!.profileImage!),
                      ),
                    )
                  ],
                  Column(
                    crossAxisAlignment: index.isEven ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: size.width * .7),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            gradient: index.isEven ? LinearGradient(colors: gradientr) : null,
                            borderRadius: BorderRadius.only(
                              topRight: const Radius.circular(10),
                              bottomLeft: !index.isEven ? Radius.zero : const Radius.circular(10),
                              bottomRight: index.isEven ? Radius.zero : const Radius.circular(10),
                              topLeft: const Radius.circular(10),
                            ),
                            color: index.isEven ? Colors.blueGrey : Color(0xff303538)),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          "loading text",
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        true ? DateFormat.jm().format(DateTime.now()) : DateFormat.jm().format(DateTime.now()),
                        style: const TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  if (index.isEven) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        top: 6,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        //   backgroundImage: CachedNetworkImageProvider(userModal.userData!.profileImage!),
                      ),
                    )
                  ],
                ],
              ),
            ],
          );
        },
      );
}
