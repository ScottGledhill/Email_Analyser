class Email < ActiveRecord::Base
  scope :total_emails,  -> { all.count }
  scope :sent_total,    -> { where(event: "send").count }
  scope :opened_total,  -> { where(event: "open").count }
  scope :clicked_total, -> { where(event: "click").count }

  scope :opened_rate, ->(query) do
    return 0 if opened_total == 0
    count = where(event: "open", email_type: query).count.to_f
    count / opened_total
  end

  scope :click_rate, ->(query) do
    return 0 if clicked_total == 0
    count = where(event: "click", email_type: query).count.to_f
    count / clicked_total
  end
end
