require 'rails_helper'

RSpec.describe CoursesController do
  describe "GET #index" do
    it "populates an array of courses" do
      course = Course.create
      get '/courses/index'
      assigns(:courses).should eq([course])
    end
  end
end
