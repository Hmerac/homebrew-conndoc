class Conndoc < Formula
    include Language::Python::Virtualenv
  
    desc "Command-line tool for diagnosing network connectivity"
    homepage "https://github.com/mertacikportali/conndoc"
    url "https://files.pythonhosted.org/packages/7c/2b/287149a75b799d2a8f3f90cdd11d754b16b8cdcf15699013b3c2981f8bb8/conndoc-0.2.0.tar.gz"
    sha256 "1e3976731f3cd61f77d6c9d1763ccf648af43ee6a3a5a2671c56103bd29b4f13"
    license "Apache-2.0"
  
    depends_on "python@3.11"
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "#{bin}/conndoc", "--help"
    end
  end
