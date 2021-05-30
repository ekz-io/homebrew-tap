# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ekz < Formula
  desc "The command line for EKZ, an EKS-D Kubernetes distro."
  homepage "https://github.com/chanwit/ekz/"
  version "0.5.2-rc.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.5.2-rc.2/ekz_0.5.2-rc.2_darwin_amd64.tar.gz"
    sha256 "f94c07f324973c73395eba41a599545b6497bc74aeddf89489ed1074aa0bd222"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/chanwit/ekz/releases/download/v0.5.2-rc.2/ekz_0.5.2-rc.2_darwin_arm64.tar.gz"
    sha256 "720c3afe03f470c3b0b692289a7edaa2210036c5f3b4c87d07c337ba676a94b7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.5.2-rc.2/ekz_0.5.2-rc.2_linux_amd64.tar.gz"
    sha256 "f033d574526d27c49dccc99e6a44b7bf9d49f57bf559fe171bd17967993cce80"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "ekz"
  end

  test do
    system "#{bin}/ekz --version"
  end
end
