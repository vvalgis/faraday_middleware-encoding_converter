module FaradayMiddleware
  module EncodingConverter
    class Converter < ResponseMiddleware

      define_parser do |body|
        unless body.strip.empty?
          matches = body.match(/encoding="(.*?)"/)
          encoding = matches ? matches[1] : 'utf-8'
          body.force_encoding(encoding).encode('utf-8', undef: :replace)
        end
      end

    end
  end
end