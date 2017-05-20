json.extract! complaint, :id, :complaint_text, :religion, :gender, :caste, :location, :complaint_pic, :labels, :status, :assigned_officer, :nature, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
