import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

class StarsRatingWidget extends StatelessWidget {
  const StarsRatingWidget({super.key,required this.rating,this.starsSize=20,this.between=0.0});
 final double rating;
 final double starsSize;
 final double between;
  @override
  Widget build(BuildContext context) {
    return StarRating(
              mainAxisAlignment: MainAxisAlignment.center,
              length: 5,
              rating: rating,
              between: between,
              starSize: starsSize,
              color: Colors.yellow,
              
            )
          
        
      ;
  }
}