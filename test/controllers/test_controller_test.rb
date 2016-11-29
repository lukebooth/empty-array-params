require "test_helper"

class TestControllerTest < ActionController::TestCase

  context "PUT," do
    context "sending an object with empty array values" do
      should "get to the controller (but doesn't)" do
        params = { id: "1", stuff: {"A" => [], "B" => [], "C" => [], "D" => []} }
        put :update, params: params
        assert_equal params.stringify_keys, JSON.parse(response.body)
      end
    end

    context "sending an object with non-empty array values" do
      should "get to the controller (and does)" do
        params = { id: "1", stuff: {"A" => ["1"], "B" => ["2"], "C" => ["3", "4"], "D" => ["5"]} }
        put :update, params: params
        assert_equal params.stringify_keys, JSON.parse(response.body)
      end
    end
  end

end
