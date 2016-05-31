module SheetsHelper
  def tweet_sheet_text
    if @sheet.tweet_override.present?
      @sheet.tweet_override
    else
      @sheet.onda.tweet_text if @sheet.onda
    end
  end
end
