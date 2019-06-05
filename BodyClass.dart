import 'package:flutter/material.dart';
import 'structure.dart';

class bodyclass extends StatelessWidget {
  String dp1='https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  String photo1='https://images.unsplash.com/photo-1533122250115-6bb28e9a48c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
  String caption1="Suppose it to be a wonderful image caption.\n#Instagram#LikeForLike#FirstPic.";
  String username1="rohan02_";
  String dp2="https://images.unsplash.com/photo-1483323323858-4916bde7bd5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      photo2="https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      username2="dvm_joshi",
      caption2="The world is a book, and those who do not travel read only a page.\n#travelling#wanderlust#instapic",
      dp3="https://images.unsplash.com/photo-1525863076872-bd16ca4ceef3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      photo3="https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      username3="vipul75",
      caption3="#Positivity, confidence, and persistence are key in life, so never give up on yourself.\n#motivation #inspiration #8.7",
  dp4="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt0KSdpyzN6SrThuvAsnQ_DnfPs1-fQr0ibXKYwjq-bECdKmJVPA",
 photo4="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVv4GJJk5nMvyarBwkC_zUTlrZz53MgwNe_fVOTZWOEvUrZqeU" ,
      username4="greatness",
  caption4="Mastering others is strength. Mastering yourself is True Power.";


  @override
  Widget build(BuildContext context) {
    return (
        SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            // StrucTure(),

            child: Column(
                children:<Widget>[
                  StrucTure(dp1,username1,photo1,caption1),
                  StrucTure(dp2,username2,photo2,caption2),
                  StrucTure(dp3,username3,photo3,caption3),
                  StrucTure(dp4,username4,photo4,caption4),
                ]
            )


        )

    );
  }
}
