// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodState _$$_FoodStateFromJson(Map<String, dynamic> json) => _$_FoodState(
      availableFood: (json['availableFood'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FoodStateToJson(_$_FoodState instance) =>
    <String, dynamic>{
      'availableFood': instance.availableFood,
      'isLoading': instance.isLoading,
    };
