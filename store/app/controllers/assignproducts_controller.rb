class AssignproductsController < ApplicationController

                def index
                  @products = Product.all
                end
              
                def show
                #   @product = Product.find(params[:id])
                end
              
                def new
                  @product = Product.new
                end
                
                def action

                        puts "hi sddddddd4444444444444444444444444, #{params[:checked]}"
                        redirect_to categories_path

                      end
             

                end



