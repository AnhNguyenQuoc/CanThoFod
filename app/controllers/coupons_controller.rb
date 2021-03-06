class CouponsController < ApplicationController

    before_action :current_cart, only: [:validate]

    def index
        @coupons = Coupon.all 
    end 

    def new
        @coupon = Coupon.new
    end


    def create
        @coupon = Coupon.create(coupon_params)
        if @coupon.save
            flash[:success] = "Tạo mã thành công"
            redirect_to admin_coupons_path
        else 
            flash[:danger] = "Có lỗi xảy ra"
            render 'new'
        end 
    end

    def destroy
        @coupon = Coupon.find(params[:id])
        flash[:success]="Xóa coupon thành công"
        redirect_to admin_coupons_path
        @coupon.destroy
    end

    def validate
        coupon = Coupon.find_by(code: params[:id])
        if coupon.present? 
            render json: {valid: coupon.is_valid?, amount: coupon.amount}
        else 
            render json: {valid: false }
        end
    end
    private

    def coupon_params
        params.require(:coupon).permit(:code, :amount, :expiration)
    end
end
