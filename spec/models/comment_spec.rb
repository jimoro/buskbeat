require 'rails_helper'

RSpec.describe Comment, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:post) { Post.create!(title: "New post title", body: "New post body" ) }
  let(:comment) { Comment.create!(body: 'Comment body', post: post) }

  describe "attributes" do
    it "has a body attribute" do
      expect(comment).to have_attributes(body: "Comment body")
    end
  end

end
