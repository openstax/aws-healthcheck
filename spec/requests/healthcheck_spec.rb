require 'spec_helper'

RSpec.describe 'healthcheck', type: :request do
  [ '/ping', '/ping/' ].each do |path|
    context path do
      it 'returns 200 OK and does not log calls to the endpoint' do
        expect(Rails.logger).not_to receive(:info)

        get path

        expect(response).to be_ok
      end
    end
  end
end
