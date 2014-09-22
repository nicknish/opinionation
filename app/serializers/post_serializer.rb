class PostSerializer < ActiveModel::Serializer
  attributes :id, :question, :poster, :post_pic, :post_favorite

  delegate :current_user, to: :scope

  def poster
    user = {username: object.user.username, profile_pic: object.user.profile_pic(:small), id: object.user.id}
  end

  def post_pic
    object.post_pic ? object.post_pic(:large) : object.user.profile_pic(:large)
  end

  #refactor to move to AnswerSerializer?
  def post_favorite
    if current_user != nil
      if object.favorites.exists?(user_id: current_user.id)
        object.favorites.where(user_id: current_user.id).first
      else
        Favorite.new
      end
    else
      Favorite.new
    end
  end

end
