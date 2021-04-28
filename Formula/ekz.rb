# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ekz < Formula
  desc "The command line for EKZ, an EKS-D Kubernetes distro."
  homepage "https://github.com/chanwit/ekz/"
  version "0.3.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.3.1/ekz_0.3.1_darwin_amd64.tar.gz"
    sha256 "958c3aba7c594125b6efa26fccc7ce2f2ff350a381d5c928646019322427e208"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/chanwit/ekz/releases/download/v0.3.1/ekz_0.3.1_darwin_arm64.tar.gz"
    sha256 "47501186e4d5aaf4d0d2a446d1487f99651121a15866e9bb68dd1bf05191f336"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.3.1/ekz_0.3.1_linux_amd64.tar.gz"
    sha256 "bced3c569770b6aa4092b0cea82240196634ed0b87bebba694f6cd1045ab1655"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "ekz"
  end

  test do
    system "#{bin}/ekz --version"
  end
end
