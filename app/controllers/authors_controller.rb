class AuthorsController < ApplicationController
  def index #index usually shows a list
    @authors = Author.all
    @title = "About Our Time Travelers"
    @subheading = "Your favorite authors who have kicked the bucket."
  end

  def about
    @title = "About the Dead Writer's Delorean"
    @subheading = "Brought to you by Doc Brown and 1.21 Gigawatts!"
  end

end
