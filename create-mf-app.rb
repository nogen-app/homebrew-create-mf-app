require 'rbconfig'
class CreateMfApp < Formula
  desc ""
  homepage "https://github.com/nogen/create-mf-app"
  version "0.1.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/nogen-app/create-mf-app/releases/download/v0.1.0/create-mf-app_0.1.0_darwin_amd64.zip"
      sha256 "2333f63ec58ac76d8132575f851ca1f9aefebfce4a1c82ab8d87d42c341d9eb3"
    when /linux/
      url "https://github.com/nogen-app/create-mf-app/releases/download/v0.1.0/create-mf-app_0.1.0_linux_amd64.tar.gz"
      sha256 "ce1d6e7d98577cf8d232f1456e26f3ccd46ce4660e0573be936b9c05e255c118"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      :mac
    when /linux/
      url "https://github.com/nogen-app/create-mf-app/releases/download/v0.1.0/create-mf-app_0.1.0_linux_386.tar.gz"
      sha256 "e1789a78a4983330a5548a69181d90256a669c694192ac4a2a4210d2606f307a"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "create-mf-app"
  end

  test do
    system "create-mf-app"
  end

end
