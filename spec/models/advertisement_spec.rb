require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let (:advertisment) {Advertisement.create!}
  
  describe "attributes" do
      it "should respond to title" do
          expect(advertisment).to respond_to(:title)
      end
      it "should respond to copy" do
          expect(advertisment).to respond_to(:copy)
      end
      it "should respond to price" do
          expect(advertisment).to respond_to(:price)
      end
  end
end
