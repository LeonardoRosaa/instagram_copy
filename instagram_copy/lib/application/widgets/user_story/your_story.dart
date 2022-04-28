import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: const [
            UserStoryIconSizedBox(
              child: CircularImage(
                'https://static.truckersmp.com/avatarsN/1478718.1538351271.jpg',
              ),
            ),
            AddStoryPositioned(),
          ],
        ),
        const UserStoryIconNameText('Your story'),
      ],
    );
  }
}

class AddStoryPositioned extends StatelessWidget {
  const AddStoryPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: -5,
      right: -5,
      child: AppIcon.addStory(),
    );
  }
}
