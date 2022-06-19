# frozen_string_literal: true

module Api
  module V1
    class TrackController < ApiController
      def index
        render json: TrackSerializer.new(Track.with_attached_track).serialized_json
      end

      def show
        render json: TrackSerializer.new(Track.find_by(id: params[:id])).serialized_json
      end

      def create
        track = Track.new(track_attributes)

        if track.save
          render json: { success: true }, status: 201
        else
          render json: { success: false, errors: track.errors }, status: 400
        end
      end

      def destroy
        track = Track.find(params[:id])

        if track.destroy
          render json: { success: true }, status: 201
        else
          render json: { success: false, errors: track.errors }, status: 400
        end
      end

      def search
        render json: TrackSerializer.new(Track.search_by_title(params['query'])).serialized_json
      end

      private

      def track_attributes
        attributes = params.require(:track)

        return attributes.permit(:title, :author, :image_cover, :track) unless attributes[:image_cover].nil?

        attributes.delete(:image_cover)
        attributes.permit(:title, :author, :track)
      end
    end
  end
end
