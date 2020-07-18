


import 'package:dojo/widgets/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_phone_state/flutter_phone_state.dart';

class Leads extends StatefulWidget {
  @override
  _LeadsState createState() => _LeadsState();
}

class _LeadsState extends State <Leads> with AutomaticKeepAliveClientMixin<Leads>{
  List<PhoneCallEvent> _phoneEvents;

  @override
  void initState() {
    super.initState();
    _phoneEvents = _accumulate(FlutterPhoneState.phoneCallEvents);
    
  }

  List<R> _accumulate<R>(Stream<R> input) {
    final items = <R>[];
    input.forEach((item) {
      if (item != null) {
        setState(() {
          items.add(item);
        });
      }
    });
    return items;
  }
 

 

  Iterable<PhoneCall> get _completedCalls =>
      Map.fromEntries(_phoneEvents.reversed.map((PhoneCallEvent event) {
        return MapEntry(event.call.id, event.call);
      })).values.where((c) => c.isComplete).toList();

  @override
  Widget build(BuildContext context) {
       super.build(context);
    return Container(
      color: Colors.grey[350],
      child:ListView(
          children: [
            
            for (final call in FlutterPhoneState.activeCalls)
              _CallCard(phoneCall: call),
            for (final call in _completedCalls)
              _CallCard(
                phoneCall: call,
              ),
            if (_completedCalls.isEmpty)
              Center(child: Text("No Leads")),
            verticalSpace,
           
          ],
        ),
      
    );
    
      
      
      
    
  }

  @override
  
  bool get wantKeepAlive => true;
}




class _CallCard extends StatefulWidget {
  final PhoneCall phoneCall;
  const _CallCard({Key key, this.phoneCall}) : super(key: key);

  @override
  __CallCardState createState() => __CallCardState();
}

class __CallCardState extends State<_CallCard> {
  showPickedUp(){
    if(widget.phoneCall.isInbound){
     
      if(widget.phoneCall.duration > Duration(seconds: 8)  ){
        return outgoingContainer;
      }else{
        return failureCall;
      }
    }
  }
 

  @override
  Widget build(BuildContext context) {
    return showPickedUp();
  
  }
}

const headerStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
const listHeaderStyle = TextStyle(fontWeight: FontWeight.bold);
const verticalSpace = SizedBox(height: 10);