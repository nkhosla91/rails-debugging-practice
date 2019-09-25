class FavoriteSpellsController < ApplicationController

    def index
        @favorite_spells = FavoriteSpell.all
    end

    def new
        @wizard = Wizard.find(params[:id])
        @spells = Spell.all     
        @favorite_spell = FavoriteSpell.new
        flash @wizard
    end

    def create
        # byebug
        @favorite_spell = FavoriteSpell.create(wizard_id: params[:favorite_spell][:wizard_id], spell_id: params[:favorite_spell][:spell_id])
        @favorite_spell.save
        # byebug
        redirect_to wizard_path( params[:favorite_spell][:wizard_id])
    end


end