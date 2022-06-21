class SubjectData {
  final String? subjectName;
  final String? imageUrl;
  final String? youtubeLink;

  const SubjectData({this.subjectName, this.imageUrl, this.youtubeLink});
  const SubjectData.fortestsscreen(
      {this.subjectName, this.imageUrl = '', this.youtubeLink = ''});
}

class Subjects {
  final subjects = const [
    SubjectData(
      subjectName: 'Mathematics',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'English',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'Basic Science',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'Quantitative',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'Verbal',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'PHE',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'English',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
    SubjectData(
      subjectName: 'Chemistry',
      imageUrl: 'assets/maths.png',
      youtubeLink: 'https://youtu.be/18RPsa9Ry8U',
    ),
  ];
}

//Might not need this one later
class AvailableSubjects {
  final subjects = const [
    SubjectData.fortestsscreen(
      subjectName: 'Mathematics',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'English',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'Basic Science',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'Quantitative',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'Verbal',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'PHE',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'English',
    ),
    SubjectData.fortestsscreen(
      subjectName: 'Chemistry',
    ),
  ];
}
