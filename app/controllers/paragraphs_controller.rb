class ParagraphsController < ApplicationController
  # GET /paragraphs
  # GET /paragraphs.xml
  before_filter :login_required, :except => [:spellchecker]
 ### figure out why the spell checker is bombing out the session!!!
   include Spelling
   
 
    
  def index
    @paragraphs = Paragraph.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paragraphs }
    end
  end

  # GET /paragraphs/1
  # GET /paragraphs/1.xml
  def show
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paragraph }
    end
  end

  # GET /paragraphs/new
  # GET /paragraphs/new.xml
  def new
    @paragraph = Paragraph.new
    @story = Story.find(params[:story_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paragraph }
    end
  end

  # GET /paragraphs/1/edit
  def edit
    @story = Story.find(params[:story_id])
    @paragraph = Paragraph.find(params[:paragraph_id])
  end

  # POST /paragraphs
  # POST /paragraphs.xml
  def create
    @story = Story.find(params[:paragraph][:story_id])
    @paragraph = @story.paragraphs.new(params[:paragraph])

    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to(@paragraph, :notice => 'Paragraph was successfully created.') }
        format.xml  { render :xml => @paragraph, :status => :created, :location => @paragraph }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paragraph.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paragraphs/1
  # PUT /paragraphs/1.xml
  def update
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      if @paragraph.update_attributes(params[:paragraph])
        format.html { redirect_to(@paragraph, :notice => 'Paragraph was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paragraph.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paragraphs/1
  # DELETE /paragraphs/1.xml
  def destroy
    @paragraph = Paragraph.find(params[:id])
    @paragraph.destroy

    respond_to do |format|
      format.html { redirect_to(paragraphs_url) }
      format.xml  { head :ok }
    end
  end
  
   def spellchecker
    headers["Content-Type"] = "text/plain"
    headers["charset"] = "utf-8"
    suggestions = Spelling::check_spelling(params[:params][1], params[:method], params[:params][0])
   # puts "\n\ni got this for my suggestions: #{suggestions.inspect}\n\n"
    results = {"id" => nil, "result" => suggestions, "error" => nil}
    render :text => results.to_json
    return
  end
end
