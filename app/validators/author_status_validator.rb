class AuthorStatusValidator < ActiveModel::Validator
  def validate(record)
    if record.author.status != "Admin"
      record.errors[:base] << "a post must have an author with status admin."
    end
  end
end
