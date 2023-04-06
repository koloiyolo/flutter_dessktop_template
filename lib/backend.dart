class Something {
  String name;
  String field1;
  String field2;
  String field3;
  String field4;

  Something(
    this.name, 
    this.field1, 
    this.field2, 
    this.field3, 
    this.field4); //end of constructor

  void setName(String name) {
    this.name = name;
  }

  void setField1(String field) {
    field1 = field;
  }

  void setField2(String field) {
    field1 = field;
  }

  void setField3(String field) {
    field3 = field;
  }

  void setField4(String field) {
    field4 = field;
  }
  String getName(){return name;}
  String getField1(){return field1;} 
  String getField2(){return field2;} 
  String getField3(){return field3;}
  String getField4(){return field4;}  
}

List<Something> myList = [Something('Object1', 'bjsbfj', 'fsfbhjs', 'fsbvf', 'fsb')];


