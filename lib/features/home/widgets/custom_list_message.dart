import 'package:flutter/material.dart';
import 'package:gemini_gpt/core/utils/constants.dart';


class CustomListMessage extends StatelessWidget {
  const CustomListMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Constants.messge.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Align(
            alignment: Constants.messge[index].isUser
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: Constants.messge[index].isUser
                        ? const BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            bottomStart: Radius.circular(10),
                            bottomEnd: Radius.circular(10))
                        : const BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                            topEnd: Radius.circular(10),
                            bottomEnd: Radius.circular(10)),
                    color: Constants.messge[index].isUser
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary),
                child: Text(Constants.messge[index].text,
                style: Constants.messge[index].isUser?Theme.of(context).textTheme.bodyMedium:
                Theme.of(context).textTheme.bodySmall,)),
          ),
        );
      },
    );
  }
}
