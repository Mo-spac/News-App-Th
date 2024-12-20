import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          // child: CachedNetworkImage(
          //   imageUrl: articleModel.image ??
          //       'https://i0.wp.com/www.southsideblooms.com/wp-content/uploads/2021/12/pexels-lisa-2106037-scaled.jpg?w=1708&ssl=1',
          //   // height: 200,
          //   // width: double.infinity,
          //   // fit: BoxFit.cover,
          //   placeholder: (context, url) => CircularProgressIndicator(),
          //   errorWidget: (context, url, error) => Icon(Icons.error),
          // ),
          child: Image.network(
            // 'https://i0.wp.com/www.southsideblooms.com/wp-content/uploads/2021/12/pexels-lisa-2106037-scaled.jpg?w=1708&ssl=1',
            articleModel.image ??
                'https://i0.wp.com/www.southsideblooms.com/wp-content/uploads/2021/12/pexels-lisa-2106037-scaled.jpg?w=1708&ssl=1',
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
