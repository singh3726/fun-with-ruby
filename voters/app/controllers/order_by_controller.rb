class OrderByController < ApplicationController
  def index
  end

  def phnno
    @mem = Member.order(:phno)
  end

  def by_phno
  @mem = Member.order(:phno)
    respond_to do |format|
      format.html
      format.csv{send_data @mem.to_csv}
     format.xls#{send_data @mem.to_csv(col_sep: "\t")}
    end
  end

  def postal_code
    @mem = Member.order(:postal_code)

  end

  def by_postal_code
  @mem = Member.order(:postal_code)
    respond_to do |format|
      format.html
      format.csv{send_data @mem.to_csv}
     format.xls#{send_data @mem.to_csv(col_sep: "\t")}
    end
  end

  def address
    @mem = Member.order(:address)
  end

def by_address
@mem = Member.order(:address)
  respond_to do |format|
    format.html
    format.csv{send_data @mem.to_csv}
   format.xls#{send_data @mem.to_csv(col_sep: "\t")}
  end
end
  def poll
    @mem = Member.order(:poll_no)
  end

  def by_poll
  @mem = Member.order(:poll_no)
    respond_to do |format|
      format.html
      format.csv{send_data @mem.to_csv}
     format.xls#{send_data @mem.to_csv(col_sep: "\t")}
    end
  end

  def captionName
    @mem = Member.order(:caption_name)
  end

  def by_captionName
  @mem = Member.order(:caption_name)
    respond_to do |format|
      format.html
      format.csv{send_data @mem.to_csv}
     format.xls#{send_data @mem.to_csv(col_sep: "\t")}
    end
  end
end
