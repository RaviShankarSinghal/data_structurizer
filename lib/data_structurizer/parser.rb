# frozen_string_literal: true

module DataStructurizer
  class Parser

    def self.parse(file_path)
      ext = File.extname(file_path).downcase

      case ext
      when '.csv'
        Parsers::CsvFileParser.new(file_path).process
      when '.xlsx', '.xls'
        Parsers::ExcelFileParser.new(file_path).process
      else
        raise ArgumentError, "Unsupported file type: #{ext}. Please upload file either CSV or Excel File"
      end
    end
  end
end