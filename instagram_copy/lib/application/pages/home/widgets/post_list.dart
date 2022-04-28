import 'package:flutter/material.dart';
import 'package:instagram_copy/application/widgets/posts/post.dart';
import 'package:instagram_copy/domain/domain.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const posts = [
      Content(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/62189141_2272560973058733_4422726492698443776_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=pxEAtBCtQwUAX-IgqJy&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT89v0fu6iro1dNDaxzz7PHwXEAYc9e2eUoOgEIpjtas4w&oe=626BC51A&_nc_sid=7bff83',
          username: 'Tom',
          hasStory: true,
        ),
        image:
            'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
        locale: 'London, England',
        description:
            'When a man is tired of London, he is tired of life; for there is in London all that life can afford.',
        likes: [
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/152145893_458344092008163_3404238358364059856_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=UkSKc3UGvOsAX_dgtHt&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8Yu_q-lXihy9K2L1jFihY_gWDYWN8hnCMZUC0m8MWNxw&oe=626C30B2&_nc_sid=7bff83',
            username: 'Andrew',
            hasStory: true,
          ),
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/54204715_314412572609109_8550112162037628928_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M4O69XIg_soAX8Myyuj&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-K85ZbWrowXpmCn1c-dekPnJkMonsWJtgBsAtHN9y11g&oe=626CD1F7&_nc_sid=7bff83',
            username: 'Tobey',
            hasStory: true,
          ),
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/75580713_2639566982749438_1187652783415754752_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=UYFSGXfLxXgAX_fMnsu&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-EyeLmA5pRSlKe42k8G2K4xxa4Vd39EnMvOabv6Yp-GQ&oe=626C8151&_nc_sid=7bff83',
            username: 'Alfred',
            hasStory: true,
          ),
        ],
      ),
      Content(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/152145893_458344092008163_3404238358364059856_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=UkSKc3UGvOsAX_dgtHt&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8Yu_q-lXihy9K2L1jFihY_gWDYWN8hnCMZUC0m8MWNxw&oe=626C30B2&_nc_sid=7bff83',
          username: 'Andrew',
          hasStory: true,
        ),
        image:
            'http://disneyplusbrasil.com.br/wp-content/uploads/2022/02/Andrew-Garfield-Homem-Aranha-Sem-Volta-Para-Casa.jpg',
        description: 'Hey, You\'re Not A Nobody. You\'re A Somebody',
        likes: [
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/62189141_2272560973058733_4422726492698443776_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=pxEAtBCtQwUAX-IgqJy&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT89v0fu6iro1dNDaxzz7PHwXEAYc9e2eUoOgEIpjtas4w&oe=626BC51A&_nc_sid=7bff83',
            username: 'Tom',
            hasStory: true,
          ),
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/54204715_314412572609109_8550112162037628928_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M4O69XIg_soAX8Myyuj&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-K85ZbWrowXpmCn1c-dekPnJkMonsWJtgBsAtHN9y11g&oe=626CD1F7&_nc_sid=7bff83',
            username: 'Tobey',
            hasStory: true,
          ),
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/75580713_2639566982749438_1187652783415754752_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=UYFSGXfLxXgAX_fMnsu&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-EyeLmA5pRSlKe42k8G2K4xxa4Vd39EnMvOabv6Yp-GQ&oe=626C8151&_nc_sid=7bff83',
            username: 'Alfred',
            hasStory: true,
          ),
        ],
      ),
      Content(
        user: User(
          image:
              'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/152145893_458344092008163_3404238358364059856_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=UkSKc3UGvOsAX_dgtHt&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8Yu_q-lXihy9K2L1jFihY_gWDYWN8hnCMZUC0m8MWNxw&oe=626C30B2&_nc_sid=7bff83',
          username: 'Andrew',
          hasStory: true,
        ),
        image:
            'https://images.indianexpress.com/2022/03/spider-man-no-way-home-1200.jpg',
        description: 'I love you guys',
        likes: [
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/75580713_2639566982749438_1187652783415754752_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=UYFSGXfLxXgAX_fMnsu&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-EyeLmA5pRSlKe42k8G2K4xxa4Vd39EnMvOabv6Yp-GQ&oe=626C8151&_nc_sid=7bff83',
            username: 'Alfred',
            hasStory: true,
          ),
          User(
            image:
                'https://instagram.fjoi5-1.fna.fbcdn.net/v/t51.2885-19/54204715_314412572609109_8550112162037628928_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fjoi5-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=M4O69XIg_soAX8Myyuj&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-K85ZbWrowXpmCn1c-dekPnJkMonsWJtgBsAtHN9y11g&oe=626CD1F7&_nc_sid=7bff83',
            username: 'Tobey',
            hasStory: true,
          ),
        ],
      ),
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return AppPadding(
          padding: const AppEdgeInsetsData.only(
            bottom: AppSpacingSize.semiLarge,
          ),
          child: Post(
            post: posts[index],
          ),
        );
      }, childCount: posts.length),
    );
  }
}
