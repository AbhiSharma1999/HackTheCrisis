import 'package:flutter/material.dart';

class infoPlaceholderWidget extends StatelessWidget {


 @override
 Widget build(BuildContext context) {
   return new Material(
        child: new Container(
            child: new SingleChildScrollView(
                child: new ConstrainedBox(
      constraints: new BoxConstraints(),
      child: new Column(children: <Widget>[
        new Image.network(
          'https://miro.medium.com/max/1400/1*XsMVjHd-7qztj53R_DvFpg.jpeg',
        ),
        new Container(

          decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.cyan[400],
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
    ),


          padding:
              EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
         // color: Colors.cyan[400],
          child: new Text(
            'Calming the Corona Pandemic',
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        new Container(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          child: new Text(
            "Corona virus disease (COVID-19) is the first of its kind pandemic as declared by The World"
"Health Organisation (WHO) that has led to a state of urgency and distress among all the countries"
"alike. An unprecedented danger that has led to crashing of world economies, destabilisation of"
"functioning democracies, fear of uncertainty among all the people, and of course the agonizing loss"
"of so many human lives worldwide. There are wide amount of false news being propagated"
"misleading the masses into various wrongdoings. The information regarding this that is meant to be"
"assimilated within us is the fact that this disease prominently affects the people with weak immune"
"and respiratory systems, this doesn’t indicate that rest of us are invincible to this imminent threat."
"Few of the symptoms of corona are high fever, dry cough, difficulty in breathing. Also if you have"
"had a travel history to the corona affected areas it is absolutely essential you share this information"
"with the government and undergo tests and precautions necessary to contain it. Some precautions"
"we all need to enforce upon us are covering your mouth and nose while coughing and sneezing,"
"washing hands frequently for at least 20 seconds to neutralize the virus, avoid touching your eyes,"
"nose and mouth as much as possible, use of hand sanitizers containing a minimum of 60% alcohol"
"content and completely avoiding travel by following social distancing and staying indoors, travelling"
"nly when extremely essential accompanied with face masks with grade N-95 and above and for the"
"people whose family members are into health care, police, administration or any other professions"
"that demand their involvement during these hazardous times it is mandatory for them to take extra"
"care and necessary precautions.",
            textAlign: TextAlign.justify,
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        )
      ]),
    ))));
 }
}