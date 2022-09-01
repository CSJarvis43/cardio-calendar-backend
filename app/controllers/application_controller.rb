class ApplicationController < ActionController::API
    before_action :authorized
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    SECRET_KEY = ENV["SECRET_KEY"]

    def encode_token(payload)
        JWT.encode(payload, SECRET_KEY)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, SECRET_KEY)
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find(user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
    end

    private

    def record_invalid(exc)
        render json: { errors: exc.record.errors.full_messages }, status: :unprocessable_entity
    end

    def record_not_found(exc)
        render json: { error: "#{exc.model} not found"}, status: :not_found
    end
end
