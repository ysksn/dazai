require 'faker'
require 'test_helper'

class DazaiTest < Minitest::Test
  def test_that_it_has_a_version_number
    assert ::Dazai::VERSION
  end

  def test_it_has_default_book
    assert ::Dazai::DEFAULT_BOOK
  end

  def test_it_has_book_path
    subject = ::Dazai::BOOKS_PATH

    assert subject.exist?
    assert subject.directory?
  end

  def test_sentence
    subject = ::Dazai.sentence

    assert_kind_of String, subject
    refute_match(/\n/,     subject)
  end

  def test_paragraph
    subject = ::Dazai.paragraph

    assert_kind_of String, subject
    assert_match(/\n/,     subject)
  end

  def test_paragraph_with_title
    subject = ::Dazai.paragraph(title: :romanesque)

    assert_kind_of String, subject
    assert_match(/\n/,     subject)
  end

  def test_paragraphs
    subject = ::Dazai.paragraphs

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
  end

  def test_paragraphs_with_title
    subject = ::Dazai.paragraphs(title: :romanesque)

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
  end

  def test_paragraphs_with_count
    subject = ::Dazai.paragraphs(count: 5)

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
    assert_equal 5,        subject.split("\n\n").count
  end
end

class ::Faker::DazaiTest < Minitest::Test
  def test_sentence
    subject = Faker::Dazai.sentence

    assert_kind_of String, subject
    refute_match(/\n/,     subject)
  end

  def test_paragraph
    subject = Faker::Dazai.paragraph

    assert_kind_of String, subject
    assert_match(/\n/,     subject)
  end

  def test_paragraph_with_title
    subject = Faker::Dazai.paragraph(title: :romanesque)

    assert_kind_of String, subject
    assert_match(/\n/,     subject)
  end

  def test_paragraphs
    subject = Faker::Dazai.paragraphs

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
  end

  def test_paragraphs_with_title
    subject = Faker::Dazai.paragraphs(title: :romanesque)

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
  end

  def test_paragraphs_with_count
    subject = Faker::Dazai.paragraphs(count: 5)

    assert_kind_of String, subject
    assert_match(/\n\n/,   subject)
    assert_equal 5,        subject.split("\n\n").count
  end
end
