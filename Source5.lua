-- You need to define the script_key before running the loadstring
local script_key = ""  -- <-- Set this to the correct key before running the script

-- The correct key to unlock the execution
local correct_key = "test"  -- <-- The correct key that must match

-- Check if the key is correct before loading the script
if script_key == correct_key then
    -- If key is correct, proceed with loading the external script
    loadstring(game:HttpGet("https://raw.githubusercontent.com/scrdsx/Scrdsxgg/refs/heads/main/Source5.lua", true))()
else
    -- If the key is incorrect, show an error message
    print("Error: Incorrect script key. Script not executed.")
end
