require 'formula'

class Saml2aws < Formula
  homepage 'https://github.com/versent/saml2aws'
  url 'https://github.com/Versent/saml2aws/releases/download/v2.0.0/saml2aws_2.0.0_darwin_amd64.tar.gz'
  version '1.8.4'
  sha256 '2e1d06ac475f975d86ddc4b3559996d8a0c97308616aa4f85f42bb23c83960bc'

  depends_on :arch => :x86_64

  def install
    bin.install 'saml2aws'
  end

  test do
    system "#{bin}/saml2aws"
  end
end
