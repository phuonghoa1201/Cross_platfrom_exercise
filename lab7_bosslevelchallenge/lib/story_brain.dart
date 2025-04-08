import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle: 'Bạn vừa dọn vào một căn nhà cũ. Trong phòng ngủ có một chiếc gương cổ. Chủ nhà nói: "Nếu không thích thì tháo ra, nhưng tôi nghĩ nó nên ở đó..."',
      choice1: 'Giữ lại chiếc gương vì nó đẹp.',
      choice2: 'Tháo gương xuống và cất đi.',
    ),
    Story(
      storyTitle: 'Đêm đầu tiên, bạn thấy như có người nhìn từ gương. Nhưng bạn chỉ sống một mình...',
      choice1: 'Lờ đi và đi ngủ.',
      choice2: 'Lấy vải phủ kín gương lại.',
    ),
    Story(
      storyTitle: 'Bạn tháo gương ra. Nhưng nửa đêm nó xuất hiện lại đúng vị trí cũ. Trong gương không phản chiếu gì cả...',
      choice1: 'Chạm vào gương để kiểm tra.',
      choice2: 'Chạy khỏi nhà ngay lập tức.',
    ),
    Story(
      storyTitle: 'Bạn mơ thấy một người phụ nữ mặc đồ trắng, tóc dài, đứng trong gương thì thầm: "Trả lại cho tôi..."',
      choice1: 'Hỏi bà ta là ai.',
      choice2: 'Gào lên: "Tôi không lấy gì cả!"',
    ),
    Story(
      storyTitle: 'Bạn giật mình tỉnh dậy và gọi chủ nhà. Ông ấy hỏi: "...Cô vẫn còn nhìn thấy mình trong gương à?"',
      choice1: 'Gặng hỏi ông ta có ý gì.',
      choice2: 'Im lặng và nhìn vào gương.',
    ),
    Story(
      storyTitle: 'Bạn phát hiện ra mình không còn phản chiếu trong gương nữa. Bạn đã chết ba ngày trước, trong một vụ tai nạn giao thông khi chuyển nhà...',
      choice1: 'Chơi lại.',
      choice2: '',
    ),
    Story(
      storyTitle: 'Bạn bỏ chạy khỏi nhà. Nhưng mỗi khi nhìn vào gương ở nơi khác... bạn vẫn không phản chiếu. Bạn mãi mãi bị mắc kẹt giữa hai thế giới.',
      choice1: 'Chơi lại.',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        _storyNumber = (choiceNumber == 1) ? 1 : 2;
        break;
      case 1:
        _storyNumber = (choiceNumber == 1) ? 3 : 3;
        break;
      case 2:
        _storyNumber = (choiceNumber == 1) ? 4 : 6;
        break;
      case 3:
        _storyNumber = (choiceNumber == 1) ? 4 : 4;
        break;
      case 4:
        _storyNumber = (choiceNumber == 1) ? 5 : 5;
        break;
      default:
        restart();
        break;
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    // Nếu đến đoạn kết thúc thì chỉ hiện nút chơi lại
    return _storyNumber < 5;
  }
}
