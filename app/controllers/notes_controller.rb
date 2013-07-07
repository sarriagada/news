class NotesController < ApplicationController

  def index
    @notes = Note.order("position")

    respond_to do |format|
      format.html
      format.json { render json: @notes }
    end
  end

  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @note }
    end
  end

  def new
    @note = Note.new
    @categories = Category.all
    respond_to do |format|
      format.html
      format.json { render json: @note }
    end
  end

  def edit
    @note = Note.find(params[:id])
    @categories = Category.all
  end

  def create
    @note = Note.new(params[:note])
    @note.position = 1
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render json: @note, status: :created, location: @note }
      else
        format.html { render action: "new" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to notes_url }
      format.json { head :no_content }
    end
  end

  def sort
    params[:note].each_with_index do |id, index|
      Note.update_all({ position: index+1, section: params[:section] },{ id: id})
    end
    render nothing: true
  end
end
