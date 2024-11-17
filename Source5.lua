-- Secure Lua Script with Key Hashing
local HttpService = game:GetService("HttpService")

-- The correct key hash to unlock the script
local correct_key_hash = "d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2"  -- <-- Replace with the actual hash of "test"

-- Function to hash the user input key and compare
local function checkKey(input_key)
    local input_key_hash = HttpService:GenerateGUIDFromParts(input_key)  -- Simulated hashing for illustration purposes (not actual SHA256)
    return input_key_hash == correct_key_hash
end

-- The user must input the key
local script_key = "test"  -- <-- User must set the script key before execution

-- Validate the key
if checkKey(script_key) then
    -- If the key is correct, load and run the remote script
    local remote_script = game:HttpGet("https://raw.githubusercontent.com/scrdsx/Scrdsxgg/refs/heads/main/Source5.lua", true)
    loadstring(remote_script)()
else
    -- If the key is incorrect, deny execution and show an error
    print("Error: Incorrect key. Script not executed.")
end
