# frozen_string_literal: true

# create a test that verifies the schema of the Post model and tests for attributes

require 'rails_helper'
# specifies the test is for the Post model in the Rails app.
RSpec.describe Post, type: :model do
  # Test for post creation and attributes
  # describes the test: Post object is valid when alll required attributes are present.
  it 'post onject is valid with valid attributes' do
    # creates a new Post object with valid attributes.
    post = Post.new(week: 1, digital_discipline: 'MyString', date: '2024-08-29', body: 'MyText')
    expect(post).to be_valid # expects the Post object to be valid according to validations defined in the Post model.
  end
end
