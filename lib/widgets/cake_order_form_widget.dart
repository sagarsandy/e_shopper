import 'package:flutter/material.dart';

class CakeOrderFormWidget extends StatefulWidget {
  @override
  _CakeOrderFormWidgetState createState() => _CakeOrderFormWidgetState();
}

class _CakeOrderFormWidgetState extends State<CakeOrderFormWidget> {
  TextEditingController _wishMessageTEC;
  TextEditingController _chefMessageTEC;
  TextEditingController _sizeMessageTEC;
  TextEditingController _priceMessageTEC;
  TextEditingController _adrsMessageTEC;

  @override
  void initState() {
    _wishMessageTEC = TextEditingController();
    _chefMessageTEC = TextEditingController();
    _sizeMessageTEC = TextEditingController();
    _priceMessageTEC = TextEditingController();
    _adrsMessageTEC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _wishMessageTEC.dispose();
    _chefMessageTEC.dispose();
    _sizeMessageTEC.dispose();
    _priceMessageTEC.dispose();
    _adrsMessageTEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Order Details",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              Text(
                "Wish Message",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              TextFormField(
                controller: _wishMessageTEC,
                validator: (value) {
                  return value.isEmpty ? "Please enter wish message" : null;
                },
                decoration: InputDecoration(
                  hintText: "Wish message to be printed on cake",
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Weight",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _sizeMessageTEC,
                          onChanged: (value) {
                            _priceMessageTEC.text =
                                "\$" + (int.parse(value) * 10).toString();
                          },
                          validator: (value) {
                            if (value.isNotEmpty && int.parse(value) < 1) {
                              return "Cake size should be greater than or equal to 1kg";
                            }
                            return value.isEmpty
                                ? "Please enter number of kgs"
                                : null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Number of kgs, eg: 2",
                            hintStyle: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Price",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _priceMessageTEC,
                          enabled: false,
                          decoration: InputDecoration(
                            hintText: "Price",
                            hintStyle: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Instructions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 5, top: 0),
                    child: TextFormField(
                      controller: _chefMessageTEC,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Instructions for chef..",
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Address",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 5, top: 0),
                    child: TextFormField(
                      controller: _adrsMessageTEC,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      validator: (value) {
                        return value.isEmpty
                            ? "Please enter your address"
                            : null;
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Address",
                        hintStyle: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
