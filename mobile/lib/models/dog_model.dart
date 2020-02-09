class DogModel {
  int id;
  int fileId;
  String fileName;
  String filePath;
  String fileUrl;
  String name;
  String description;
  String sex;

  DogModel(
      {this.id,
      this.fileId,
      this.fileName,
      this.filePath,
      this.fileUrl,
      this.name,
      this.description,
      this.sex});

  DogModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fileId = json['file_id'];
    fileName = json['file_name'];
    filePath = json['file_path'];
    fileUrl = json['file_url'];
    name = json['name'];
    description = json['description'];
    sex = json['sex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['file_id'] = this.fileId;
    data['file_name'] = this.fileName;
    data['file_path'] = this.filePath;
    data['file_url'] = this.fileUrl;
    data['name'] = this.name;
    data['description'] = this.description;
    data['sex'] = this.sex;
    return data;
  }
}
