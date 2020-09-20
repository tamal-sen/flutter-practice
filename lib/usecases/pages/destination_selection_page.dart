import 'package:flutter/material.dart';
import 'package:flutter_practice/usecases/widgets/airport_selection_widget.dart';
import 'package:flutter_practice/usecases/widgets/common_icon_button.dart';

class DestinationSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Selection Page'),
      ),
      body: SafeArea(
        child: Container(
          // height: 75,
          constraints: BoxConstraints(maxHeight: 80, minHeight: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xff148CD0),
          ),
          margin: const EdgeInsets.all(8.0),
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: AirportSelectionDisplayWidget(
                  airportCode: 'DAC',
                  airportLocation: 'Dhaka, BD',
                  title: 'FROM',
                  onTap: () {
                    print('from was pressed');
                  },
                ),
              ),
              Expanded(
                  child: CommonIconButton(
                icon: Icons.arrow_forward,
                backgroundColor: Color(0xfff1f1f1).withAlpha(155),
                onClick: () {},
              )),
              Expanded(
                flex: 2,
                child: AirportSelectionDisplayWidget(
                  airportCode: 'LHR',
                  airportLocation: 'London, UK',
                  title: 'TO',
                  onTap: () {
                    print('To was pressed');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
