class Macnetmonitor < Formula
  include Language::Python::Virtualenv

  desc "macOS Network Monitor - TUI for monitoring network interfaces and process connections"
  homepage "https://github.com/libardoram/macnetmonitor"
  url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.12"

  resource "psutil" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "textual" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "markdown-it-py" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "mdit-py-plugins" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "rich" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "typing-extensions" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "platformdirs" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "pygments" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  resource "mdurl" do
    url "https://github.com/libardoram/macnetmonitor/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      To view process connections, run with sudo:
        sudo netw

      Keyboard shortcuts:
        q     - Quit
        r     - Refresh now
        s     - Toggle sort
        ↑/↓   - Navigate process list
    EOS
  end

  test do
    # Test that the command exists and runs
    system "#{bin}/netw", "--version"
  end
end
