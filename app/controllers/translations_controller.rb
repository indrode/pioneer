class TranslationsController < ApplicationController
  
  def index
    @translations = TRANSLATION_STORE
    
    @locales = []
    @translations.keys.each do |k|
      locale = k.split('.').first
      @locales << locale unless @locales.include?(locale)
    end
  end

  def create
    I18n.backend.store_translations(params[:locale], {params[:key] => params[:value]}, :escape => false)
    redirect_to translations_url, :notice => "Updated translations."
  end
end
