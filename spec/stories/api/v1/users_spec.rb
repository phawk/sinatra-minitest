require_relative '../../../story_helper.rb'

describe 'Api::v1::UsersStory', :story do

  describe 'GET /users' do
    before { get '/api/v1/users' }
    let(:json) { json_parse(last_response.body) }
    let(:users) { json[:users] }

    it 'responds successfully' do
      last_response.status.must_equal 200
      json[:status].must_equal 'success'
    end

    it 'returns 3 users' do
      users.size.must_equal 3
    end
  end

  describe 'POST /users' do
    before do
      post_json(
        '/api/v1/users',
        user: {
          name: 'bob',
          email: 'bob@test.com'
        }
      )
    end

    let(:resp) { json_parse(last_response.body) }

    it { resp[:status].must_equal 'success' }
    it { resp[:user][:name].must_equal 'bob' }
    it { resp[:user][:email].must_equal 'bob@test.com' }
  end
end
