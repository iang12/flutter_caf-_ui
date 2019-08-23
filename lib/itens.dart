import 'package:flutter/material.dart';

getItensSmall(img, price, time, title) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Card(
      child: Row(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('$img'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  '#populares',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.hourglass_empty,
                color: Colors.grey,
              ),
              Text(
                '$time min',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          ClipPath(
            clipper: null,
            child: Container(
              width: 70.0,
              height: 70.0,
              color: Colors.brown,
              child: Center(
                child: Text(
                  '$price R\$',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

getItens(String img) {
  return Container(
    margin: EdgeInsets.all(2.0),
    width: 150.0,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('$img'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0)),
  );
}
