-- The script requires the key to be defined before execution.
-- You MUST set `script_key` to the correct value above this line.
local script_key = ""  -- <-- Put the correct key here, e.g., script_key = "test"

-- The correct key that will unlock the execution
local correct_key = "test"  -- <-- The actual correct key

-- Check if the `script_key` is defined before running the `loadstring`
if script_key == correct_key then
    -- If the key is correct, proceed with executing the remote script
    local remote_script = game:HttpGet("https://raw.githubusercontent.com/scrdsx/Scrdsxgg/refs/heads/main/Source5.lua", true)
    loadstring(remote_script)()
else
    -- If the key is incorrect or not set, prevent the script from running
    print("Error: Incorrect or missing key. Script not executed.")
end
