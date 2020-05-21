class Model {
  int sl_no;
  int regno;
  String name;
  String branch;
  String batch;
  String status;
  Model({this.sl_no,this.regno,this.name,this.branch,this.batch,this.status});
  static List<Model> getData() {
    return <Model> [
      Model(sl_no: 1,regno: 822717104020,name:'Karthika V',branch: 'CSE',batch: '2017-2021[3rd year]',status: 'paid'),
      Model(sl_no:2,regno: 822717104007,name:'Divya S',branch: 'ECE',batch: '2018-2022[2nd year]',status:'no-paid'),
      Model(sl_no: 3,regno: 822717104008,name:'Divya Bharathy R',branch: 'EEE',batch: '2019-2023[1st year]',status: 'paid'),
      Model(sl_no: 4,regno: 822717104011,name: 'GajaLakshmi P S',branch: 'CIVIL',batch: '2016-2020[4th year]',status: 'no-paid'),

    ];
  }

}