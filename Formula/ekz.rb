# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ekz < Formula
  desc "The command line for EKZ, an EKS-D Kubernetes distro."
  homepage "https://github.com/chanwit/ekz/"
  version "0.4.0-rc.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.4.0-rc.1/ekz_0.4.0-rc.1_darwin_amd64.tar.gz"
    sha256 "f95fec2363616e7d23aef25ac121d9c66d7ef44a1f493460b9d978b357283411"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/chanwit/ekz/releases/download/v0.4.0-rc.1/ekz_0.4.0-rc.1_darwin_arm64.tar.gz"
    sha256 "20878c217f03a75cb6fed18c900cf566b52046e28de82393d88e9e0853c3c8ab"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/chanwit/ekz/releases/download/v0.4.0-rc.1/ekz_0.4.0-rc.1_linux_amd64.tar.gz"
    sha256 "1fab3f96a54147ec7b34124329f4b222a065c1852a50ff379ece8299edfb508c"
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "ekz"
  end

  test do
    system "#{bin}/ekz --version"
  end
end
