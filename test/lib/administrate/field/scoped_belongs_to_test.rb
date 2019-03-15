require 'test_helper'

module Administrate
  module Field
    class CodeTest < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil Administrate::Field::ScopedBelongsTo::VERSION
      end

      def test_has_the_correct_partial
        %i[show index form].each do |page|
          author = 1
          field = Administrate::Field::ScopedBelongsTo.new(:author, author, page)
          partial_path = field.to_partial_path

          assert_equal "/fields/belongs_to/#{page}", partial_path
        end
      end
    end
  end
end
