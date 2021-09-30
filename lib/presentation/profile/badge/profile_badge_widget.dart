import 'package:flutter/cupertino.dart';
import 'package:movie_app/presentation/images/circular_image_widget.dart';

class ProfileBadgeWidget extends StatefulWidget {
  ProfileBadgeWidget({Key? key}) : super(key: key);

  @override
  _ProfileBadgeWidgetState createState() => _ProfileBadgeWidgetState();
}

class _ProfileBadgeWidgetState extends State<ProfileBadgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularImageWidget(
            imageUrl:
                'https://selular.id/wp-content/uploads/2021/05/Berita-Ke-5-Instagram.jpg',
          ),
        ],
      ),
    );
  }
}