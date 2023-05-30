# frozen_string_literal: true

class Url < ApplicationRecord
  belongs_to :user

  MAX_ID = 916_132_831 # shorten url within 5 characters in base62

  def self.encode(id)
    raise ArgumentError, 'ID is too large to be encoded with Base62 using 5 characters' if id > MAX_ID

    Base62.encode(id)
  end

  def self.decode(short_url)
    Base62.decode(short_url).to_i
  end

  validates_presence_of :original_url
  validates_format_of :original_url, with: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
