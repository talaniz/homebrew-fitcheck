class Fitcheck < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI for evaluating job fit"
  homepage "https://github.com/talaniz/fitcheck"
  url "https://files.pythonhosted.org/packages/source/f/fitcheck/fitcheck-0.1.0.tar.gz"
  sha256 "ecb8f61edd417ae66600e7402849bd744a887e46aa756bd69b22902579f5cdb9"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fitcheck", "--help"
  end
end
