cask "seamonkey" do
  version "2.53.8.1"

  language "de" do
    sha512 "5f1419298f729028628b4228cfa9897c43e366b3fde2bfc8faacea841d971e215d4d1464b294d62c4f74447db88449b3c3a2a2b943aad72809f15f3741ea367e"
    "de"
  end
  language "en-GB" do
    sha512 "51ca6dcd0c1b8fea98bdd1e71118926a6dc78cbf03010da5df2146eede2ad757a31781ae0e405f5b2321f019b98c96a5414d5755f833cfffc41afc48fbfcb2a6"
    "en-GB"
  end
  language "en-US", default: true do
    sha512 "88b1fe9fa0e154a338656919069a760ebb5e55cd55ecf433993b85e85c39c2c4d177e5ca4389cdbac50043fb645446da4df6073a83914b5dae727704c7785041"
    "en-US"
  end
  language "fr" do
    sha512 "4ad1b60d3cd832e3ce0481470dec15183bff21aeccfb0083edb4d05ae16153ac5eb9f0228c4b965de965e0c7c4aa74b4c45066d196f207c7d9284b3b89049082"
    "fr"
  end
  language "it" do
    sha512 "12c7f1cf3e19f80e023d42b4166408145bc7585e59677ae594a2a328e3c7a72d2b00cc91e47f19c10f056d93e59745cf2c2f31487a1e887b914bb465a059a1dd"
    "it"
  end
  language "ru" do
    sha512 "44b8d14024bcab24df83c53e96e87cb66b626eb39dad6d4965c790624ae29dcebddbaaee5dd7e938208fe4ce302bd3aee4a1c823eff1bf365a0d02ba1aebdb56"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    strategy :page_match
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)*)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"
end
