-- Get the operating system name
local uname = io.popen("uname"):read("*a"):gsub("\n", "")

-- Get linux distribution name
local dist = io.popen("cat /etc/fedora-release"):read("*a"):gsub("\n", "")

local PackageManager = {
    mac = "brew",
    fedora = "dnf",
    arch = "pacman",
}
local pm

-- Check the operating system
if uname == "Darwin" then
    pm = PackageManager.mac
elseif uname == "Linux" and string.find(dist, "Fedora") then
    pm = PackageManager.fedora
elseif uname == "Linux" and string.find(dist, "Arch") then
    pm = PackageManager.arch
else
    os.exit(1)
end

print(pm)

-- install libraries
local libraries_to_install = {
    "zsh",
    "neovim",
    "tmux"
}

for _, library in ipairs(libraries_to_install) do
    local install_command = "sudo " .. pm .. " install -y " .. library
    print(install_command)
    local exit_code = os.execute(install_command)
end