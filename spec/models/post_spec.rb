require 'rails_helper'

RSpec.describe Post, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:post) { Post.create!(title: "New post title", body: "New post body" ) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New post title", body: "New post body")
    end
  end
  
end
