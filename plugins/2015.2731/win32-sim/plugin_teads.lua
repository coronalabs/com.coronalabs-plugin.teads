local library = require("CoronaLibrary")

-- Create library
local lib = library:new{name = "plugin.teads", publisherId = "com.coronalabs", version = 1}

-- Default implementations
local function defaultFunction()
	print("WARNING: The '" .. lib.name .. "' library is not available on this platform.")
end

-- Stub functions
lib.init = defaultFunction
lib.load = defaultFunction
lib.isLoaded = defaultFunction
lib.show = defaultFunction

return lib
