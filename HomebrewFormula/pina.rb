# MIT License
#
# Copyright (c) 2019 The Homeport Team
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

require 'FileUtils'

class PinaGolada < Formula
  yver = "v1.0.0"
  ysha = "ac8a8f54abf62f9d092d6843225d03f9683796fb5bd602b5f7e4d0dd2a0ad538"

  desc 'pina-golada - a simple asset tool for go, which generates interface implementations that provide files/folders in the final build, without rendering them in the source code themselve'
  homepage 'https://github.com/homeport/pina-golada'
  url "https://github.com/homeport/pina-golada/releases/download/#{yver}/pina-golada-darwin-amd64"
  sha256 "#{ysha}"
  version "#{yver}"

  def install
    FileUtils.mv('pina-golada-darwin-amd64', 'pina-golada')
    bin.install 'pina-golada'
  end

  test do
    system "#{bin}/pina-golada", 'version'
  end
end
