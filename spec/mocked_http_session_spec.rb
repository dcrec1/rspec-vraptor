require 'spec/spec_helper'

describe MockedHttpSession do

  it "should remove an attribute" do
    session = mocked_http_session
    session.attributes = {'this' => 'attribute'}
    session.remove_attribute('this')
    session.attributes.should be_empty
  end
  
end
