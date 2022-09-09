module Api
  module V1
    class ContestsController < ApplicationController
      def index
        contests = Contest.all
        render json: contests, each_serializer: Api::V1::ContestSerializer, status: :ok
      end
    end
  end
end
