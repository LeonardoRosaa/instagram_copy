import 'package:flutter/material.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/domain/domain.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class HomeStories extends StatelessWidget {
  const HomeStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final items = [
      const YourStory(),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/62189141_2272560973058733_4422726492698443776_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=pxEAtBCtQwUAX-IgqJy&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT89v0fu6iro1dNDaxzz7PHwXEAYc9e2eUoOgEIpjtas4w&oe=626BC51A&_nc_sid=7bff83',
          username: 'Tom',
          hasStory: true,
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/152145893_458344092008163_3404238358364059856_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=UkSKc3UGvOsAX_dgtHt&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8Yu_q-lXihy9K2L1jFihY_gWDYWN8hnCMZUC0m8MWNxw&oe=626C30B2&_nc_sid=7bff83',
          username: 'Andrew',
          hasStory: true,
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/54204715_314412572609109_8550112162037628928_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M4O69XIg_soAX8Myyuj&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-K85ZbWrowXpmCn1c-dekPnJkMonsWJtgBsAtHN9y11g&oe=626CD1F7&_nc_sid=7bff83',
          username: 'Tobey',
          hasStory: true,
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/14624557_371058033231382_4186607646238834688_a.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=qkNxO6vL9CsAX8-IToc&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8TZO0QCBlZWpSWfh5OzN0Wa-76ZyHw6x5K11menRnP7w&oe=626BF440&_nc_sid=7bff83',
          username: 'Willem',
          hasStory: true,
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/75580713_2639566982749438_1187652783415754752_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=UYFSGXfLxXgAX_fMnsu&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-EyeLmA5pRSlKe42k8G2K4xxa4Vd39EnMvOabv6Yp-GQ&oe=626C8151&_nc_sid=7bff83',
          username: 'Alfred',
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/44637158_1411857002279574_2006964524371935232_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=J7JAEVndntsAX8FbJac&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_OW5nQY-aNdanQN6CbTa4dcswPeDiVqUQ_br3XtvUSng&oe=626D77C5&_nc_sid=7bff83',
          username: 'Benedict',
        ),
      ),
      const UserStoryIcon(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/71587958_991900424474559_5045336157496279040_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Bv-z4-PajxAAX8EjTnD&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT9K40W-9FHC6kssbJEN87V3slHNhdq8ova6X9eM4zybug&oe=626D54E9&_nc_sid=7bff83',
          username: 'Jamie',
        ),
      ),
    ];

    return HomeStoriesSizedBox(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const AppEdgeInsetsData.only(
          right: AppSpacingSize.medium,
          left: AppSpacingSize.medium,
          top: AppSpacingSize.semiSmall,
        ).toEdgeInsets(theme),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, _) => const AppSpace.semiLarge(),
        itemBuilder: (context, i) => Column(
          children: [items[i]],
        ),
      ),
    );
  }
}

class HomeStoriesSizedBox extends StatelessWidget {
  const HomeStoriesSizedBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = context.viewport;
    return SizedBox(
      height: mediaQuery.width * 0.24,
      child: child,
    );
  }
}
