Pod::Spec.new do |s|
  s.name         = "nanopb"
  s.version      = "0.3.8"
  s.summary      = "Protocol buffers with small code size."

  s.description  = <<-DESC
                    Nanopb is a plain-C implementation of Google's
                    [Protocol Buffers][pb] data format. It is targeted at
                    32 bit microcontrollers, but is also fit for
                    other embedded systems with tight (2-10 kB ROM,
                    <1 kB RAM) memory constraints.

                     [pb]: https://developers.google.com/protocol-buffers/
                   DESC

  s.homepage     = "http://koti.kapsi.fi/jpa/nanopb/"
  s.license      = { :type => 'zlib', :file => 'LICENSE.txt' }
  s.author       = { "Petteri Aimonen" => "jpa@nanopb.mail.kapsi.fi" }
  s.source       = { :http => "http://koti.kapsi.fi/~jpa/nanopb/download/nanopb-#{s.version}.tar.gz" }
  s.requires_arc = false
	s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1' }

  s.source_files  = '*.{h,c}'
  s.public_header_files  = '*.h'

  s.subspec 'encode' do |e|
    e.public_header_files = ['pb.h', 'pb_encode.h', 'pb_common.h']
    e.source_files = ['pb.h', 'pb_common.h', 'pb_common.c', 'pb_encode.h', 'pb_encode.c']
  end

  s.subspec 'decode' do |d|
    d.public_header_files = ['pb.h', 'pb_decode.h', 'pb_common.h']
    d.source_files = ['pb.h', 'pb_common.h', 'pb_common.c', 'pb_decode.h', 'pb_decode.c']
  end
end
