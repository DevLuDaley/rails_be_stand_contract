class Api::V1::ContractsController < ApplicationController

    # before_action :find_contract #, only: [:update]

def index
	@contracts = Contract.all.order(:created_at)
	render json: @contracts, status: 200
end

def create
    @contract = Contract.create(contract_params)
    render json: @contract, status: 201
  end

def destroy
    contract = Contract.find(params[:id])
    if contract.destroy
      render json: {contractId: contract.id}, status: 200
    end
  end

def update
    @contract = Contract.find(params[:id])

if @contract.update(contract_params)
	render json: @contract, status: 200

	 @contract.update(contract_params)
if @contract.save
		render json: @contract, status: :accepted
else
		render json: { errors: @contract.errors.full_messages }, status: :unprocessible_entity
			end
		end
	end

private
    def contract_params
      params.require(:contract).permit(:type, :name, :duration, :distance)
    end

		def contract_params
				params.permit(:title, :content)
		end
		
		def find_contract
			@contract = Contract.find(params[:id])
		end

end