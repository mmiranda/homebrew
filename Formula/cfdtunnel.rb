# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cfdtunnel < Formula
  desc "Use multiple cloudflared tunnel instances on the fly"
  homepage "https://github.com/mmiranda/cfdtunnel"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mmiranda/cfdtunnel/releases/download/v0.1.0/cfdtunnel_0.1.0_Darwin_arm64.tar.gz"
      sha256 "c5f99a27550513a35d4db12c070e5ddf5e4c52f99caf9321eecd4640331b76cc"

      def install
        bin.install "cfdtunnel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmiranda/cfdtunnel/releases/download/v0.1.0/cfdtunnel_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "acb7da62a6d1e76cddb222bd5c62273dd41b997d91599d059f90cc22f9364963"

      def install
        bin.install "cfdtunnel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mmiranda/cfdtunnel/releases/download/v0.1.0/cfdtunnel_0.1.0_Linux_arm64.tar.gz"
      sha256 "7af1338a656fca3d5b4b15d5fb1d895f21aa8c810f4b72cf00cb49029c2211d1"

      def install
        bin.install "cfdtunnel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mmiranda/cfdtunnel/releases/download/v0.1.0/cfdtunnel_0.1.0_Linux_x86_64.tar.gz"
      sha256 "3a5ede78b580d7701d124a3d444ad49daf411404441d94e4bc2ceba67f1095a6"

      def install
        bin.install "cfdtunnel"
      end
    end
  end

  test do
    system "#{bin}/program", "--version"
  end
end
