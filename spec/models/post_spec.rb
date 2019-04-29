require "rails_helper"

RSpec.describe Post, type: :model do
  let (:post) { FactoryGirl.build :post }

  subject { post }

  context "when title is blank, empty or nil" do
    titles = [" ", "", nil]
    for title in titles
      before { subject.title = title }
      it { is_expected.not_to be_valid }
    end
  end
end
