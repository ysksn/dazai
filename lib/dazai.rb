require 'csv'
require 'dazai/version'

module Dazai
  DEFAULT_BOOK = :romanesque
  BOOKS_PATH   = Pathname(File.expand_path('books', __dir__))

  class << self
    def sentence
      send(DEFAULT_BOOK).sample.sample
    end

    def paragraph(title: DEFAULT_BOOK)
      send(title).sample.join("\n")
    end

    def paragraphs(title: DEFAULT_BOOK, count: nil)
      c = count || [*2..5].sample

      paragraphs = send(title).sample(c).map do |paragraph|
        paragraph.join("\n")
      end

      paragraphs.join("\n\n")
    end

    private

    %w[romanesque].each do |title|
      define_method(title) do
        return class_variable_get(:"@@#{title}") if class_variable_defined?(:"@@#{title}")
        save(title)
      end
    end

    def save(title)
      file = BOOKS_PATH.join("#{title}.csv")
      class_variable_set(:"@@#{title}", CSV.read(file))
    end
  end
end

if Module.const_defined?('::Faker') && !Module.const_defined?('::Faker::Dazai')
  ::Faker::Dazai = Dazai
end
