class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :body, :vote_count, :post_id

  def vote_count
    object.votes.count
  end

  def post_id
    object.post.id
  end

end
