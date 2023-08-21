require 'test_helper'

class RailsreactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @railsreact = railsreacts(:one)
  end

  test 'should get index' do
    get railsreacts_url, as: :json
    assert_response :success
  end

  test 'should create railsreact' do
    assert_difference('Railsreact.count') do
      post railsreacts_url, params: { railsreact: { body: @railsreact.body, title: @railsreact.title } }, as: :json
    end

    assert_response :created
  end

  test 'should show railsreact' do
    get railsreact_url(@railsreact), as: :json
    assert_response :success
  end

  test 'should update railsreact' do
    patch railsreact_url(@railsreact), params: { railsreact: { body: @railsreact.body, title: @railsreact.title } },
                                       as: :json
    assert_response :success
  end

  test 'should destroy railsreact' do
    assert_difference('Railsreact.count', -1) do
      delete railsreact_url(@railsreact), as: :json
    end

    assert_response :no_content
  end
end
