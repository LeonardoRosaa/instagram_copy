import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';
import 'package:instagram_copy_core/widgets/widgets.dart';

class UserStoryIconNameText extends StatelessWidget {
  const UserStoryIconNameText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      padding: const AppEdgeInsetsData.only(
        top: AppSpacingSize.semiSmall,
      ),
      child: AppText.paragraph14(text),
    );
  }
}
