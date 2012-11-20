class OrderController < ApplicationController


	# GET /order
	# GET /order.json
	def index
		@order = Order.find :all

		respond_to do |format|
			format.html { redirect_to "/" }
			format.json { render :json => @order }
		end
	end


	# GET /order/1
	# GET /order/1.json
	def show
		@order = Order.find :all, :conditions => { :order_id => params[:id] }

		respond_to do |format|
			format.html { redirect_to "/" }
			format.json { render :json => @order }
		end
	end


	# POST /order/neworder
	# POST /order/neworder.json
	def neworder
		@order = Order.new params

		respond_to do |format|
			if @order.save
				format.html { render :html => @order }
				format.json { render :json => { :return => "1" } }
			else
				format.html { render :html => @order.errors, :status => :unprocessable_entity }
				format.json { render :json => @order.errors, :status => :unprocessable_entity }
			end
		end
	end


	# GET /order/getorder
	# GET /order/getorder.json
	def getorder
		@order = Order.find :all, :conditions => { :order_id => params[:order_id] }

		respond_to do |format|
			format.html { render :html => @order }
			format.json { render :json => @order }
		end
	end


	# GET /order/fetchallorder
	# GET /order/fetchallorder.json
	def fetchallorder
		@order = Order.find :all

		respond_to do |format|
			format.html { render :html => @order }
			format.json { render :json => @order }
		end
	end


	# POST /order/updateorder
	# POST /order/updateorder.json
	def updateorder
		@order = Order.find :all, :conditions => { :order_id => params[:order_id] }

		respond_to do |format|
			if @order.update_attributes params
				format.html { redirect_to @order }
				format.json { render :json => {:return => "1"} }
			else
				format.html { render :html => @order.errors, :status => :unprocessable_entity }
				format.json { render :json => @order.errors, :status => :unprocessable_entity }
			end
		end
	end


	# POST /order/returnorder
	# POST /order/returnorder.json
	def returnorder
		@order = Order.find :all, :conditions => { :order_id => params[:order_id] }

		respond_to do |format|
			if @order.update_attributes params
				format.html { redirect_to @order }
				format.json { render :json => {:return => "1"} }
			else
				format.html { render :html => @order.errors, :status => :unprocessable_entity }
				format.json { render :json => @order.errors, :status => :unprocessable_entity }
			end
		end
	end


	# POST /order/statusorder
	# POST /order/statusorder.json
	def statusorder
		@order = Order.find :all, :conditions => { :order_id => params[:order_id] }

		respond_to do |format|
			if @order.update_attributes params
				format.html { redirect_to @order }
				format.json { render :json => {:return => "1"} }
			else
				format.html { render :html => @order.errors, :status => :unprocessable_entity }
				format.json { render :json => @order.errors, :status => :unprocessable_entity }
			end
		end
	end


end