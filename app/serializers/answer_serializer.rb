class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :answerer, :body, :vote_count, :post_id, :user_vote, :created_at, :question

  delegate :current_user, to: :scope

  def answerer
    a = {username: object.user.username, user_pic: object.user.profile_pic(:small), id: object.user.id}
  end

  def question
    q = {question: object.post.question, poster: object.post.user.username, post_pic: object.post.post_pic(:medium)}
  end

  def vote_count
    object.votes.count
  end

  def post_id
    object.post.id
  end

  def user_vote
    if current_user != nil
      x = object.votes.where(user_id: current_user.id).first
      x != nil ? x : Vote.new
    else
      Vote.new
    end
  end

end
