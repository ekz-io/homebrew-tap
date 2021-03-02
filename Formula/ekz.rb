# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ekz < Formula
  desc "The command line for EKZ, an EKS-D Kubernetes distro."
  homepage "https://github.com/chanwit/ekz/"
  version "0.2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.2.0/ekz_0.2.0_darwin_amd64.tar.gz"
    sha256 "ccacd82d0b5089fa70228aafc83b5155a618b2e6e621d9a20ed1ebd27d449218"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.2.0/ekz_0.2.0_linux_amd64.tar.gz"
    sha256 "fa960f03359863eaafaa85325c4a7dbced6b254c73f5bbaa81c13571dbff4cba"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "ekz"
  end

  test do
    system "#{bin}/ekz --version"
  end
end
