class MemberController < ApplicationController
  def index
  end

  def new
      @mem = Member.new(per_parms)

      if @mem.save
        flash[:notice]="Member Added Successfully"
        redirect_to(:controller=>'member/index')
       else render('index')
       flash[:notice]="Member Not Added "
      end

    end


  def edit
  end
def export
  @mem = Member.all
  respond_to do |format|
    format.html
    format.csv{send_data @mem.to_csv}
   format.xls#{send_data @mem.to_csv(col_sep: "\t")}
  end
end

  def import
Member.import(params[:file])
redirect_to(:controller=>'member/read')
flash[:notice]="Member Added Successfully"
  end

  def read
    @mem = Member.all
  end



  private
    def per_parms
      params.require(:mem).permit(:first_name,:last_name,:address,:phno,:email,:postal_code,:poll_no,:caption_name)
  end

end
