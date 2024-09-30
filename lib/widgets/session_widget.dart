import 'package:flutter/material.dart';
import 'package:gdg_london_dev_camp_state_management/const/const.dart';

class SessionWidget extends StatefulWidget {
  const SessionWidget({
    super.key,
    required this.session,
  });

  final List session;

  @override
  State<SessionWidget> createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  ScrollController _scrollController1 = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1 = _scrollController1.position.minScrollExtent;
      double maxScrollExtent1 = _scrollController1.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent1, minScrollExtent1, maxScrollExtent1, 10,
          _scrollController1);
    });
  }

  animateToMaxMin(double max, double min, double direction, int seconds,
      ScrollController scrollController) {
    scrollController
        .animateTo(direction,
            duration: Duration(seconds: seconds), curve: Curves.linear)
        .then((value) {
      direction = direction == max ? min : max;
      animateToMaxMin(max, min, direction, seconds, scrollController);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Expanded(
      child: ListView.builder(
        controller: _scrollController1,
        scrollDirection: Axis.horizontal,
        itemCount: widget.session.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                padding: const EdgeInsets.all(4.0),
                width: (size.width - 20) / 3.5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 201, 79),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Session: ${index + 1}",
                      style: cardTextheading,
                    ),
                    Text(
                      "Date : ${widget.session[index].date}",
                      style: cardTextheading,
                    ),
                    Text(
                      "Duration: ${widget.session[index].duration}",
                      style: cardTextheading,
                    ),
                    Text("Topic: ${widget.session[index].topic} "),
                    Text(
                      "${widget.session[index].mentor}",
                      style: cardTextbold,
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
