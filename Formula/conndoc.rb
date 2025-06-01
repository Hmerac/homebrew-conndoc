class Conndoc < Formula
    include Language::Python::Virtualenv
  
    desc "Command-line tool for diagnosing network connectivity"
    homepage "https://github.com/mertacikportali/conndoc"
    url "https://files.pythonhosted.org/packages/3b/0e/4ed9020750e459ee3d697dd0f1209a7ab0f122070efe9f9beb6cc87f08f6/conndoc-0.2.2.tar.gz"
    sha256 "817c040e7223c92acc6000b0a283cbd540ebc691d6e3b5c63f2533d5038dd730"
    license "Apache-2.0"
  
    depends_on "python@3.11"
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/conndoc", "--help"
    end
  end
