require "faraday_middleware/encoding_converter/version"
require 'faraday_middleware/response_middleware'
require 'faraday_middleware/encoding_converter/converter'

Faraday::Response.register_middleware convert_encoding: FaradayMiddleware::EncodingConverter::Converter