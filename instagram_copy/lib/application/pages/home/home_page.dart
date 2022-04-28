import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/application/pages/home/widgets/widgets.dart';
import 'package:instagram_copy_core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBar: HomeAppBar(),
      bottomBar: NavBar(),
      child: AppCustomScrollView(
        children: [
          SliverToBoxAdapter(
            child: HomeStoriesHeader(),
          ),
          PostList(),
        ],
      ),
    );
  }
}
