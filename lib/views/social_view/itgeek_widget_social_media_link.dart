import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/data_model.dart';

class ItgeekWidgetSocialMediaLink extends StatelessWidget {
  SocialMediaLinkData socialMediaLinkData;
  ItgeekWidgetSocialMediaLink(this.socialMediaLinkData);

  @override
  Widget build(BuildContext context) {
    List<SocialMediaLinkItems> listItems = [];
    socialMediaLinkData.socialMediaLinkItems!
        .map((item) => {listItems.add(item)})
        .toList();

    return Container(
      alignment: Alignment.center,

        padding: EdgeInsets.all(socialMediaLinkData.styleProperties!.backgroundPadding!),
        margin: EdgeInsets.all(socialMediaLinkData.styleProperties!.backgroundMargin!),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        
        height: socialMediaLinkData.styleProperties!.aspectRatio,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return 
                Container(
                  width: socialMediaLinkData.styleProperties!.aspectRatio,
                  child: InkWell(
                    onTap: () {
                      print("clicked${listItems[index].link}");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        listItems[index].iconVisibility! ? SvgPicture.asset(
                          listItems[index].type! == "Instagram" ? 'assets/svg/insta.svg' : 
                          listItems[index].type! == "Facebook" ?  'assets/svg/facebook.svg' : 
                          listItems[index].type! == "Twitter" ?  'assets/svg/twitter.svg' : 
                          listItems[index].type! == "Mail" ?  'assets/svg/mail.svg' : 
                          listItems[index].type! == "TikTok" ?  'assets/svg/tiktok.svg' :  'assets/svg/globe_icon.svg',
                          height: socialMediaLinkData.styleProperties!.aspectRatio!/2,
                          // width: 20,
                        ) : Container(),
                        listItems[index].iconVisibility! ? Text(listItems[index].text!,
                            style: TextStyle(color: Util.getColorFromHex(socialMediaLinkData.styleProperties!.titleTextColor!),
                             fontSize: socialMediaLinkData.styleProperties!.titleTextFontSize)): Container(),
                      ],
                    ),
                              ),
                );
          },
        ));
  }
}