# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class K8slogin < Formula
  desc "k8slogin allows you to create/refresh your kubernetes token"
  homepage "https://github.com/mytaxi/k8slogin"
  url "https://github.com/mytaxi/k8slogin/archive/master.tar.gz"
  version "0.1"
  sha256 "908f26be0362982973bfec9c389409e445f660fb9c746be86571b0d6a8e46302"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/mytaxi/k8slogin").install buildpath.children
    cd "src/github.com/mytaxi/k8slogin" do
      system "dep", "ensure"
      system "go", "build", "-o", "k8slogin"
      prefix.install_metafiles
    end
  end

  test do
    system "true"
  end
end
