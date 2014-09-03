require_relative '../../../story_helper.rb'

describe 'Api::v1::Story', :story do
  it 'responds' do
    get '/api/v1'
    last_response.status.must_equal 200
  end
end
