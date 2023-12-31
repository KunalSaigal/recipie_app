import 'package:recipe_app/domain/entity/forum_data_entity/forum_challenges_data_entity.dart';

class ForumChallengesDataModel extends ForumChallengesDataEntity {
  const ForumChallengesDataModel({
    required super.imageUrl,
    required super.challengeName,
    required super.challengeSubtext,
    super.date = 18,
    super.month = "Oct",
  });
}
