require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v1.8.4/saml2aws_1.8.4_darwin_amd64.tar.gz'
  version '1.8.4'
  sha256 '949e01fb03449ebc8d56a3ef8ed1a61fc11cad11e41270bf2aefabaf6662038c'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
