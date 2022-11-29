class OcrData {
  String idNumber;
  String doe;
  String fullName;
  String dob;
  String gender;
  String nationality;
  String homeTown;
  String permanentAddress;
  String doi;
  String placeOfIssue;
  bool isCMND;
  String pathFrontDocument;
  String pathBackDocument;
  String pathFace;

  OcrData(
      {this.idNumber = '',
      this.doe = '',
      this.fullName = '',
      this.dob = '',
      this.gender = '',
      this.nationality = '',
      this.homeTown = '',
      this.permanentAddress = '',
      this.doi = '',
      this.placeOfIssue = '',
      this.isCMND = false,
      this.pathFrontDocument = '',
      this.pathBackDocument = '',
      this.pathFace = ''});
}
