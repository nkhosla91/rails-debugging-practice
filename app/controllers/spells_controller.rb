class SpellsController < ApplicationController

    def index
        @spells = Spell.all.sort_by{|spell_hash| spell_hash[:name]}
    end

    def show
        @spell = Spell.find(params[:id])
        @favorite_spell_ids = FavoriteSpell.all.select{|s| s.spell_id == @spell.id}
        @wizard_ids = @favorite_spell_ids.map{|s| s.wizard_id}
        @wizards = Wizard.all
    end

    def new
        @spell = Spell.new
    end

    def create
        @spell = Spell.new(name: params[:spell][:name], description: params[:spell][:description] )
        @spell.save 
        redirect_to spell_path(@spell.id)
    end

end
