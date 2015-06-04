require 'rails_helper'

describe Post do

  it 'must have a title' do
    post = Post.new
    expect(post.valid?).to eq false
  end

  it 'must have an author' do
    post = Post.new(title: 'My First Blog')
    expect(post.valid?).to eq false
  end

  it 'must have content' do
    post = Post.new(title: 'My First Blog', author: 'Jen Mah')
    expect(post.valid?).to eq false
  end

  it 'must have a date' do
    post = Post.new(title: 'My First Blog', author: 'Jen Mah', content: 'Lorem ipsum this is my bloggity blog blog.')
    expect(post.valid?).to eq false
  end

end
