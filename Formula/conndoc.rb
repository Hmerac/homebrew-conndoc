class Conndoc < Formula
    include Language::Python::Virtualenv
  
    desc "Command-line tool for diagnosing network connectivity"
    homepage "https://github.com/mertacikportali/conndoc"
    url "https://files.pythonhosted.org/packages/e9/3a/29bf8279df3de1db684d1554d06f8b6a07c40bbe5e1286408b5d4faf4d94/conndoc-0.1.0.tar.gz"
    sha256 "d03db0e059c3b147b7bc2fa3990595f1d5db27ac0d6df2c5da5341420306210c"
    license "Apache-2.0"
  
    depends_on "python@3.11"
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/conndoc", "--help"
    end
  end