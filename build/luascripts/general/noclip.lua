--[[
	MIT License

	Copyright (c) 2019 WeAreDevs wearedevs.net

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
--]]

_G.noclip = not _G.noclip
print(_G.noclip)

if not game:GetService('Players').LocalPlayer.Character:FindFirstChild("LowerTorso") then
	while _G.noclip do
		game:GetService("RunService").Stepped:wait()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.Torso.CanCollide = false
	end
else
	if _G.InitNC ~= true then     
		_G.NCFunc = function(part)      
			local pos = game:GetService('Players').LocalPlayer.Character.LowerTorso.Position.Y  
			if _G.noclip then             
				if part.Position.Y > pos then                 
					part.CanCollide = false             
				end        
			end    
		end      
		_G.InitNC = true 
	end 
	 
	game:GetService('Players').LocalPlayer.Character.Humanoid.Touched:connect(_G.NCFunc) 
end