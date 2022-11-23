class ItemsController < ApplicationController
  #before_action :authenticate_user!, expect: [:index, :show]
  #ログインしていないユーザーがトップ画面ではなく、ログイン画面に遷移す設定のコード
  
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
  end

end
