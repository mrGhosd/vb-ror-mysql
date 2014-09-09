class ContractDocumentsController < ApplicationController
  def index
    @contract_documents = ContractDocument.all
  end

  def new
    @contract_document = ContractDocument.new
  end

  def create
    binding.pry
    @contract_document = ContractDocument.new(document_params)
    @contract_document.save
    redirect_to contract_documents_path
  end

  def edit
    @contract_document = ContractDocument.find(params[:id])
  end

  def update
    @contract_document = ContractDocument.find(params[:id])
    @contract_document.update!(document_params)
    redirect_to contract_documents_path
  end

  def destroy

  end

  private
  def document_params
    params.require(:contract_document).permit(:file_name, :main_text, :enabled, :contract_type)
  end
end