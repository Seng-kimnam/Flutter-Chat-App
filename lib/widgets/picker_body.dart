import "package:flutter/material.dart";


import "package:flutter_project/models/pixel_ford_image.dart";
import "package:flutter_project/repo/image_repository.dart";
class NetworkImagePickerBody extends StatelessWidget {

   NetworkImagePickerBody({super.key });
  @override
  final ImageRepository imgRepo = ImageRepository();

  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelFordImage>>(
        future: imgRepo.getNetworkImageList(), builder: (BuildContext context , AsyncSnapshot<List<PixelFordImage>> snapshot){
      if(snapshot.hasData) {
        return GridView.builder( itemCount: snapshot.data?.length, itemBuilder: (context , index ) {
          return Image.network(snapshot.data![index].urlSmallSize);

            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: MediaQuery.of(context).size.width * 0.5

        ),
          );


      }
      return CircularProgressIndicator();

    }

    );
  }
}
