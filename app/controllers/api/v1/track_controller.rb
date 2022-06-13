# frozen_string_literal: true

module Api
  module V1
    class TrackController < ApiController
      def index
        render json: TrackSerializer.new(Track.all).serialized_json
      end

      def show
        render json: TrackSerializer.new(Track.find_by(id: params[:id])).serialized_json
      end
    end
  end
end
