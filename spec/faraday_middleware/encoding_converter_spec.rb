require 'spec_helper'

RSpec.describe FaradayMiddleware::EncodingConverter::Converter do

  let(:response_body) do
    <<-XML.gsub(/^\s{6}/s, '').strip.encode(encoding, undef: :replace)
      <?xml version="1.0" standalone="yes" encoding="#{encoding_text}"?>
      <woot>
        <node num="one">first</node>
        <node num="two">second</node>
        <node num="three">third</node>
      </woot>
    XML
  end

  let(:connection) do
    Faraday.new do |builder|
      builder.response :convert_encoding
      builder.adapter :test do |stub|
        stub.get('/url') { [200, {}, response_body] }
      end
    end
  end

  subject { connection.get('/url').body }

  describe 'convert response encoding' do
    context 'encoding is set to windows-1251' do
      let(:encoding) { Encoding::Windows_1251 }
      let(:encoding_text) { 'windows-1251' }
      it('should convert') { expect(subject.encoding).to eql(Encoding::UTF_8) }
    end

    context 'encoding is set to utf-8' do
      let(:encoding) { Encoding::UTF_8 }
      let(:encoding_text) { 'utf-8' }
      it('should not convert') { expect(subject.encoding).to eql(Encoding::UTF_8) }
    end
  end

end