# require 'rails_helper'

# RSpec.describe SponsoredPost, type: :model do
#    let(:name) { RandomData.random_sentence }
#    let(:description) { RandomData.random_paragraph }
#    let(:title) { RandomData.random_sentence }
#    let(:body) { RandomData.random_paragraph }
#    let(:topic) { Topic.create!(name: name, description: description) }    
#    let(:sponsored_post) { topic.sponsored_post.create!(title: title, body: body) }    
   
#    it { is_expected.to belong_to(:topic) }  
   
#    it { is_expected.to validate_presence_of(:name) }
#    it { is_expected.to validate_presence_of(:description) }
#    it { is_expected.to validate_length_of(:name).is_at_least(5) }
#    it { is_expected.to validate_length_of(:description).is_at_least(15) }
   
#    describe "attributes" do
#     it "has title and body attributes" do
#          expect(sponsored_post).to have_attributes(title: title, body: body)
         
#     end
#    end
# end
