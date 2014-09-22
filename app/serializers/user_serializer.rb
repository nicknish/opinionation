class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic_medium

  def profile_pic_medium
    object.profile_pic(:medium)
  end
end
