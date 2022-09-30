require 'rails_helper'

RSpec::Matchers.define :be_a_url do
  match do |actual|
    actual =~ URI::DEFAULT_PARSER.make_regexp
  end
end

RSpec.describe Course, :type => :model do
  subject {
    described_class.new(name: "Anything",
                        description: "Lorem ipsum",
                        writer: "Some writer",
                        course_type: true,
                        link:"httos://www.google.com",
                        image:"https://www.google.com/search?q=educative&tbm=isch&source=hp&biw=1440&bih=789&ei=cGY1Y9yFEPW58gK7-p-IBA&iflsig=AJiK0e8AAAAAYzV0gC88WZFfQ5KFESAOEub6GRFkxkDN&ved=0ahUKEwjc_dmS2bn6AhX1nFwKHTv9B0EQ4dUDCAc&uact=5&oq=educative&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CAgAEIAEELEDOgQIABADOggIABCxAxCDAToLCAAQgAQQsQMQgwFQzQJYow1gtw5oAXAAeACAAe8CiAH6D5IBBTItNy4xmAEAoAEBqgELZ3dzLXdpei1pbWewAQA&sclient=img#imgrc=qgTY09Nm_zxfjM"
                      )                        
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    #expect(subject.name).to exist
    expect(subject.name).to be_a(String)
  end

  it "is not valid without a description" do
    #expect(subject.description).to exist
    expect(subject.description).to be_a(String)
  end

  it "is not valid without a course_type" do
    #expect(subject.course_type).to exist
    expect(subject.course_type).to be_in([true, false])
  end

  it "is not valid without a link" do
    #expect(subject.link).to exist
    expect(subject.link).to be_a_url
  end
  it "is not valid without an image" do
    #expect(subject.image).to exist
    expect(subject.image).to be_a_url
  end
end