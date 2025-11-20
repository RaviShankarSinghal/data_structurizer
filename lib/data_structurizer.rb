# frozen_string_literal: true

require_relative "data_structurizer/version"
require_relative "data_structurizer/parser"
require_relative "data_structurizer/parsers/csv_file_parser"
require_relative "data_structurizer/parsers/excel_file_parser"

module DataStructurizer
  class Error < StandardError; end
  # Your code goes here...
end
