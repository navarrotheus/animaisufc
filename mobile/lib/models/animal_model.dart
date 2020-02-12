class AnimalModel {
  int id;
  String type;
  String name;
  String sex;
  String age;
  String color;
  String description;
  int fileId;
  String fileName;
  String filePath;
  String fileUrl;

  AnimalModel(
      {this.id,
      this.type,
      this.name,
      this.sex,
      this.age,
      this.color,
      this.description,
      this.fileId,
      this.fileName,
      this.filePath,
      this.fileUrl});

  AnimalModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    sex = json['sex'];
    age = json['age'];
    color = json['color'];
    description = json['description'];
    fileId = json['file_id'];
    fileName = json['file_name'];
    filePath = json['file_path'];
    fileUrl = json['file_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['sex'] = this.sex;
    data['age'] = this.age;
    data['color'] = this.color;
    data['description'] = this.description;
    data['file_id'] = this.fileId;
    data['file_name'] = this.fileName;
    data['file_path'] = this.filePath;
    data['file_url'] = this.fileUrl;
    return data;
  }
}
