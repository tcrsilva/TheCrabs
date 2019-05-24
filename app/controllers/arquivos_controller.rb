class ArquivosController < ApplicationController

  def index
    @arquivos = Arquivo.order(id: :desc)
  end

  def upload_arquivo
    @arquivo = Arquivo.new
    @arquivo.diretorio_arquivo = "#{Rails.root}/arquivos/#{Time.now.strftime("%d%m%Y%H%M%S%6N")}"
    Arquivo.upload_arquivo(params[:arquivo], @arquivo.diretorio_arquivo)
    @arquivo.save
    

    redirect_to action: :index
  end
  
  def diretorio_arquivo
  end

  def download_arquivo
    Arquivo.download_arquivo(params[:diretorio])
    send_file params[:diretorio]+'.zip'
  end

end