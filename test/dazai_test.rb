require 'faker'
require 'test_helper'

class DazaiTest < Minitest::Test
  [::Dazai, Faker::Dazai].each do |klass|
    @@klass = klass

    def test_that_it_has_a_version_number
      assert ::Dazai::VERSION
    end

    def test_it_has_default_book
      assert @@klass::DEFAULT_BOOK
    end

    def test_it_has_book_path
      subject = @@klass::BOOKS_PATH

      assert subject.exist?
      assert subject.directory?
    end

    def test_sentence
      subject = @@klass.sentence

      assert_kind_of String, subject
      refute_match(/\n/,     subject)
    end

    def test_paragraph
      subject = @@klass.paragraph

      assert_kind_of String, subject
      assert_match(/\n/,     subject)
    end

    def test_paragraph_with_title
      subject = @@klass.paragraph(title: :romanesque)

      assert_kind_of String, subject
      assert_match(/\n/,     subject)
    end

    def test_paragraphs
      subject = @@klass.paragraphs

      assert_kind_of String, subject
      assert_match(/\n\n/,   subject)
    end

    def test_paragraphs_with_title
      subject = @@klass.paragraphs(title: :romanesque)

      assert_kind_of String, subject
      assert_match(/\n\n/,   subject)
    end

    def test_paragraphs_with_count
      subject = @@klass.paragraphs(count: 5)

      assert_kind_of String, subject
      assert_match(/\n\n/,   subject)
      assert_equal 5,        subject.split("\n\n").count
    end
  end
end
