--[[
    Custom UI Library V3 (Premium Clean)
    All features working + Icons for notifications
]]

local InputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Library = {
    Open = true,
    ToggleKey = Enum.KeyCode.RightControl,
    AccentColor = Color3.fromRGB(96, 76, 255),
    Font = Enum.Font.GothamMedium,
    FontBold = Enum.Font.GothamBold,
    Theme = {
        Background = Color3.fromRGB(18, 18, 22),
        Sidebar = Color3.fromRGB(22, 22, 28),
        Section = Color3.fromRGB(25, 25, 32),
        Element = Color3.fromRGB(32, 32, 42),
        Text = Color3.fromRGB(245, 245, 250),
        TextDim = Color3.fromRGB(130, 130, 145),
        Outline = Color3.fromRGB(45, 45, 58),
        Shadow = Color3.fromRGB(0, 0, 0),
        Accent = Color3.fromRGB(96, 76, 255),
        Success = Color3.fromRGB(76, 209, 139),
        Error = Color3.fromRGB(255, 85, 85),
        Warning = Color3.fromRGB(255, 193, 59),
    },
    Icons = {
        check = "rbxassetid://10709790644",
        error = "rbxassetid://10747384394",
        info = "rbxassetid://10723415903",
        warning = "rbxassetid://10709753149",
        shield = "rbxassetid://10734951847",
        eye = "rbxassetid://10723346959",
        settings = "rbxassetid://10734950309",
        search = "rbxassetid://10734943674",
        user = "rbxassetid://10747373176",
        heart = "rbxassetid://10723406885",
        star = "rbxassetid://10734966248",
        bell = "rbxassetid://10709775704",
        home = "rbxassetid://10723407389",
        folder = "rbxassetid://10723387563",
        file = "rbxassetid://10723374641",
        download = "rbxassetid://10723344270",
        upload = "rbxassetid://10747366434",
        trash = "rbxassetid://10747362393",
        edit = "rbxassetid://10734883598",
        copy = "rbxassetid://10709812159",
        save = "rbxassetid://10734941499",
        refresh = "rbxassetid://10734933222",
        play = "rbxassetid://10734923549",
        pause = "rbxassetid://10734919336",
        stop = "rbxassetid://10734972621",
        power = "rbxassetid://10734930466",
        lock = "rbxassetid://10723434711",
        unlock = "rbxassetid://10747366027",
        key = "rbxassetid://10723416652",
        target = "rbxassetid://10734977012",
        crosshair = "rbxassetid://10709818534",
        zap = "rbxassetid://10723345749",
        flame = "rbxassetid://10723376114",
        sword = "rbxassetid://10734975486",
        swords = "rbxassetid://10734975692",
        gamepad = "rbxassetid://10723395457",
        mouse = "rbxassetid://10734898592",
        keyboard = "rbxassetid://10723416765",
        monitor = "rbxassetid://10734896881",
        cpu = "rbxassetid://10709813383",
        database = "rbxassetid://10709818996",
        server = "rbxassetid://10734949856",
        wifi = "rbxassetid://10747382504",
        bluetooth = "rbxassetid://10709776655",
        globe = "rbxassetid://10723404337",
        map = "rbxassetid://10734886202",
        compass = "rbxassetid://10709811445",
        navigation = "rbxassetid://10734906744",
        rocket = "rbxassetid://10734934585",
        plane = "rbxassetid://10734922971",
        car = "rbxassetid://10709789810",
        truck = "rbxassetid://10747364031",
        bike = "rbxassetid://10709775894",
        train = "rbxassetid://10747362105",
        ship = "rbxassetid://10734941354",
        anchor = "rbxassetid://10709761530",
        crown = "rbxassetid://10709818626",
        trophy = "rbxassetid://10747363809",
        medal = "rbxassetid://10734887072",
        gem = "rbxassetid://10723396000",
        diamond = "rbxassetid://10709819149",
        coins = "rbxassetid://10709811110",
        wallet = "rbxassetid://10747376205",
        gift = "rbxassetid://10723396402",
        package = "rbxassetid://10734909540",
        box = "rbxassetid://10709782497",
        archive = "rbxassetid://10709762233",
        inbox = "rbxassetid://10723415335",
        mail = "rbxassetid://10734885430",
        message = "rbxassetid://10734888228",
        phone = "rbxassetid://10734921524",
        camera = "rbxassetid://10709789686",
        image = "rbxassetid://10723415040",
        video = "rbxassetid://10747374938",
        music = "rbxassetid://10734905958",
        headphones = "rbxassetid://10723406165",
        mic = "rbxassetid://10734888864",
        volume = "rbxassetid://10747376008",
        speaker = "rbxassetid://10734965419",
        sun = "rbxassetid://10734974297",
        moon = "rbxassetid://10734897102",
        cloud = "rbxassetid://10709806740",
        rain = "rbxassetid://10709806277",
        snow = "rbxassetid://10734964600",
        wind = "rbxassetid://10747382750",
        thermometer = "rbxassetid://10734983134",
        droplet = "rbxassetid://10723344432",
        leaf = "rbxassetid://10723425539",
        tree = "rbxassetid://10747362534",
        flower = "rbxassetid://10747830374",
        bug = "rbxassetid://10709782845",
        skull = "rbxassetid://10734962068",
        ghost = "rbxassetid://10723396107",
        bot = "rbxassetid://10709782230",
        smile = "rbxassetid://10734964441",
        frown = "rbxassetid://10723394681",
        meh = "rbxassetid://10734887603",
        laugh = "rbxassetid://10723424372",
        angry = "rbxassetid://10709761629",
        party = "rbxassetid://10734918735",
        cake = "rbxassetid://10709783217",
        pizza = "rbxassetid://10734922774",
        coffee = "rbxassetid://10709810814",
        beer = "rbxassetid://10709775167",
        apple = "rbxassetid://10709761889",
        cookie = "rbxassetid://10709812067",
        code = "rbxassetid://10709810463",
        terminal = "rbxassetid://10734982144",
        command = "rbxassetid://10709811365",
        hash = "rbxassetid://10723405975",
        at = "rbxassetid://10709769286",
        link = "rbxassetid://10723426722",
        paperclip = "rbxassetid://10734910927",
        scissors = "rbxassetid://10734942778",
        clipboard = "rbxassetid://10709799288",
        bookmark = "rbxassetid://10709782154",
        tag = "rbxassetid://10734976528",
        flag = "rbxassetid://10723375890",
        pin = "rbxassetid://10734922324",
        layers = "rbxassetid://10723424505",
        layout = "rbxassetid://10723425376",
        grid = "rbxassetid://10723404936",
        list = "rbxassetid://10723433811",
        menu = "rbxassetid://10734887784",
        filter = "rbxassetid://10723375128",
        sliders = "rbxassetid://10734963400",
        maximize = "rbxassetid://10734886735",
        minimize = "rbxassetid://10734895698",
        expand = "rbxassetid://10723346553",
        shrink = "rbxassetid://10734953073",
        move = "rbxassetid://10734900011",
        grab = "rbxassetid://10723404472",
        hand = "rbxassetid://10723405649",
        pointer = "rbxassetid://10734929723",
        cursor = "rbxassetid://10734898476",
        plus = "rbxassetid://10734924532",
        minus = "rbxassetid://10734896206",
        x = "rbxassetid://10747384394",
        divide = "rbxassetid://10723343805",
        equal = "rbxassetid://10723345990",
        percent = "rbxassetid://10734919919",
        hash2 = "rbxassetid://10723405975",
        infinity = "rbxassetid://10723415766",
        circle = "rbxassetid://10709798174",
        square = "rbxassetid://10734965702",
        triangle = "rbxassetid://10747363621",
        hexagon = "rbxassetid://10723407092",
        octagon = "rbxassetid://10734907361",
        arrow_up = "rbxassetid://10709768939",
        arrow_down = "rbxassetid://10709767827",
        arrow_left = "rbxassetid://10709768114",
        arrow_right = "rbxassetid://10709768347",
        chevron_up = "rbxassetid://10709791523",
        chevron_down = "rbxassetid://10709790948",
        chevron_left = "rbxassetid://10709791281",
        chevron_right = "rbxassetid://10709791437",
        rotate_cw = "rbxassetid://10734940654",
        rotate_ccw = "rbxassetid://10734940376",
        undo = "rbxassetid://10747365484",
        redo = "rbxassetid://10734932822",
        repeat1 = "rbxassetid://10734933966",
        shuffle = "rbxassetid://10734953451",
        skip_back = "rbxassetid://10734961526",
        skip_forward = "rbxassetid://10734961809",
        rewind = "rbxassetid://10734934347",
        fast_forward = "rbxassetid://10723354521",
        loader = "rbxassetid://10723434070",
        clock = "rbxassetid://10709805144",
        timer = "rbxassetid://10734984606",
        hourglass = "rbxassetid://10723407498",
        calendar = "rbxassetid://10709789505",
        alarm = "rbxassetid://10709752630",
        stopwatch = "rbxassetid://10734984606",
        history = "rbxassetid://10723407335",
        activity = "rbxassetid://10709752035",
        pulse = "rbxassetid://10723406795",
        chart = "rbxassetid://10709773755",
        trending_up = "rbxassetid://10747363465",
        trending_down = "rbxassetid://10747363205",
        gauge = "rbxassetid://10723395708",
        speedometer = "rbxassetid://10723395708",
        battery = "rbxassetid://10709774640",
        battery_low = "rbxassetid://10709774370",
        battery_charging = "rbxassetid://10709774068",
        plug = "rbxassetid://10709790202",
        lightbulb = "rbxassetid://10723425852",
        flashlight = "rbxassetid://10723376471",
        lamp = "rbxassetid://10723417513",
        torch = "rbxassetid://10723376114",
        magnet = "rbxassetid://10723435069",
        compass2 = "rbxassetid://10709811445",
        ruler = "rbxassetid://10734941018",
        scale = "rbxassetid://10734941912",
        wrench = "rbxassetid://10747383470",
        hammer = "rbxassetid://10723405360",
        screwdriver = "rbxassetid://10747383470",
        axe = "rbxassetid://10709769508",
        shovel = "rbxassetid://10734952773",
        pickaxe = "rbxassetid://10709769508",
        brush = "rbxassetid://10709782758",
        paintbrush = "rbxassetid://10734910187",
        palette = "rbxassetid://10734910430",
        pipette = "rbxassetid://10734922497",
        eraser = "rbxassetid://10723346158",
        pencil = "rbxassetid://10734919691",
        pen = "rbxassetid://10734919503",
        highlighter = "rbxassetid://10723407192",
        type = "rbxassetid://10747364761",
        bold = "rbxassetid://10747813908",
        italic = "rbxassetid://10723416195",
        underline = "rbxassetid://10747365191",
        strikethrough = "rbxassetid://10734973290",
        align_left = "rbxassetid://10709759764",
        align_center = "rbxassetid://10709753570",
        align_right = "rbxassetid://10709759895",
        align_justify = "rbxassetid://10709759610",
        indent = "rbxassetid://10723415494",
        outdent = "rbxassetid://10734907933",
        quote = "rbxassetid://10734931234",
        heading = "rbxassetid://10723405975",
        paragraph = "rbxassetid://10734929981",
        text = "rbxassetid://10747364761",
        font = "rbxassetid://10747364761",
        subscript = "rbxassetid://10734973457",
        superscript = "rbxassetid://10734974850",
        book = "rbxassetid://10709781824",
        library = "rbxassetid://10723425615",
        newspaper = "rbxassetid://10734907168",
        scroll = "rbxassetid://10734943448",
        graduation = "rbxassetid://10723404691",
        award = "rbxassetid://10709769406",
        certificate = "rbxassetid://10709769406",
        badge = "rbxassetid://10709769406",
        verified = "rbxassetid://10747374131",
        fingerprint = "rbxassetid://10723375250",
        scan = "rbxassetid://10734942565",
        qr = "rbxassetid://10747360675",
        barcode = "rbxassetid://10747360675"
    }
}

local NotificationHolder

local function ProtectGui(gui)
    if gethui then gui.Parent = gethui() 
    elseif syn and syn.protect_gui then syn.protect_gui(gui) gui.Parent = CoreGui 
    else gui.Parent = CoreGui end
end

local function Create(class, properties)
    local instance = Instance.new(class)
    for k, v in pairs(properties) do instance[k] = v end
    return instance
end

local function AddShadow(parent, transparency)
    local Shadow = Create("ImageLabel", {
        Name = "Shadow",
        Parent = parent,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, -15, 0, -15),
        Size = UDim2.new(1, 30, 1, 30),
        Image = "rbxassetid://6014261993",
        ImageColor3 = Library.Theme.Shadow,
        ImageTransparency = transparency or 0.5,
        SliceCenter = Rect.new(49, 49, 450, 450),
        ScaleType = Enum.ScaleType.Slice,
        ZIndex = parent.ZIndex - 1
    })
    return Shadow
end

local function MakeDraggable(trigger, object)
    local dragging, dragInput, dragStart, startPos
    trigger.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = object.Position
            input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
        end
    end)
    trigger.InputChanged:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end 
    end)
    InputService.InputChanged:Connect(function(input) 
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            TweenService:Create(object, TweenInfo.new(0.05), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play()
        end 
    end)
end

-- Notification System with Icons
function Library:Notify(Title, Content, Duration, IconType)
    if not NotificationHolder then return end
    Duration = Duration or 3
    IconType = IconType or "info"
    
    local Notif = Create("Frame", {
        Parent = NotificationHolder,
        BackgroundColor3 = Library.Theme.Section,
        Size = UDim2.new(1, -10, 0, 0),
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = Notif, CornerRadius = UDim.new(0, 6)})
    Create("UIStroke", {Parent = Notif, Color = Library.Theme.Outline, Thickness = 1})
    
    local Icon = Create("ImageLabel", {
        Parent = Notif,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 10, 0, 10),
        Size = UDim2.new(0, 30, 0, 30),
        Image = Library.Icons[IconType] or Library.Icons.info,
        ImageColor3 = Library.AccentColor
    })
    
    local TitleLbl = Create("TextLabel", {
        Parent = Notif, 
        Text = Title, 
        Position = UDim2.new(0, 48, 0, 8), 
        Size = UDim2.new(1, -56, 0, 16), 
        Font = Library.FontBold, 
        TextColor3 = Library.Theme.Text, 
        TextSize = 13, 
        TextXAlignment = Enum.TextXAlignment.Left, 
        BackgroundTransparency = 1
    })
    
    local ContentLbl = Create("TextLabel", {
        Parent = Notif, 
        Text = Content, 
        Position = UDim2.new(0, 48, 0, 24), 
        Size = UDim2.new(1, -56, 0, 14), 
        Font = Library.Font, 
        TextColor3 = Library.Theme.TextDim, 
        TextSize = 12, 
        TextXAlignment = Enum.TextXAlignment.Left, 
        BackgroundTransparency = 1
    })
    
    local Bar = Create("Frame", {
        Parent = Notif, 
        BackgroundColor3 = Library.AccentColor, 
        Position = UDim2.new(0, 0, 0, 0), 
        Size = UDim2.new(0, 3, 1, 0), 
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = Bar, CornerRadius = UDim.new(0, 6)})
    
    TweenService:Create(Notif, TweenInfo.new(0.3), {Size = UDim2.new(1, -10, 0, 50)}):Play()
    task.delay(Duration, function()
        TweenService:Create(Notif, TweenInfo.new(0.3), {Size = UDim2.new(1, -10, 0, 0)}):Play()
        task.wait(0.3)
        Notif:Destroy()
    end)
end

function Library:CreateWindow(Settings)
    local Title = Settings.Title or "UI"
    local Logo = Settings.Logo
    local Acrylic = Settings.Acrylic or false
    local BrandingText = Settings.BrandingText
    local BrandingPosition = Settings.BrandingPosition or "bottom-left" -- "bottom-left", "top-left", "top-right"
    
    local ScreenGui = Create("ScreenGui", { Name = "EvictedUI", IgnoreGuiInset = true, ResetOnSpawn = false })
    ProtectGui(ScreenGui)
    
    -- Responsive sizing based on screen
    local Camera = workspace.CurrentCamera
    local ViewportSize = Camera.ViewportSize
    local isMobile = InputService.TouchEnabled and not InputService.KeyboardEnabled
    
    -- Calculate responsive sizes
    local function getResponsiveSize()
        local vp = Camera.ViewportSize
        local baseWidth = 750
        local baseHeight = 550
        
        if isMobile then
            -- Mobile: use most of the screen
            local width = math.min(vp.X * 0.95, 750)
            local height = math.min(vp.Y * 0.85, 550)
            return width, height
        else
            -- Desktop: scale down if screen is small
            local maxWidth = math.min(vp.X * 0.8, baseWidth)
            local maxHeight = math.min(vp.Y * 0.85, baseHeight)
            return maxWidth, maxHeight
        end
    end
    
    local windowWidth, windowHeight = getResponsiveSize()
    local sidebarWidth = isMobile and math.min(150, windowWidth * 0.25) or 200
    
    -- Branding watermark
    if BrandingText then
        local brandPos
        local brandAnchor = Vector2.new(0, 0)
        if BrandingPosition == "top-left" then
            brandPos = UDim2.new(0, 80, 0, 5) -- Right of chat icon
        elseif BrandingPosition == "top-right" then
            brandPos = UDim2.new(1, -10, 0, 5)
            brandAnchor = Vector2.new(1, 0) -- Anchor to right side
        else -- bottom-left default
            brandPos = UDim2.new(0, 10, 1, -30)
        end
        
        local BrandingLabel = Create("TextLabel", {
            Parent = ScreenGui,
            Name = "Branding",
            BackgroundTransparency = 1,
            Position = brandPos,
            AnchorPoint = brandAnchor,
            Size = UDim2.new(0, 300, 0, 20),
            Text = BrandingText,
            Font = Library.FontBold,
            TextColor3 = Library.AccentColor,
            TextSize = 14,
            TextXAlignment = BrandingPosition == "top-right" and Enum.TextXAlignment.Right or Enum.TextXAlignment.Left,
            TextStrokeTransparency = 0.8,
            TextStrokeColor3 = Color3.new(0, 0, 0),
            ZIndex = 100
        })
        
        -- Store reference for potential updates
        Library.BrandingLabel = BrandingLabel
    end
    
    -- Loading Screen (responsive size)
    local LoadingScreen = Create("Frame", {
        Parent = ScreenGui,
        BackgroundColor3 = Library.Theme.Background,
        Position = UDim2.new(0.5, -windowWidth/2, 0.5, -windowHeight/2),
        Size = UDim2.new(0, windowWidth, 0, windowHeight),
        ZIndex = 1000,
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = LoadingScreen, CornerRadius = UDim.new(0, 8)})
    Create("UIStroke", {Parent = LoadingScreen, Color = Library.Theme.Outline, Thickness = 1})
    AddShadow(LoadingScreen, 0.2)
    
    local LoadingLogo = Create("ImageLabel", {
        Parent = LoadingScreen,
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, 0, 0.4, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, math.min(350, windowWidth * 0.5), 0, math.min(350, windowHeight * 0.5)),
        Image = Logo or "rbxassetid://70896085439639",
        ZIndex = 1001,
        ScaleType = Enum.ScaleType.Fit
    })
    
    local LoadingBarOuter = Create("Frame", {
        Parent = LoadingScreen,
        BackgroundColor3 = Library.Theme.Element,
        Position = UDim2.new(0.5, 0, 0.7, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, math.min(300, windowWidth * 0.6), 0, 24),
        ZIndex = 1001,
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = LoadingBarOuter, CornerRadius = UDim.new(1, 0)})
    Create("UIStroke", {Parent = LoadingBarOuter, Color = Library.AccentColor, Thickness = 2})
    
    local LoadingBarBg = Create("Frame", {
        Parent = LoadingBarOuter,
        BackgroundColor3 = Library.Theme.Section,
        Position = UDim2.new(0, 4, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        Size = UDim2.new(1, -8, 0, 14),
        ZIndex = 1002,
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = LoadingBarBg, CornerRadius = UDim.new(1, 0)})
    
    local LoadingBar = Create("Frame", {
        Parent = LoadingBarBg,
        BackgroundColor3 = Library.AccentColor,
        Size = UDim2.new(0, 0, 1, 0),
        ZIndex = 1003,
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = LoadingBar, CornerRadius = UDim.new(1, 0)})
    
    local LoadingText = Create("TextLabel", {
        Parent = LoadingScreen,
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, 0, 0.78, 0),
        AnchorPoint = Vector2.new(0.5, 0),
        Size = UDim2.new(0, math.min(300, windowWidth * 0.6), 0, 20),
        Text = "Loading...",
        Font = Library.Font,
        TextColor3 = Library.Theme.TextDim,
        TextSize = isMobile and 12 or 14,
        ZIndex = 1001
    })
    
    -- Store reference to show main after loading
    local MainFrame = nil
    local function ShowMainAfterLoad()
        if MainFrame then
            MainFrame.Visible = true
        end
        TweenService:Create(LoadingScreen, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
        TweenService:Create(LoadingLogo, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
        TweenService:Create(LoadingBarOuter, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
        TweenService:Create(LoadingBarBg, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
        TweenService:Create(LoadingBar, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
        TweenService:Create(LoadingText, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
        task.wait(0.5)
        LoadingScreen:Destroy()
    end
    
    -- Animate loading (5-8 seconds random)
    local loadDuration = math.random(50, 80) / 10
    TweenService:Create(LoadingBar, TweenInfo.new(loadDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0)}):Play()
    task.delay(loadDuration, ShowMainAfterLoad)
    
    -- Notification Holder (responsive position)
    NotificationHolder = Create("Frame", {
        Parent = ScreenGui,
        BackgroundTransparency = 1,
        Position = isMobile and UDim2.new(0.5, -150, 1, -200) or UDim2.new(1, -310, 1, -310),
        Size = UDim2.new(0, 300, 0, 300)
    })
    Create("UIListLayout", {Parent = NotificationHolder, Padding = UDim.new(0, 5), VerticalAlignment = Enum.VerticalAlignment.Bottom})

    -- Custom Cursor (desktop only)
    local CustomCursor = nil
    local CursorDot = nil
    local cursorConn = nil
    
    if not isMobile then
        CustomCursor = Create("ImageLabel", {
            Parent = ScreenGui,
            Name = "CustomCursor",
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 20, 0, 20),
            Image = "rbxassetid://70896085439639",
            ImageColor3 = Library.Theme.Text,
            ZIndex = 9999,
            Visible = true
        })
        
        local CursorShadow = Create("ImageLabel", {
            Parent = CustomCursor,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 2, 0, 2),
            Size = UDim2.new(1, 0, 1, 0),
            Image = "rbxassetid://102366537072878",
            ImageColor3 = Color3.new(0, 0, 0),
            ImageTransparency = 0.7,
            ZIndex = 9998
        })
        
        CursorDot = Create("Frame", {
            Parent = ScreenGui,
            Name = "CursorDot",
            BackgroundColor3 = Library.AccentColor,
            Size = UDim2.new(0, 6, 0, 6),
            ZIndex = 9999,
            Visible = true,
            BorderSizePixel = 0
        })
        Create("UICorner", {Parent = CursorDot, CornerRadius = UDim.new(1, 0)})
        
        InputService.MouseIconEnabled = false
        
        cursorConn = game:GetService("RunService").RenderStepped:Connect(function()
            local mousePos = InputService:GetMouseLocation()
            CustomCursor.Position = UDim2.new(0, mousePos.X, 0, mousePos.Y)
            CursorDot.Position = UDim2.new(0, mousePos.X - 3, 0, mousePos.Y - 3)
        end)
        
        -- Store cursor connection for cleanup
        Library.CursorConnection = cursorConn
        Library.CustomCursor = CustomCursor
        Library.CursorDot = CursorDot
    end

    -- Main Window (hidden until loading completes, responsive)
    local Main = Create("Frame", {
        Name = "Main",
        Parent = ScreenGui,
        BackgroundColor3 = Library.Theme.Background,
        BackgroundTransparency = Acrylic and 0.3 or 0,
        Position = UDim2.new(0.5, -windowWidth/2, 0.5, -windowHeight/2),
        Size = UDim2.new(0, windowWidth, 0, windowHeight),
        BorderSizePixel = 0,
        ClipsDescendants = false,
        Visible = false
    })
    MainFrame = Main
    Create("UICorner", {Parent = Main, CornerRadius = UDim.new(0, 8)})
    AddShadow(Main, 0.2)
    Create("UIStroke", {Parent = Main, Color = Library.Theme.Outline, Thickness = 1})

    -- Store reference for acrylic toggle
    Library.MainFrame = Main
    Library.Acrylic = Acrylic
    Library.WindowWidth = windowWidth
    Library.WindowHeight = windowHeight
    Library.SidebarWidth = sidebarWidth
    Library.IsMobile = isMobile
    
    -- Update window size on viewport change
    Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
        local newWidth, newHeight = getResponsiveSize()
        Main.Size = UDim2.new(0, newWidth, 0, newHeight)
        Main.Position = UDim2.new(0.5, -newWidth/2, 0.5, -newHeight/2)
        Library.WindowWidth = newWidth
        Library.WindowHeight = newHeight
    end)
    
    function Library:SetAcrylic(enabled)
        Library.Acrylic = enabled
        local targetTransparency = enabled and 0.3 or 0
        TweenService:Create(Library.MainFrame, TweenInfo.new(0.3), {BackgroundTransparency = targetTransparency}):Play()
    end

    -- Resize handles (only on desktop)
    local MIN_WIDTH = isMobile and 300 or 600
    local MIN_HEIGHT = isMobile and 250 or 400
    local HANDLE_SIZE = 8
    
    local function CreateResizeHandle(name, position, size, cursor)
        local handle = Create("Frame", {
            Name = name,
            Parent = Main,
            BackgroundTransparency = 1,
            Position = position,
            Size = size,
            ZIndex = 10
        })
        return handle
    end
    
    -- Bottom-right corner (main resize handle)
    local ResizeBR = CreateResizeHandle("ResizeBR", 
        UDim2.new(1, -HANDLE_SIZE, 1, -HANDLE_SIZE), 
        UDim2.new(0, HANDLE_SIZE, 0, HANDLE_SIZE))
    
    -- Visual indicator for resize corner
    local ResizeIcon = Create("Frame", {
        Parent = ResizeBR,
        BackgroundColor3 = Library.Theme.TextDim,
        BackgroundTransparency = 0.5,
        Position = UDim2.new(0.5, -2, 0.5, -2),
        Size = UDim2.new(0, 4, 0, 4),
        ZIndex = 11
    })
    Create("UICorner", {Parent = ResizeIcon, CornerRadius = UDim.new(1, 0)})
    
    -- Bottom edge
    local ResizeB = CreateResizeHandle("ResizeB",
        UDim2.new(0, HANDLE_SIZE, 1, -HANDLE_SIZE),
        UDim2.new(1, -HANDLE_SIZE * 2, 0, HANDLE_SIZE))
    
    -- Right edge
    local ResizeR = CreateResizeHandle("ResizeR",
        UDim2.new(1, -HANDLE_SIZE, 0, 45),
        UDim2.new(0, HANDLE_SIZE, 1, -45 - HANDLE_SIZE))
    
    -- Resize logic
    local resizing = false
    local resizeType = nil
    local resizeStart = nil
    local startSize = nil
    local startPos = nil
    
    local function StartResize(handle, rType)
        handle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and not Minimized then
                resizing = true
                resizeType = rType
                resizeStart = Vector2.new(input.Position.X, input.Position.Y)
                startSize = Main.AbsoluteSize
                startPos = Main.AbsolutePosition
            end
        end)
        
        handle.MouseEnter:Connect(function()
            TweenService:Create(ResizeIcon, TweenInfo.new(0.15), {BackgroundTransparency = 0, BackgroundColor3 = Library.AccentColor}):Play()
        end)
        handle.MouseLeave:Connect(function()
            if not resizing then
                TweenService:Create(ResizeIcon, TweenInfo.new(0.15), {BackgroundTransparency = 0.5, BackgroundColor3 = Library.Theme.TextDim}):Play()
            end
        end)
    end
    
    StartResize(ResizeBR, "BR")
    StartResize(ResizeB, "B")
    StartResize(ResizeR, "R")
    
    InputService.InputChanged:Connect(function(input)
        if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = Vector2.new(input.Position.X, input.Position.Y) - resizeStart
            local newWidth = startSize.X
            local newHeight = startSize.Y
            
            if resizeType == "BR" or resizeType == "R" then
                newWidth = math.max(MIN_WIDTH, startSize.X + delta.X)
            end
            if resizeType == "BR" or resizeType == "B" then
                newHeight = math.max(MIN_HEIGHT, startSize.Y + delta.Y)
            end
            
            Main.Size = UDim2.new(0, newWidth, 0, newHeight)
        end
    end)
    
    InputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and resizing then
            resizing = false
            resizeType = nil
            TweenService:Create(ResizeIcon, TweenInfo.new(0.15), {BackgroundTransparency = 0.5, BackgroundColor3 = Library.Theme.TextDim}):Play()
        end
    end)

    -- Topbar
    local Topbar = Create("Frame", {
        Name = "Topbar",
        Parent = Main,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 45)
    })
    MakeDraggable(Topbar, Main)
    
    local hasLogo = Logo and Logo ~= ""
    
    if hasLogo then
        local LogoImg = Create("ImageLabel", {
            Parent = Topbar,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 15, 0.5, -15),
            Size = UDim2.new(0, 30, 0, 30),
            Image = Logo,
            ScaleType = Enum.ScaleType.Fit,
            ZIndex = 2
        })
    end

    local TopTitle = Create("TextLabel", {
        Parent = Topbar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, hasLogo and 55 or 20, 0, 0),
        Size = UDim2.new(1, hasLogo and -100 or -65, 1, 0),
        Font = Library.FontBold,
        Text = Title,
        TextColor3 = Library.Theme.Text,
        TextSize = 19,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 2
    })
    
    local MinBtn = Create("TextButton", {
        Parent = Topbar,
        BackgroundTransparency = 1,
        Position = UDim2.new(1, -45, 0, 0),
        Size = UDim2.new(0, 45, 1, 0),
        Text = "−",
        Font = Library.FontBold,
        TextColor3 = Library.Theme.TextDim,
        TextSize = 26,
        AutoButtonColor = false,
        ZIndex = 2
    })
    
    MinBtn.MouseEnter:Connect(function() TweenService:Create(MinBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text}):Play() end)
    MinBtn.MouseLeave:Connect(function() TweenService:Create(MinBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.TextDim}):Play() end)
    
    local Minimized = false
    MinBtn.MouseButton1Click:Connect(function()
        Minimized = not Minimized
        Main.ClipsDescendants = true
        if Minimized then
            TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {Size = UDim2.new(0, windowWidth, 0, 45)}):Play()
            MinBtn.Text = "+"
        else
            TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {Size = UDim2.new(0, windowWidth, 0, windowHeight)}):Play()
            MinBtn.Text = "−"
            task.wait(0.3)
            Main.ClipsDescendants = false
        end
    end)

    -- Sidebar (responsive width)
    local Sidebar = Create("Frame", {
        Name = "Sidebar",
        Parent = Main,
        BackgroundColor3 = Library.Theme.Sidebar,
        BackgroundTransparency = Acrylic and 0.3 or 0,
        Position = UDim2.new(0, 0, 0, 45),
        Size = UDim2.new(0, sidebarWidth, 1, -45),
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 8)})
    Create("Frame", {Parent = Sidebar, BackgroundColor3 = Library.Theme.Sidebar, BackgroundTransparency = Acrylic and 0.3 or 0, Size = UDim2.new(1,0,0,10), Position = UDim2.new(0,0,0,0), BorderSizePixel = 0})

    local TabContainer = Create("ScrollingFrame", {
        Parent = Sidebar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 10, 0, 10),
        Size = UDim2.new(1, -20, 1, -20),
        ScrollBarThickness = 0,
        BorderSizePixel = 0
    })
    Create("UIListLayout", {Parent = TabContainer, Padding = UDim.new(0, 6)})

    local Content = Create("Frame", {
        Name = "Content",
        Parent = Main,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, sidebarWidth + 15, 0, 55),
        Size = UDim2.new(1, -(sidebarWidth + 25), 1, -65)
    })

    InputService.InputBegan:Connect(function(input)
        if input.KeyCode == Library.ToggleKey then 
            Library.Open = not Library.Open 
            Main.Visible = Library.Open 
            if CustomCursor then CustomCursor.Visible = Library.Open end
            if CursorDot then CursorDot.Visible = Library.Open end
            if not isMobile then
                InputService.MouseIconEnabled = not Library.Open
            end
        end
    end)

    local WindowObj = {}
    
    function WindowObj:AddTab(Name, IconId)
        local TabBtn = Create("TextButton", {
            Parent = TabContainer,
            BackgroundColor3 = Library.Theme.Background,
            Size = UDim2.new(1, 0, 0, 36),
            AutoButtonColor = false,
            Text = "",
            BackgroundTransparency = 1
        })
        Create("UICorner", {Parent = TabBtn, CornerRadius = UDim.new(0, 6)})
        
        -- Purple indicator bar on left
        local TabIndicator = Create("Frame", {
            Parent = TabBtn,
            BackgroundColor3 = Library.AccentColor,
            Size = UDim2.new(0, 3, 0, 18),
            Position = UDim2.new(0, 0, 0.5, -9),
            BackgroundTransparency = 1,
            BorderSizePixel = 0
        })
        Create("UICorner", {Parent = TabIndicator, CornerRadius = UDim.new(0, 2)})
        
        -- Tab Icon
        local TabIcon = nil
        if IconId then
            TabIcon = Create("ImageLabel", {
                Parent = TabBtn,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 12, 0.5, -9),
                Size = UDim2.new(0, 18, 0, 18),
                Image = IconId,
                ImageColor3 = Library.Theme.TextDim
            })
        end
        
        local TitleLbl = Create("TextLabel", {
            Parent = TabBtn,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, IconId and 38 or 14, 0, 0),
            Size = UDim2.new(1, IconId and -38 or -14, 1, 0),
            Text = Name,
            Font = Library.Font,
            TextColor3 = Library.Theme.TextDim,
            TextSize = 14,
            TextXAlignment = Enum.TextXAlignment.Left
        })
        
        local TabPage = Create("Frame", {
            Parent = Content,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Visible = false
        })
        
        local SubTopBar = Create("Frame", {
            Parent = TabPage,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 35),
            Visible = false
        })
        Create("UIListLayout", {
            Parent = SubTopBar, 
            FillDirection = Enum.FillDirection.Horizontal, 
            Padding = UDim.new(0, 20),
            HorizontalAlignment = Enum.HorizontalAlignment.Left
        })
        
        local DefaultContainer = Create("ScrollingFrame", {
            Parent = TabPage,
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,1,0),
            ScrollBarThickness = 4,
            ScrollBarImageColor3 = Library.AccentColor,
            CanvasSize = UDim2.new(0,0,0,0),
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            BorderSizePixel = 0
        })
        local Left = Create("Frame", {Parent = DefaultContainer, BackgroundTransparency = 1, Size = UDim2.new(0.5, -8, 0, 0), AutomaticSize = Enum.AutomaticSize.Y})
        local Right = Create("Frame", {Parent = DefaultContainer, BackgroundTransparency = 1, Size = UDim2.new(0.5, -8, 0, 0), Position = UDim2.new(0.5, 8, 0, 0), AutomaticSize = Enum.AutomaticSize.Y})
        Create("UIListLayout", {Parent = Left, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder})
        Create("UIListLayout", {Parent = Right, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder})
        
        -- Update canvas size based on content
        local function UpdateCanvasSize()
            local leftHeight = Left.AbsoluteSize.Y
            local rightHeight = Right.AbsoluteSize.Y
            local maxHeight = math.max(leftHeight, rightHeight)
            DefaultContainer.CanvasSize = UDim2.new(0, 0, 0, maxHeight + 20)
        end
        Left:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateCanvasSize)
        Right:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateCanvasSize)
        task.defer(UpdateCanvasSize)
        
        local function Activate()
            for _, v in pairs(TabContainer:GetChildren()) do
                if v:IsA("TextButton") then 
                     TweenService:Create(v, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                     local titleLabel = v:FindFirstChild("TextLabel")
                     if titleLabel then 
                         TweenService:Create(titleLabel, TweenInfo.new(0.2), {TextColor3 = Library.Theme.TextDim, TextSize = 14}):Play()
                     end
                     local indicator = v:FindFirstChild("Frame")
                     if indicator then TweenService:Create(indicator, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play() end
                     local icon = v:FindFirstChild("ImageLabel")
                     if icon then TweenService:Create(icon, TweenInfo.new(0.2), {ImageColor3 = Library.Theme.TextDim}):Play() end
                end
            end
            TweenService:Create(TabBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.95}):Play()
            TweenService:Create(TitleLbl, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text, TextSize = 15}):Play()
            TweenService:Create(TabIndicator, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
            if TabIcon then TweenService:Create(TabIcon, TweenInfo.new(0.2), {ImageColor3 = Library.AccentColor}):Play() end
            
            for _, v in pairs(Content:GetChildren()) do v.Visible = false end
            TabPage.Visible = true
        end
        TabBtn.MouseButton1Click:Connect(Activate)
        
        if #TabContainer:GetChildren() == 2 then Activate() end

        local Tab = { HasSubTabs = false }
        
        function Tab:AddSubTab(SubName)
            if not Tab.HasSubTabs then
                Tab.HasSubTabs = true
                SubTopBar.Visible = true
                DefaultContainer.Visible = false
            end
            
            local SubBtn = Create("TextButton", {
                Parent = SubTopBar,
                BackgroundTransparency = 1,
                Text = SubName,
                Font = Library.FontBold,
                TextColor3 = Library.Theme.TextDim,
                TextSize = 15,
                AutomaticSize = Enum.AutomaticSize.X,
                Size = UDim2.new(0,0,1,0),
                AutoButtonColor = false
            })
            
            local Indicator = Create("Frame", {
                Parent = SubBtn,
                BackgroundColor3 = Library.AccentColor,
                Position = UDim2.new(0,0,1,-3),
                Size = UDim2.new(1,0,0,3),
                BackgroundTransparency = 1,
                BorderSizePixel = 0
            })
            Create("UICorner", {Parent = Indicator, CornerRadius = UDim.new(1,0)})
            
            local SubContent = Create("ScrollingFrame", {
                Parent = TabPage,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 0, 0, 40),
                Size = UDim2.new(1, 0, 1, -40),
                ScrollBarThickness = 4,
                ScrollBarImageColor3 = Library.AccentColor,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                Visible = false,
                BorderSizePixel = 0
            })
            local SLeft = Create("Frame", {Parent = SubContent, BackgroundTransparency = 1, Size = UDim2.new(0.5, -8, 0, 0), AutomaticSize = Enum.AutomaticSize.Y})
            local SRight = Create("Frame", {Parent = SubContent, BackgroundTransparency = 1, Size = UDim2.new(0.5, -8, 0, 0), Position = UDim2.new(0.5, 8, 0, 0), AutomaticSize = Enum.AutomaticSize.Y})
            Create("UIListLayout", {Parent = SLeft, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder})
            Create("UIListLayout", {Parent = SRight, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder})
            
            -- Update subtab canvas size
            local function UpdateSubCanvasSize()
                local leftH = SLeft.AbsoluteSize.Y
                local rightH = SRight.AbsoluteSize.Y
                SubContent.CanvasSize = UDim2.new(0, 0, 0, math.max(leftH, rightH) + 20)
            end
            SLeft:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateSubCanvasSize)
            SRight:GetPropertyChangedSignal("AbsoluteSize"):Connect(UpdateSubCanvasSize)
            task.defer(UpdateSubCanvasSize)
            
            SubBtn.MouseEnter:Connect(function() if Indicator.BackgroundTransparency == 1 then TweenService:Create(SubBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text}):Play() end end)
            SubBtn.MouseLeave:Connect(function() if Indicator.BackgroundTransparency == 1 then TweenService:Create(SubBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.TextDim}):Play() end end)
            
            SubBtn.MouseButton1Click:Connect(function()
                for _,v in pairs(SubTopBar:GetChildren()) do 
                     if v:IsA("TextButton") then
                        TweenService:Create(v, TweenInfo.new(0.2), {TextColor3 = Library.Theme.TextDim}):Play()
                        TweenService:Create(v.Frame, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                     end
                end
                TweenService:Create(SubBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text}):Play()
                TweenService:Create(Indicator, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
                
                for _,v in pairs(TabPage:GetChildren()) do if v:IsA("ScrollingFrame") then v.Visible = false end end
                SubContent.Visible = true
            end)
            
            local subcount = 0 
            for _,v in pairs(SubTopBar:GetChildren()) do if v:IsA("GuiObject") then subcount = subcount + 1 end end
            if subcount == 2 then
                 TweenService:Create(SubBtn, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text}):Play()
                 TweenService:Create(Indicator, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
                 SubContent.Visible = true
            end

            return {
                AddLeftGroupbox = function(self, Name) return self:CreateGroupbox(SLeft, Name) end,
                AddRightGroupbox = function(self, Name) return self:CreateGroupbox(SRight, Name) end,
                CreateGroupbox = Tab.CreateGroupbox
            }
        end
        
        function Tab:CreateGroupbox(Parent, Name)
            local Box = Create("Frame", {
                Parent = Parent,
                BackgroundColor3 = Library.Theme.Section,
                Size = UDim2.new(1, 0, 0, 50),
                AutomaticSize = Enum.AutomaticSize.Y,
                ClipsDescendants = false,
                BorderSizePixel = 0
            })
            Create("UICorner", {Parent = Box, CornerRadius = UDim.new(0, 8)})
            
            local Header = Create("TextLabel", {
                Parent = Box,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 12, 0, 0),
                Size = UDim2.new(1, -24, 0, 32),
                Text = Name,
                Font = Library.FontBold,
                TextColor3 = Library.Theme.Text,
                TextSize = 14,
                TextXAlignment = Enum.TextXAlignment.Left
            })
            Create("Frame", {Parent = Box, BackgroundColor3 = Library.Theme.Outline, Size = UDim2.new(1, 0, 0, 1), Position = UDim2.new(0,0,0,32), BorderSizePixel = 0})

            local Container = Create("Frame", {
                Parent = Box,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 12, 0, 40),
                Size = UDim2.new(1, -24, 0, 0),
                AutomaticSize = Enum.AutomaticSize.Y
            })
            Create("UIListLayout", {Parent = Container, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 8)})
            Create("UIPadding", {Parent = Container, PaddingBottom = UDim.new(0, 12)})

            local Group = {}
            
            function Group:AddToggle(Text, Default, Callback)
                local Frame = Create("TextButton", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,22), Text = "", AutoButtonColor = false})
                local Label = Create("TextLabel", {Parent = Frame, BackgroundTransparency = 1, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, TextSize = 13, TextXAlignment=Enum.TextXAlignment.Left, Size = UDim2.new(1,-45,1,0)})
                
                local Check = Create("Frame", {Parent = Frame, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(0,20,0,20), Position = UDim2.new(1,-20,0,1), BorderSizePixel = 0})
                Create("UICorner", {Parent = Check, CornerRadius = UDim.new(0, 5)})
                local CheckStroke = Create("UIStroke", {Parent = Check, Color = Library.Theme.Outline, Thickness = 1})
                
                local Checkmark = Create("TextLabel", {Parent = Check, BackgroundTransparency = 1, Size = UDim2.new(1,0,1,0), Text = "✓", Font = Library.FontBold, TextColor3 = Library.Theme.Text, TextSize = 16, TextTransparency = 1})
                
                Frame.MouseEnter:Connect(function() TweenService:Create(CheckStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() end)
                Frame.MouseLeave:Connect(function() TweenService:Create(CheckStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() end)
                
                local State = Default or false
                local ToggleObj = {
                    Type = "Toggle",
                    Value = State
                }
                
                local function Update(instant)
                    ToggleObj.Value = State
                    if instant then
                        if State then
                            Check.BackgroundColor3 = Library.AccentColor
                            Checkmark.TextTransparency = 0
                            Label.TextColor3 = Library.Theme.Text
                        else
                            Check.BackgroundColor3 = Library.Theme.Element
                            Checkmark.TextTransparency = 1
                            Label.TextColor3 = Library.Theme.TextDim
                        end
                    else
                        if State then 
                            TweenService:Create(Check, TweenInfo.new(0.2), {BackgroundColor3 = Library.AccentColor}):Play() 
                            TweenService:Create(Checkmark, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
                            TweenService:Create(Label, TweenInfo.new(0.2), {TextColor3 = Library.Theme.Text}):Play()
                        else 
                            TweenService:Create(Check, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Element}):Play()
                            TweenService:Create(Checkmark, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
                            TweenService:Create(Label, TweenInfo.new(0.2), {TextColor3 = Library.Theme.TextDim}):Play()
                        end
                    end
                    pcall(Callback, State)
                end
                
                ToggleObj.Set = function(self, v) State = v self.Value = v Update(true) end
                
                Frame.MouseButton1Click:Connect(function() State = not State Update() end)
                Update()
                
                Library.Options[Text] = ToggleObj
                return ToggleObj
            end
            
            function Group:AddSlider(Text, Min, Max, Default, Callback)
                 local Frame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,42)})
                 local Label = Create("TextLabel", {Parent = Frame, BackgroundTransparency = 1, Text = Text, TextColor3 = Library.Theme.TextDim, Font = Library.Font, TextSize=13, Size = UDim2.new(1,0,0,16), TextXAlignment=Enum.TextXAlignment.Left})
                 
                 local Bg = Create("Frame", {Parent = Frame, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(1,0,0,7), Position = UDim2.new(0,0,0,24), BorderSizePixel = 0})
                 Create("UICorner", {Parent = Bg, CornerRadius = UDim.new(1,0)})
                 local BgStroke = Create("UIStroke", {Parent = Bg, Color = Library.Theme.Outline, Thickness = 1})
                 
                 local Fill = Create("Frame", {Parent = Bg, BackgroundColor3 = Library.AccentColor, Size = UDim2.new(0,0,1,0), BorderSizePixel = 0})
                 Create("UICorner", {Parent = Fill, CornerRadius = UDim.new(1,0)})
                 
                local Value = Create("TextLabel", {Parent = Frame, BackgroundTransparency = 1, Text = tostring(Default), TextColor3 = Library.Theme.Text, Font=Library.Font, TextSize=13, Size = UDim2.new(1,0,0,16), TextXAlignment=Enum.TextXAlignment.Right})
                 
                 Bg.MouseEnter:Connect(function() TweenService:Create(BgStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.Text}):Play() end)
                 Bg.MouseLeave:Connect(function() TweenService:Create(BgStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play() end)
                 
                 local CurrentValue = Default or Min
                 local SliderObj = {
                     Type = "Slider",
                     Value = CurrentValue
                 }
                 
                 local function Set(v, instant)
                     v = math.clamp(v, Min, Max)
                     CurrentValue = v
                     SliderObj.Value = v
                     if instant then
                         Fill.Size = UDim2.new((v-Min)/(Max-Min), 0, 1, 0)
                     else
                         TweenService:Create(Fill, TweenInfo.new(0.1), {Size = UDim2.new((v-Min)/(Max-Min), 0, 1, 0)}):Play()
                     end
                     Value.Text = math.floor(v*100)/100
                     pcall(Callback, v)
                 end
                 
                 SliderObj.Set = function(self, v) Set(v, true) end
                 
                 local Dragging = false
                 Bg.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then Dragging = true Set(Min + ((Max-Min) * math.clamp((i.Position.X - Bg.AbsolutePosition.X)/Bg.AbsoluteSize.X, 0, 1))) end end)
                 InputService.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then Dragging = false end end)
                 InputService.InputChanged:Connect(function(i) if Dragging and i.UserInputType == Enum.UserInputType.MouseMovement then Set(Min + ((Max-Min) * math.clamp((i.Position.X - Bg.AbsolutePosition.X)/Bg.AbsoluteSize.X, 0, 1))) end end)
                 Set(Default or Min)
                 
                 Library.Options[Text] = SliderObj
                 return SliderObj
            end
            
            function Group:AddDropdown(Text, Options, Default, Callback)
                local DropFrame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,50), ClipsDescendants = false, ZIndex = 1})
                local Label = Create("TextLabel", {Parent = DropFrame, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,0,0,18), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = 13})
                
                local Btn = Create("TextButton", {Parent = DropFrame, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(1,0,0,28), Position = UDim2.new(0,0,0,20), Text = "", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, AutoButtonColor = false, BorderSizePixel = 0})
                Create("UICorner", {Parent = Btn, CornerRadius = UDim.new(0,6)})
                local DropStroke = Create("UIStroke", {Parent = Btn, Color = Library.Theme.Outline, Thickness = 1})
                
                local BtnText = Create("TextLabel", {Parent = Btn, Text = tostring(Default or "Select..."), BackgroundTransparency = 1, Position = UDim2.new(0,10,0,0), Size = UDim2.new(1,-40,1,0), Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left})
                
                local Arrow = Create("ImageLabel", {Parent = Btn, Image = "rbxassetid://7072706796", ImageColor3 = Library.Theme.TextDim, Size = UDim2.new(0,16,0,16), Position = UDim2.new(1,-26,0.5,-8), BackgroundTransparency = 1, ScaleType = Enum.ScaleType.Fit})
                
                local ListFrame = Create("Frame", {Parent = DropFrame, BackgroundColor3 = Library.Theme.Section, Position = UDim2.new(0,0,0,50), Size = UDim2.new(1,0,0,0), BorderSizePixel = 0, ZIndex = 100, ClipsDescendants = true})
                Create("UICorner", {Parent = ListFrame, CornerRadius = UDim.new(0,6)})
                Create("UIStroke", {Parent = ListFrame, Color = Library.Theme.Outline, Thickness = 1})
                
                local List = Create("ScrollingFrame", {Parent = ListFrame, BackgroundTransparency = 1, Size = UDim2.new(1,0,1,0), Position = UDim2.new(0,0,0,0), BorderSizePixel = 0, ScrollBarThickness = 3, ScrollBarImageColor3 = Library.AccentColor, ZIndex = 101, CanvasSize = UDim2.new(0,0,0,0), AutomaticCanvasSize = Enum.AutomaticSize.Y})
                Create("UIListLayout", {Parent = List, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0,0)})
                
                local Open = false
                
                local DropdownObj = {
                    Type = "Dropdown",
                    Value = Default
                }
                
                local function CreateOption(opt)
                    local OptBtn = Create("TextButton", {Parent = List, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,28), Text = "", AutoButtonColor = false, BorderSizePixel = 0, ZIndex = 102})
                    local OptText = Create("TextLabel", {Parent = OptBtn, Text = opt, BackgroundTransparency = 1, Position = UDim2.new(0,10,0,0), Size = UDim2.new(1,-20,1,0), Font = Library.Font, TextColor3 = Library.Theme.TextDim, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 103})
                    
                    OptBtn.MouseEnter:Connect(function() 
                        TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 0, BackgroundColor3 = Library.AccentColor}):Play() 
                        TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.Text}):Play()
                    end)
                    OptBtn.MouseLeave:Connect(function() 
                        TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play() 
                        TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.TextDim}):Play()
                    end)
                    OptBtn.MouseButton1Click:Connect(function()
                        BtnText.Text = opt
                        DropdownObj.Value = opt
                        Open = false
                        TweenService:Create(ListFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Size = UDim2.new(1,0,0,0)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 0}):Play()
                        pcall(Callback, opt)
                    end)
                end
                
                DropdownObj.Set = function(self, v)
                    BtnText.Text = tostring(v)
                    self.Value = v
                    pcall(Callback, v)
                end
                
                DropdownObj.Refresh = function(self, newOptions)
                    for _, child in pairs(List:GetChildren()) do
                        if child:IsA("TextButton") then child:Destroy() end
                    end
                    Options = newOptions
                    for _, opt in pairs(Options) do
                        CreateOption(opt)
                    end
                end
                
                Btn.MouseEnter:Connect(function() 
                    TweenService:Create(DropStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() 
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.Text}):Play() 
                    TweenService:Create(Arrow, TweenInfo.new(0.15), {ImageColor3 = Library.AccentColor}):Play()
                end)
                Btn.MouseLeave:Connect(function() 
                    TweenService:Create(DropStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() 
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play() 
                    TweenService:Create(Arrow, TweenInfo.new(0.15), {ImageColor3 = Library.Theme.TextDim}):Play()
                end)
                
                Btn.MouseButton1Click:Connect(function()
                    Open = not Open
                    if Open then
                        local height = math.min(#Options * 28 + 6, 150)
                        TweenService:Create(ListFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Size = UDim2.new(1,0,0,height)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 180}):Play()
                    else
                        TweenService:Create(ListFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Size = UDim2.new(1,0,0,0)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 0}):Play()
                    end
                end)
                
                for _, opt in pairs(Options) do
                    CreateOption(opt)
                end
                
                Library.Options[Text] = DropdownObj
                return DropdownObj
            end
            
            function Group:AddMultiDropdown(Text, Options, Defaults, Callback)
                Defaults = Defaults or {}
                local DropFrame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,50), ClipsDescendants = false, ZIndex = 1})
                local Label = Create("TextLabel", {Parent = DropFrame, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,0,0,18), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = 13})
                
                local Btn = Create("TextButton", {Parent = DropFrame, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(1,0,0,28), Position = UDim2.new(0,0,0,20), Text = "", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, AutoButtonColor = false, BorderSizePixel = 0})
                Create("UICorner", {Parent = Btn, CornerRadius = UDim.new(0,6)})
                local DropStroke = Create("UIStroke", {Parent = Btn, Color = Library.Theme.Outline, Thickness = 1})
                
                local BtnText = Create("TextLabel", {Parent = Btn, Text = "None selected", BackgroundTransparency = 1, Position = UDim2.new(0,10,0,0), Size = UDim2.new(1,-40,1,0), Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd})
                
                local Arrow = Create("ImageLabel", {Parent = Btn, Image = "rbxassetid://7072706796", ImageColor3 = Library.Theme.TextDim, Size = UDim2.new(0,16,0,16), Position = UDim2.new(1,-26,0.5,-8), BackgroundTransparency = 1, ScaleType = Enum.ScaleType.Fit})
                
                local ListFrame = Create("Frame", {Parent = DropFrame, BackgroundColor3 = Library.Theme.Section, Position = UDim2.new(0,0,0,50), Size = UDim2.new(1,0,0,0), BorderSizePixel = 0, ZIndex = 200, ClipsDescendants = true})
                Create("UICorner", {Parent = ListFrame, CornerRadius = UDim.new(0,6)})
                Create("UIStroke", {Parent = ListFrame, Color = Library.Theme.Outline, Thickness = 1})
                
                local List = Create("ScrollingFrame", {Parent = ListFrame, BackgroundTransparency = 1, Size = UDim2.new(1,0,1,0), Position = UDim2.new(0,0,0,0), BorderSizePixel = 0, ScrollBarThickness = 3, ScrollBarImageColor3 = Library.AccentColor, ZIndex = 201, CanvasSize = UDim2.new(0,0,0,0), AutomaticCanvasSize = Enum.AutomaticSize.Y})
                Create("UIListLayout", {Parent = List, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0,0)})
                
                local Open = false
                local Selected = {}
                
                -- Initialize with defaults
                for _, v in pairs(Defaults) do
                    Selected[v] = true
                end
                
                local MultiDropdownObj = {
                    Type = "MultiDropdown",
                    Value = Selected
                }
                
                local function UpdateText()
                    local selectedList = {}
                    for opt, isSelected in pairs(Selected) do
                        if isSelected then
                            table.insert(selectedList, opt)
                        end
                    end
                    if #selectedList == 0 then
                        BtnText.Text = "None selected"
                    elseif #selectedList <= 3 then
                        BtnText.Text = table.concat(selectedList, ", ")
                    else
                        BtnText.Text = #selectedList .. " selected"
                    end
                end
                
                local function GetSelectedArray()
                    local arr = {}
                    for opt, isSelected in pairs(Selected) do
                        if isSelected then
                            table.insert(arr, opt)
                        end
                    end
                    return arr
                end
                
                local OptionButtons = {}
                
                local function CreateOption(opt)
                    local OptBtn = Create("TextButton", {Parent = List, BackgroundTransparency = Selected[opt] and 0 or 1, BackgroundColor3 = Library.AccentColor, Size = UDim2.new(1,0,0,28), Text = "", AutoButtonColor = false, BorderSizePixel = 0, ZIndex = 202})
                    local OptText = Create("TextLabel", {Parent = OptBtn, Text = opt, BackgroundTransparency = 1, Position = UDim2.new(0,10,0,0), Size = UDim2.new(1,-20,1,0), Font = Library.Font, TextColor3 = Selected[opt] and Library.Theme.Text or Library.Theme.TextDim, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 203})
                    
                    OptionButtons[opt] = {Btn = OptBtn, Text = OptText}
                    
                    local function UpdateOption()
                        if Selected[opt] then
                            TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 0, BackgroundColor3 = Library.AccentColor}):Play()
                            TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.Text}):Play()
                        else
                            TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
                            TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.TextDim}):Play()
                        end
                    end
                    
                    OptBtn.MouseEnter:Connect(function() 
                        if not Selected[opt] then
                            TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 0, BackgroundColor3 = Library.AccentColor}):Play()
                        end
                        TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.Text}):Play()
                    end)
                    OptBtn.MouseLeave:Connect(function() 
                        if not Selected[opt] then
                            TweenService:Create(OptBtn, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
                            TweenService:Create(OptText, TweenInfo.new(0.1), {TextColor3 = Library.Theme.TextDim}):Play()
                        end
                    end)
                    OptBtn.MouseButton1Click:Connect(function()
                        Selected[opt] = not Selected[opt]
                        UpdateOption()
                        UpdateText()
                        MultiDropdownObj.Value = Selected
                        pcall(Callback, GetSelectedArray())
                    end)
                end
                
                MultiDropdownObj.Set = function(self, selectedArray)
                    Selected = {}
                    for _, v in pairs(selectedArray) do
                        Selected[v] = true
                    end
                    self.Value = Selected
                    UpdateText()
                    -- Update visual state of all options
                    for opt, elements in pairs(OptionButtons) do
                        if Selected[opt] then
                            elements.Btn.BackgroundTransparency = 0
                            elements.Btn.BackgroundColor3 = Library.AccentColor
                            elements.Text.TextColor3 = Library.Theme.Text
                        else
                            elements.Btn.BackgroundTransparency = 1
                            elements.Text.TextColor3 = Library.Theme.TextDim
                        end
                    end
                    pcall(Callback, GetSelectedArray())
                end
                
                MultiDropdownObj.Refresh = function(self, newOptions)
                    for _, child in pairs(List:GetChildren()) do
                        if child:IsA("TextButton") then child:Destroy() end
                    end
                    OptionButtons = {}
                    Options = newOptions
                    for _, opt in pairs(Options) do
                        CreateOption(opt)
                    end
                    UpdateText()
                end
                
                Btn.MouseEnter:Connect(function() 
                    TweenService:Create(DropStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() 
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.Text}):Play() 
                    TweenService:Create(Arrow, TweenInfo.new(0.15), {ImageColor3 = Library.AccentColor}):Play()
                end)
                Btn.MouseLeave:Connect(function() 
                    TweenService:Create(DropStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() 
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play() 
                    TweenService:Create(Arrow, TweenInfo.new(0.15), {ImageColor3 = Library.Theme.TextDim}):Play()
                end)
                
                Btn.MouseButton1Click:Connect(function()
                    Open = not Open
                    if Open then
                        local height = math.min(#Options * 28 + 6, 180)
                        TweenService:Create(ListFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Size = UDim2.new(1,0,0,height)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 180}):Play()
                    else
                        TweenService:Create(ListFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Size = UDim2.new(1,0,0,0)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 0}):Play()
                    end
                end)
                
                for _, opt in pairs(Options) do
                    CreateOption(opt)
                end
                
                UpdateText()
                
                Library.Options[Text] = MultiDropdownObj
                return MultiDropdownObj
            end
            
            function Group:AddDivider()
                Create("Frame", {
                    Parent = Container,
                    BackgroundColor3 = Library.Theme.Outline,
                    Size = UDim2.new(1, 0, 0, 1),
                    BorderSizePixel = 0
                })
            end
            
            function Group:AddColorPicker(Text, Default, Callback)
                local Frame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,26)})
                local Label = Create("TextLabel", {Parent = Frame, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,-75,1,0), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = 13})
                
                local ColorBtn = Create("TextButton", {Parent = Frame, BackgroundColor3 = Default or Color3.new(1,1,1), Size = UDim2.new(0,70,0,22), Position = UDim2.new(1,-70,0,2), Text = "", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 11, AutoButtonColor = false, BorderSizePixel = 0})
                Create("UICorner", {Parent = ColorBtn, CornerRadius = UDim.new(0,5)})
                local ColorStroke = Create("UIStroke", {Parent = ColorBtn, Color = Library.Theme.Outline, Thickness = 1})
                
                ColorBtn.MouseEnter:Connect(function() 
                    TweenService:Create(ColorStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play()
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.Text}):Play()
                end)
                ColorBtn.MouseLeave:Connect(function() 
                    TweenService:Create(ColorStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play()
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play()
                end)
                
                local function RGBToHSV(color)
                    local r, g, b = color.R, color.G, color.B
                    local max, min = math.max(r, g, b), math.min(r, g, b)
                    local h, s, v = 0, 0, max
                    local d = max - min
                    s = max == 0 and 0 or d / max
                    if max ~= min then
                        if max == r then h = (g - b) / d + (g < b and 6 or 0)
                        elseif max == g then h = (b - r) / d + 2
                        elseif max == b then h = (r - g) / d + 4
                        end
                        h = h / 6
                    end
                    return h, s, v
                end
                
                local initH, initS, initV = RGBToHSV(Default or Color3.new(1,1,1))
                local CurrentColor = {H = initH, S = initS, V = initV}
                local ActivePicker = nil
                
                ColorBtn.MouseButton1Click:Connect(function()
                    if ActivePicker and ActivePicker.Parent then
                        ActivePicker:Destroy()
                        ActivePicker = nil
                        return
                    end
                    
                    local mainPos = Main.AbsolutePosition
                    local pickerX = mainPos.X + Main.AbsoluteSize.X + 10
                    local pickerY = mainPos.Y + 50
                    local screenSize = workspace.CurrentCamera.ViewportSize
                    if pickerX + 280 > screenSize.X then pickerX = mainPos.X - 290 end
                    if pickerY + 320 > screenSize.Y then pickerY = screenSize.Y - 330 end
                    
                    local Picker = Create("Frame", {Parent = ScreenGui, BackgroundColor3 = Library.Theme.Section, Position = UDim2.new(0, pickerX, 0, pickerY), Size = UDim2.new(0, 280, 0, 310), BorderSizePixel = 0, ZIndex = 100})
                    ActivePicker = Picker
                    Create("UICorner", {Parent = Picker, CornerRadius = UDim.new(0,8)})
                    Create("UIStroke", {Parent = Picker, Color = Library.Theme.Outline, Thickness = 1})
                    AddShadow(Picker, 0.3)
                    
                    local PickerTopbar = Create("Frame", {Parent = Picker, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 32)})
                    MakeDraggable(PickerTopbar, Picker)
                    
                    Create("TextLabel", {Parent = Picker, Text = "Color Picker", Position = UDim2.new(0,12,0,8), Size = UDim2.new(1,-50,0,20), Font = Library.FontBold, TextColor3 = Library.Theme.Text, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, ZIndex = 101})
                    
                    local CloseX = Create("TextButton", {Parent = Picker, Text = "×", Position = UDim2.new(1,-28,0,4), Size = UDim2.new(0,24,0,24), BackgroundTransparency = 1, Font = Library.FontBold, TextColor3 = Library.Theme.TextDim, TextSize = 20, AutoButtonColor = false, ZIndex = 101})
                    CloseX.MouseEnter:Connect(function() TweenService:Create(CloseX, TweenInfo.new(0.15), {TextColor3 = Color3.fromRGB(255,100,100)}):Play() end)
                    CloseX.MouseLeave:Connect(function() TweenService:Create(CloseX, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play() end)
                    CloseX.MouseButton1Click:Connect(function() Picker:Destroy() ActivePicker = nil end)
                    
                    local SVPicker = Create("ImageButton", {Parent = Picker, BackgroundColor3 = Color3.fromHSV(CurrentColor.H, 1, 1), Position = UDim2.new(0,12,0,38), Size = UDim2.new(1,-24,0,140), Image = "rbxassetid://4155801252", BorderSizePixel = 0, AutoButtonColor = false, ZIndex = 101})
                    Create("UICorner", {Parent = SVPicker, CornerRadius = UDim.new(0,6)})
                    Create("UIStroke", {Parent = SVPicker, Color = Library.Theme.Outline, Thickness = 1})
                    
                    local SVCursor = Create("Frame", {Parent = SVPicker, BackgroundColor3 = Color3.new(1,1,1), Size = UDim2.new(0,12,0,12), AnchorPoint = Vector2.new(0.5,0.5), Position = UDim2.new(CurrentColor.S, 0, 1 - CurrentColor.V, 0), BorderSizePixel = 0, ZIndex = 102})
                    Create("UICorner", {Parent = SVCursor, CornerRadius = UDim.new(1,0)})
                    Create("UIStroke", {Parent = SVCursor, Color = Color3.new(0,0,0), Thickness = 2})
                    
                    local HuePicker = Create("ImageButton", {Parent = Picker, BackgroundColor3 = Color3.new(1,1,1), Position = UDim2.new(0,12,0,186), Size = UDim2.new(1,-24,0,16), Image = "rbxassetid://3641079629", ScaleType = Enum.ScaleType.Crop, BorderSizePixel = 0, AutoButtonColor = false, ZIndex = 101})
                    Create("UICorner", {Parent = HuePicker, CornerRadius = UDim.new(0,4)})
                    Create("UIStroke", {Parent = HuePicker, Color = Library.Theme.Outline, Thickness = 1})
                    
                    local HueCursor = Create("Frame", {Parent = HuePicker, BackgroundColor3 = Color3.new(1,1,1), Size = UDim2.new(0,6,1,4), AnchorPoint = Vector2.new(0.5,0.5), Position = UDim2.new(CurrentColor.H, 0, 0.5, 0), BorderSizePixel = 0, ZIndex = 102})
                    Create("UICorner", {Parent = HueCursor, CornerRadius = UDim.new(0,2)})
                    Create("UIStroke", {Parent = HueCursor, Color = Color3.new(0,0,0), Thickness = 1})
                    
                    Create("TextLabel", {Parent = Picker, Text = "Preview", Position = UDim2.new(0,12,0,210), Size = UDim2.new(0,50,0,14), Font = Library.Font, TextColor3 = Library.Theme.TextDim, TextSize = 11, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 101})
                    local Preview = Create("Frame", {Parent = Picker, BackgroundColor3 = Color3.fromHSV(CurrentColor.H, CurrentColor.S, CurrentColor.V), Position = UDim2.new(0,12,0,226), Size = UDim2.new(0,50,0,30), BorderSizePixel = 0, ZIndex = 101})
                    Create("UICorner", {Parent = Preview, CornerRadius = UDim.new(0,6)})
                    Create("UIStroke", {Parent = Preview, Color = Library.Theme.Outline, Thickness = 1})
                    
                    Create("TextLabel", {Parent = Picker, Text = "Hex", Position = UDim2.new(0,72,0,210), Size = UDim2.new(0,80,0,14), Font = Library.Font, TextColor3 = Library.Theme.TextDim, TextSize = 11, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 101})
                    local HexBox = Create("TextBox", {Parent = Picker, BackgroundColor3 = Library.Theme.Element, Position = UDim2.new(0,72,0,226), Size = UDim2.new(0,90,0,30), Text = "", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, BorderSizePixel = 0, ClearTextOnFocus = false, ZIndex = 101})
                    Create("UICorner", {Parent = HexBox, CornerRadius = UDim.new(0,6)})
                    local HexStroke = Create("UIStroke", {Parent = HexBox, Color = Library.Theme.Outline, Thickness = 1})
                    Create("UIPadding", {Parent = HexBox, PaddingLeft = UDim.new(0,8)})
                    HexBox.Focused:Connect(function() TweenService:Create(HexStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() end)
                    HexBox.FocusLost:Connect(function() TweenService:Create(HexStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() end)
                    
                    Create("TextLabel", {Parent = Picker, Text = "RGB", Position = UDim2.new(0,172,0,210), Size = UDim2.new(0,96,0,14), Font = Library.Font, TextColor3 = Library.Theme.TextDim, TextSize = 11, BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 101})
                    local RBox = Create("TextBox", {Parent = Picker, BackgroundColor3 = Library.Theme.Element, Position = UDim2.new(0,172,0,226), Size = UDim2.new(0,30,0,30), Text = "255", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 12, BorderSizePixel = 0, TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 101})
                    Create("UICorner", {Parent = RBox, CornerRadius = UDim.new(0,6)})
                    local RStroke = Create("UIStroke", {Parent = RBox, Color = Library.Theme.Outline, Thickness = 1})
                    local GBox = Create("TextBox", {Parent = Picker, BackgroundColor3 = Library.Theme.Element, Position = UDim2.new(0,206,0,226), Size = UDim2.new(0,30,0,30), Text = "255", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 12, BorderSizePixel = 0, TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 101})
                    Create("UICorner", {Parent = GBox, CornerRadius = UDim.new(0,6)})
                    local GStroke = Create("UIStroke", {Parent = GBox, Color = Library.Theme.Outline, Thickness = 1})
                    local BBox = Create("TextBox", {Parent = Picker, BackgroundColor3 = Library.Theme.Element, Position = UDim2.new(0,240,0,226), Size = UDim2.new(0,30,0,30), Text = "255", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 12, BorderSizePixel = 0, TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 101})
                    Create("UICorner", {Parent = BBox, CornerRadius = UDim.new(0,6)})
                    local BStroke = Create("UIStroke", {Parent = BBox, Color = Library.Theme.Outline, Thickness = 1})
                    
                    RBox.Focused:Connect(function() TweenService:Create(RStroke, TweenInfo.new(0.15), {Color = Color3.fromRGB(255,100,100)}):Play() end)
                    RBox.FocusLost:Connect(function() TweenService:Create(RStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() end)
                    GBox.Focused:Connect(function() TweenService:Create(GStroke, TweenInfo.new(0.15), {Color = Color3.fromRGB(100,255,100)}):Play() end)
                    GBox.FocusLost:Connect(function() TweenService:Create(GStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() end)
                    BBox.Focused:Connect(function() TweenService:Create(BStroke, TweenInfo.new(0.15), {Color = Color3.fromRGB(100,100,255)}):Play() end)
                    BBox.FocusLost:Connect(function() TweenService:Create(BStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() end)
                    
                    local ApplyBtn = Create("TextButton", {Parent = Picker, Text = "Apply", Position = UDim2.new(0,12,1,-40), Size = UDim2.new(0.5,-18,0,32), BackgroundColor3 = Library.AccentColor, Font = Library.FontBold, TextColor3 = Library.Theme.Text, BorderSizePixel = 0, AutoButtonColor = false, ZIndex = 101})
                    Create("UICorner", {Parent = ApplyBtn, CornerRadius = UDim.new(0,6)})
                    ApplyBtn.MouseEnter:Connect(function() TweenService:Create(ApplyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.new(math.min(1, Library.AccentColor.R+0.1), math.min(1, Library.AccentColor.G+0.1), math.min(1, Library.AccentColor.B+0.1))}):Play() end)
                    ApplyBtn.MouseLeave:Connect(function() TweenService:Create(ApplyBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.AccentColor}):Play() end)
                    
                    local ResetBtn = Create("TextButton", {Parent = Picker, Text = "Reset", Position = UDim2.new(0.5,6,1,-40), Size = UDim2.new(0.5,-18,0,32), BackgroundColor3 = Library.Theme.Element, Font = Library.FontBold, TextColor3 = Library.Theme.Text, BorderSizePixel = 0, AutoButtonColor = false, ZIndex = 101})
                    Create("UICorner", {Parent = ResetBtn, CornerRadius = UDim.new(0,6)})
                    Create("UIStroke", {Parent = ResetBtn, Color = Library.Theme.Outline, Thickness = 1})
                    ResetBtn.MouseEnter:Connect(function() TweenService:Create(ResetBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.Theme.Outline}):Play() end)
                    ResetBtn.MouseLeave:Connect(function() TweenService:Create(ResetBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.Theme.Element}):Play() end)
                    
                    local function ColorToHex(color)
                        return string.format("#%02X%02X%02X", math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255))
                    end
                    
                    local function HexToColor(hex)
                        hex = hex:gsub("#", "")
                        if #hex == 6 then
                            local r = tonumber(hex:sub(1,2), 16) or 255
                            local g = tonumber(hex:sub(3,4), 16) or 255
                            local b = tonumber(hex:sub(5,6), 16) or 255
                            return Color3.fromRGB(r, g, b)
                        end
                        return nil
                    end
                    
                    local function UpdateColor(updateInputs)
                        local col = Color3.fromHSV(CurrentColor.H, CurrentColor.S, CurrentColor.V)
                        ColorBtn.BackgroundColor3 = col
                        SVPicker.BackgroundColor3 = Color3.fromHSV(CurrentColor.H, 1, 1)
                        Preview.BackgroundColor3 = col
                        SVCursor.Position = UDim2.new(CurrentColor.S, 0, 1 - CurrentColor.V, 0)
                        HueCursor.Position = UDim2.new(CurrentColor.H, 0, 0.5, 0)
                        if updateInputs ~= false then
                            HexBox.Text = ColorToHex(col)
                            RBox.Text = tostring(math.floor(col.R * 255))
                            GBox.Text = tostring(math.floor(col.G * 255))
                            BBox.Text = tostring(math.floor(col.B * 255))
                        end
                        pcall(Callback, col)
                    end
                    UpdateColor()
                    
                    HexBox.FocusLost:Connect(function(enter)
                        if enter then
                            local col = HexToColor(HexBox.Text)
                            if col then
                                CurrentColor.H, CurrentColor.S, CurrentColor.V = RGBToHSV(col)
                                UpdateColor()
                            else
                                UpdateColor()
                            end
                        end
                    end)
                    
                    local function UpdateFromRGB()
                        local r = math.clamp(tonumber(RBox.Text) or 0, 0, 255)
                        local g = math.clamp(tonumber(GBox.Text) or 0, 0, 255)
                        local b = math.clamp(tonumber(BBox.Text) or 0, 0, 255)
                        local col = Color3.fromRGB(r, g, b)
                        CurrentColor.H, CurrentColor.S, CurrentColor.V = RGBToHSV(col)
                        UpdateColor(false)
                        HexBox.Text = ColorToHex(col)
                    end
                    RBox.FocusLost:Connect(function(e) if e then UpdateFromRGB() end end)
                    GBox.FocusLost:Connect(function(e) if e then UpdateFromRGB() end end)
                    BBox.FocusLost:Connect(function(e) if e then UpdateFromRGB() end end)
                    
                    local SVDragging = false
                    SVPicker.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            SVDragging = true
                            local inputPos = Vector2.new(input.Position.X, input.Position.Y)
                            local pos = (inputPos - SVPicker.AbsolutePosition) / SVPicker.AbsoluteSize
                            CurrentColor.S = math.clamp(pos.X, 0, 1)
                            CurrentColor.V = math.clamp(1 - pos.Y, 0, 1)
                            UpdateColor()
                        end
                    end)
                    local svConn = InputService.InputChanged:Connect(function(input)
                        if SVDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            local inputPos = Vector2.new(input.Position.X, input.Position.Y)
                            local pos = (inputPos - SVPicker.AbsolutePosition) / SVPicker.AbsoluteSize
                            CurrentColor.S = math.clamp(pos.X, 0, 1)
                            CurrentColor.V = math.clamp(1 - pos.Y, 0, 1)
                            UpdateColor()
                        end
                    end)
                    
                    local HueDragging = false
                    HuePicker.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            HueDragging = true
                            local pos = (input.Position.X - HuePicker.AbsolutePosition.X) / HuePicker.AbsoluteSize.X
                            CurrentColor.H = math.clamp(pos, 0, 1)
                            UpdateColor()
                        end
                    end)
                    local hueConn = InputService.InputChanged:Connect(function(input)
                        if HueDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            local pos = (input.Position.X - HuePicker.AbsolutePosition.X) / HuePicker.AbsoluteSize.X
                            CurrentColor.H = math.clamp(pos, 0, 1)
                            UpdateColor()
                        end
                    end)
                    
                    local endConn = InputService.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            SVDragging = false
                            HueDragging = false
                        end
                    end)
                    
                    ApplyBtn.MouseButton1Click:Connect(function() Picker:Destroy() ActivePicker = nil end)
                    ResetBtn.MouseButton1Click:Connect(function()
                        CurrentColor.H, CurrentColor.S, CurrentColor.V = RGBToHSV(Default or Color3.new(1,1,1))
                        UpdateColor()
                    end)
                    
                    Picker.Destroying:Connect(function()
                        if svConn then svConn:Disconnect() end
                        if hueConn then hueConn:Disconnect() end
                        if endConn then endConn:Disconnect() end
                    end)
                end)
                
                local ColorPickerObj = {
                    Type = "ColorPicker",
                    Value = Default or Color3.new(1,1,1),
                    Set = function(self, color)
                        ColorBtn.BackgroundColor3 = color
                        CurrentColor.H, CurrentColor.S, CurrentColor.V = RGBToHSV(color)
                        self.Value = color
                        pcall(Callback, color)
                    end,
                    Get = function(self) return Color3.fromHSV(CurrentColor.H, CurrentColor.S, CurrentColor.V) end
                }
                Library.Options[Text] = ColorPickerObj
                return ColorPickerObj
            end
            
            function Group:AddKeybind(Text, Default, Callback)
                local Frame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,26)})
                local Label = Create("TextLabel", {Parent = Frame, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,-75,1,0), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = 13})
                
                local Btn = Create("TextButton", {Parent = Frame, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(0,70,0,22), Position = UDim2.new(1,-70,0,2), Text = (Default and Default.Name) or "None", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 11, AutoButtonColor = false, BorderSizePixel = 0})
                Create("UICorner", {Parent = Btn, CornerRadius = UDim.new(0,5)})
                local BtnStroke = Create("UIStroke", {Parent = Btn, Color = Library.Theme.Outline, Thickness = 1})
                
                local KeybindObj = {
                    Type = "Keybind",
                    Value = Default,
                    Set = function(self, key)
                        self.Value = key
                        Btn.Text = key and key.Name or "None"
                        -- Update Library.ToggleKey if this is the menu toggle keybind
                        if Text:lower():find("toggle") or Text:lower():find("menu") then
                            Library.ToggleKey = key
                        end
                        pcall(Callback, key)
                    end
                }
                
                Btn.MouseEnter:Connect(function() 
                    TweenService:Create(BtnStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play()
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.Text}):Play()
                end)
                Btn.MouseLeave:Connect(function() 
                    TweenService:Create(BtnStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play()
                    TweenService:Create(Label, TweenInfo.new(0.15), {TextColor3 = Library.Theme.TextDim}):Play()
                end)
                
                Btn.MouseButton1Click:Connect(function()
                    -- Create modal overlay with dark purple tint
                    local Modal = Create("Frame", {
                        Parent = ScreenGui,
                        BackgroundColor3 = Color3.fromRGB(30, 20, 50),
                        BackgroundTransparency = 0.3,
                        Size = UDim2.new(1, 0, 1, 0),
                        ZIndex = 5000
                    })
                    
                    local ModalBox = Create("Frame", {
                        Parent = Modal,
                        BackgroundColor3 = Library.Theme.Section,
                        Position = UDim2.new(0.5, 0, 0.5, 0),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        Size = UDim2.new(0, 280, 0, 140),
                        ZIndex = 5001
                    })
                    Create("UICorner", {Parent = ModalBox, CornerRadius = UDim.new(0, 8)})
                    Create("UIStroke", {Parent = ModalBox, Color = Library.AccentColor, Thickness = 2})
                    
                    local ModalTitle = Create("TextLabel", {
                        Parent = ModalBox,
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, 0, 0, 15),
                        Size = UDim2.new(1, 0, 0, 25),
                        Text = "Please Press Your Keybind",
                        Font = Library.FontBold,
                        TextColor3 = Library.Theme.Text,
                        TextSize = 16,
                        ZIndex = 5002
                    })
                    
                    local ModalStatus = Create("TextLabel", {
                        Parent = ModalBox,
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, 0, 0, 45),
                        Size = UDim2.new(1, 0, 0, 20),
                        Text = "Waiting for input...",
                        Font = Library.Font,
                        TextColor3 = Library.Theme.TextDim,
                        TextSize = 14,
                        ZIndex = 5002
                    })
                    
                    local ButtonContainer = Create("Frame", {
                        Parent = ModalBox,
                        BackgroundTransparency = 1,
                        Position = UDim2.new(0, 20, 1, -50),
                        Size = UDim2.new(1, -40, 0, 35),
                        ZIndex = 5002,
                        Visible = false
                    })
                    
                    local SaveBtn = Create("TextButton", {
                        Parent = ButtonContainer,
                        BackgroundColor3 = Library.AccentColor,
                        Position = UDim2.new(0, 0, 0, 0),
                        Size = UDim2.new(0.48, 0, 1, 0),
                        Text = "Save",
                        Font = Library.FontBold,
                        TextColor3 = Library.Theme.Text,
                        TextSize = 14,
                        AutoButtonColor = false,
                        ZIndex = 5003
                    })
                    Create("UICorner", {Parent = SaveBtn, CornerRadius = UDim.new(0, 6)})
                    
                    local ResetBtn = Create("TextButton", {
                        Parent = ButtonContainer,
                        BackgroundColor3 = Library.Theme.Element,
                        Position = UDim2.new(0.52, 0, 0, 0),
                        Size = UDim2.new(0.48, 0, 1, 0),
                        Text = "Reset",
                        Font = Library.FontBold,
                        TextColor3 = Library.Theme.Text,
                        TextSize = 14,
                        AutoButtonColor = false,
                        ZIndex = 5003
                    })
                    Create("UICorner", {Parent = ResetBtn, CornerRadius = UDim.new(0, 6)})
                    Create("UIStroke", {Parent = ResetBtn, Color = Library.Theme.Outline, Thickness = 1})
                    
                    local pendingKey = nil
                    local con
                    con = InputService.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.Keyboard then
                            local key = input.KeyCode
                            if key == Enum.KeyCode.Unknown or key == Enum.KeyCode.Escape then 
                                Modal:Destroy()
                                con:Disconnect()
                                return 
                            end
                            pendingKey = key
                            ModalTitle.Text = "Keybind Set to " .. key.Name
                            ModalStatus.Text = "Press Save to confirm or Reset to remove"
                            ModalStatus.TextColor3 = Library.AccentColor
                            ButtonContainer.Visible = true
                            con:Disconnect()
                        end
                    end)
                    
                    SaveBtn.MouseButton1Click:Connect(function()
                        if pendingKey then
                            KeybindObj.Value = pendingKey
                            Btn.Text = pendingKey.Name
                            if Text:lower():find("toggle") or Text:lower():find("menu") then
                                Library.ToggleKey = pendingKey
                            end
                            pcall(Callback, pendingKey)
                        end
                        Modal:Destroy()
                    end)
                    
                    ResetBtn.MouseButton1Click:Connect(function()
                        KeybindObj.Value = nil
                        Btn.Text = "None"
                        if Text:lower():find("toggle") or Text:lower():find("menu") then
                            Library.ToggleKey = nil
                        end
                        pcall(Callback, nil)
                        Modal:Destroy()
                    end)
                    
                    SaveBtn.MouseEnter:Connect(function()
                        TweenService:Create(SaveBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(116, 96, 255)}):Play()
                    end)
                    SaveBtn.MouseLeave:Connect(function()
                        TweenService:Create(SaveBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.AccentColor}):Play()
                    end)
                    ResetBtn.MouseEnter:Connect(function()
                        TweenService:Create(ResetBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.Theme.Error}):Play()
                    end)
                    ResetBtn.MouseLeave:Connect(function()
                        TweenService:Create(ResetBtn, TweenInfo.new(0.15), {BackgroundColor3 = Library.Theme.Element}):Play()
                    end)
                end)
                
                -- Set initial toggle key if this is the menu toggle keybind
                if (Text:lower():find("toggle") or Text:lower():find("menu")) and Default then
                    Library.ToggleKey = Default
                end
                
                Library.Options[Text] = KeybindObj
                return KeybindObj
            end
            
            function Group:AddButton(Text, Callback)
                local Btn = Create("TextButton", {Parent = Container, BackgroundColor3 = Library.Theme.Element, Size = UDim2.new(1,0,0,30), Text = Text, Font = Library.FontBold, TextColor3 = Library.Theme.Text, TextSize = 13, AutoButtonColor = false, BorderSizePixel = 0})
                Create("UICorner", {Parent = Btn, CornerRadius = UDim.new(0,6)})
                Create("UIStroke", {Parent = Btn, Color = Library.Theme.Outline, Thickness = 1})
                
                Btn.MouseEnter:Connect(function() TweenService:Create(Btn, TweenInfo.new(0.2), {BackgroundColor3 = Library.AccentColor}):Play() end)
                Btn.MouseLeave:Connect(function() TweenService:Create(Btn, TweenInfo.new(0.2), {BackgroundColor3 = Library.Theme.Element}):Play() end)
                Btn.MouseButton1Click:Connect(function() pcall(Callback) end)
            end
            
            function Group:AddInput(Text, Placeholder, Callback)
                local Frame = Create("Frame", {Parent = Container, BackgroundTransparency = 1, Size = UDim2.new(1,0,0,50)})
                Create("TextLabel", {Parent = Frame, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,0,0,18), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = 13})
                
                local Box = Create("TextBox", {Parent = Frame, BackgroundColor3 = Library.Theme.Element, Position = UDim2.new(0,0,0,22), Size = UDim2.new(1,0,0,26), PlaceholderText = Placeholder or "", Text = "", Font = Library.Font, TextColor3 = Library.Theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0, ClearTextOnFocus = false})
                Create("UICorner", {Parent = Box, CornerRadius = UDim.new(0,6)})
                local InputStroke = Create("UIStroke", {Parent = Box, Color = Library.Theme.Outline, Thickness = 1})
                Create("UIPadding", {Parent = Box, PaddingLeft = UDim.new(0,10)})
                
                local InputObj = {
                    Type = "Input",
                    Value = "",
                    Set = function(self, text)
                        Box.Text = text
                        self.Value = text
                        pcall(Callback, text)
                    end
                }
                
                Box.Focused:Connect(function() TweenService:Create(InputStroke, TweenInfo.new(0.15), {Color = Library.AccentColor}):Play() end)
                Box.FocusLost:Connect(function(enter) 
                    TweenService:Create(InputStroke, TweenInfo.new(0.15), {Color = Library.Theme.Outline}):Play() 
                    InputObj.Value = Box.Text
                    if enter then pcall(Callback, Box.Text) end 
                end)
                
                Library.Options[Text] = InputObj
                return InputObj
            end
            
            function Group:AddLabel(Text)
                local Lbl = Create("TextLabel", {Parent = Container, Text = Text, Font = Library.Font, TextColor3 = Library.Theme.TextDim, Size = UDim2.new(1,0,0,18), BackgroundTransparency = 1, TextXAlignment = Enum.TextXAlignment.Left, TextSize = isMobile and 11 or 13, TextWrapped = true})
                return {Set = function(self, txt) Lbl.Text = txt end}
            end
            
            function Group:AddDivider()
                Create("Frame", {Parent = Container, BackgroundColor3 = Library.Theme.Outline, Size = UDim2.new(1,0,0,1), BorderSizePixel = 0})
            end
            
            return Group
        end
        
        function Tab:AddLeftGroupbox(Name) return self:CreateGroupbox(Left, Name) end
        function Tab:AddRightGroupbox(Name) return self:CreateGroupbox(Right, Name) end
        
        return Tab
    end
    
    -- SetVisible function for mobile toggle
    function WindowObj:SetVisible(visible)
        Main.Visible = visible
        Library.Open = visible
        if CustomCursor then CustomCursor.Visible = visible end
        if CursorDot then CursorDot.Visible = visible end
        InputService.MouseIconEnabled = not visible
    end
    
    -- Mobile toggle button
    if isMobile then
        local MobileToggle = Create("TextButton", {
            Parent = ScreenGui,
            Name = "MobileToggle",
            BackgroundColor3 = Library.AccentColor,
            Size = UDim2.new(0, 50, 0, 50),
            Position = UDim2.new(0, 10, 0.5, -25),
            Text = "≡",
            TextColor3 = Color3.new(1, 1, 1),
            TextSize = 28,
            Font = Enum.Font.GothamBold,
            AutoButtonColor = false,
            ZIndex = 10000
        })
        Create("UICorner", {Parent = MobileToggle, CornerRadius = UDim.new(0, 10)})
        Create("UIStroke", {Parent = MobileToggle, Color = Color3.new(1, 1, 1), Thickness = 2})
        
        -- Make mobile toggle draggable
        local dragging = false
        local dragStart, startPos
        
        MobileToggle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = MobileToggle.Position
            end
        end)
        
        MobileToggle.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)
        
        InputService.InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.Touch then
                local delta = input.Position - dragStart
                MobileToggle.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            end
        end)
        
        MobileToggle.MouseButton1Click:Connect(function()
            Library.Open = not Library.Open
            Main.Visible = Library.Open
            MobileToggle.Text = Library.Open and "≡" or "+"
            MobileToggle.BackgroundColor3 = Library.Open and Library.AccentColor or Color3.fromRGB(60, 60, 60)
        end)
        
        -- Hide default cursor on mobile
        if CustomCursor then CustomCursor.Visible = false end
        if CursorDot then CursorDot.Visible = false end
        InputService.MouseIconEnabled = true
    end
    
    return WindowObj
end

-- Config Manager System (Fluent-style)
local HttpService = game:GetService("HttpService")

Library.Options = {}

Library.SaveManager = {
    Folder = "UILibraryConfigs",
    Ignore = {},
    Parser = {
        Toggle = {
            Save = function(idx, object)
                return { type = "Toggle", idx = idx, value = object.Value }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set then
                    Library.Options[idx]:Set(data.value)
                end
            end
        },
        Slider = {
            Save = function(idx, object)
                return { type = "Slider", idx = idx, value = object.Value }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set then
                    Library.Options[idx]:Set(data.value)
                end
            end
        },
        Dropdown = {
            Save = function(idx, object)
                return { type = "Dropdown", idx = idx, value = object.Value }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set then
                    Library.Options[idx]:Set(data.value)
                end
            end
        },
        ColorPicker = {
            Save = function(idx, object)
                local c = object.Value
                return { type = "ColorPicker", idx = idx, value = {c.R, c.G, c.B} }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set then
                    Library.Options[idx]:Set(Color3.new(data.value[1], data.value[2], data.value[3]))
                end
            end
        },
        Keybind = {
            Save = function(idx, object)
                return { type = "Keybind", idx = idx, value = object.Value and object.Value.Name or "None" }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set and data.value ~= "None" then
                    Library.Options[idx]:Set(Enum.KeyCode[data.value])
                end
            end
        },
        Input = {
            Save = function(idx, object)
                return { type = "Input", idx = idx, value = object.Value }
            end,
            Load = function(idx, data)
                if Library.Options[idx] and Library.Options[idx].Set then
                    Library.Options[idx]:Set(data.value)
                end
            end
        }
    }
}

function Library.SaveManager:SetIgnoreIndexes(list)
    for _, key in next, list do
        self.Ignore[key] = true
    end
end

function Library.SaveManager:SetFolder(folder)
    self.Folder = folder
    self:BuildFolderTree()
end

function Library.SaveManager:BuildFolderTree()
    local paths = { self.Folder, self.Folder .. "/settings" }
    for i = 1, #paths do
        if not isfolder(paths[i]) then
            makefolder(paths[i])
        end
    end
end

function Library.SaveManager:RefreshConfigList()
    local list = listfiles(self.Folder .. "/settings")
    local out = {}
    for i = 1, #list do
        local file = list[i]
        if file:sub(-5) == ".json" then
            local name = file:match("([^/\\]+)%.json$")
            if name and name ~= "autoload" then
                table.insert(out, name)
            end
        end
    end
    return out
end

function Library.SaveManager:Save(name)
    if not name or name:gsub(" ", "") == "" then
        return false, "invalid name"
    end
    
    self:BuildFolderTree()
    local fullPath = self.Folder .. "/settings/" .. name .. ".json"
    
    local data = { objects = {} }
    
    for idx, option in next, Library.Options do
        if not self.Parser[option.Type] then continue end
        if self.Ignore[idx] then continue end
        table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
    end
    
    local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
    if not success then
        return false, "encode error"
    end
    
    writefile(fullPath, encoded)
    return true
end

function Library.SaveManager:Load(name)
    if not name or name:gsub(" ", "") == "" then
        return false, "invalid name"
    end
    
    local file = self.Folder .. "/settings/" .. name .. ".json"
    if not isfile(file) then return false, "file not found" end
    
    local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(file))
    if not success then return false, "decode error" end
    
    local loadedCount = 0
    for _, option in next, decoded.objects do
        local idx = option.idx
        local optType = option.type
        local optionObj = Library.Options[idx]
        
        if optionObj and optionObj.Set then
            local ok, err = pcall(function()
                if optType == "Toggle" then
                    optionObj:Set(option.value)
                elseif optType == "Slider" then
                    optionObj:Set(option.value)
                elseif optType == "Dropdown" then
                    optionObj:Set(option.value)
                elseif optType == "ColorPicker" then
                    optionObj:Set(Color3.new(option.value[1], option.value[2], option.value[3]))
                elseif optType == "Keybind" then
                    if option.value ~= "None" then
                        optionObj:Set(Enum.KeyCode[option.value])
                    end
                elseif optType == "Input" then
                    optionObj:Set(option.value)
                end
            end)
            if ok then 
                loadedCount = loadedCount + 1 
            else
                warn("Failed to load " .. idx .. ": " .. tostring(err))
            end
        end
    end
    
    return true, loadedCount
end

function Library.SaveManager:Delete(name)
    local path = self.Folder .. "/settings/" .. name .. ".json"
    if isfile(path) then
        delfile(path)
        return true
    end
    return false
end

function Library.SaveManager:LoadAutoloadConfig()
    local autoloadPath = self.Folder .. "/settings/autoload.txt"
    if isfile(autoloadPath) then
        local name = readfile(autoloadPath)
        if name and name ~= "" then
            local success, count = self:Load(name)
            if success then
                Library:Notify("Config", "Auto-loaded: " .. name .. " (" .. tostring(count or 0) .. " settings)", 3, "check")
            else
                Library:Notify("Config", "Failed to auto-load: " .. name, 3, "error")
            end
            return true
        end
    end
    return false
end

function Library.SaveManager:GetAutoloadName()
    local autoloadPath = self.Folder .. "/settings/autoload.txt"
    if isfile(autoloadPath) then
        local name = readfile(autoloadPath)
        if name and name ~= "" then
            return name
        end
    end
    return "None"
end

function Library.SaveManager:BuildConfigSection(tab)
    local ConfigGroup = tab:AddRightGroupbox("Configuration")
    
    local configNameValue = ""
    local selectedConfig = ""
    
    -- Current Auto Load label
    local autoloadLabel = ConfigGroup:AddLabel("Current Auto Load: " .. self:GetAutoloadName())
    
    ConfigGroup:AddInput("SaveManager_ConfigName", "Config name...", function(text)
        configNameValue = text
    end)
    
    local configList = self:RefreshConfigList()
    local dropdownRef = nil
    
    dropdownRef = ConfigGroup:AddDropdown("SaveManager_ConfigList", configList, nil, function(opt)
        selectedConfig = opt or ""
    end)
    
    ConfigGroup:AddButton("Create Config", function()
        local name = configNameValue
        if not name or name:gsub(" ", "") == "" then
            return Library:Notify("Config", "Enter a config name", 3, "error")
        end
        
        local success, err = self:Save(name)
        if not success then
            return Library:Notify("Config", "Failed to save: " .. (err or "unknown"), 3, "error")
        end
        
        Library:Notify("Config", "Created: " .. name, 3, "check")
        
        if dropdownRef and dropdownRef.Refresh then
            dropdownRef:Refresh(self:RefreshConfigList())
        end
    end)
    
    ConfigGroup:AddButton("Load Config", function()
        if not selectedConfig or selectedConfig == "" then
            return Library:Notify("Config", "Select a config first", 3, "error")
        end
        
        local success, err = self:Load(selectedConfig)
        if not success then
            return Library:Notify("Config", "Failed to load: " .. (err or "unknown"), 3, "error")
        end
        
        Library:Notify("Config", "Loaded: " .. selectedConfig, 3, "check")
    end)
    
    ConfigGroup:AddButton("Overwrite Config", function()
        if not selectedConfig or selectedConfig == "" then
            return Library:Notify("Config", "Select a config first", 3, "error")
        end
        
        local success, err = self:Save(selectedConfig)
        if not success then
            return Library:Notify("Config", "Failed to save: " .. (err or "unknown"), 3, "error")
        end
        
        Library:Notify("Config", "Overwrote: " .. selectedConfig, 3, "check")
    end)
    
    ConfigGroup:AddButton("Delete Config", function()
        if not selectedConfig or selectedConfig == "" then
            return Library:Notify("Config", "Select a config first", 3, "error")
        end
        
        if self:Delete(selectedConfig) then
            Library:Notify("Config", "Deleted: " .. selectedConfig, 3, "check")
            selectedConfig = ""
            if dropdownRef and dropdownRef.Refresh then
                dropdownRef:Refresh(self:RefreshConfigList())
            end
        else
            Library:Notify("Config", "Failed to delete", 3, "error")
        end
    end)
    
    ConfigGroup:AddButton("Refresh List", function()
        if dropdownRef and dropdownRef.Refresh then
            dropdownRef:Refresh(self:RefreshConfigList())
        end
        Library:Notify("Config", "Refreshed config list", 2, "info")
    end)
    
    ConfigGroup:AddButton("Set as Auto-Load", function()
        if not selectedConfig or selectedConfig == "" then
            return Library:Notify("Config", "Select a config first", 3, "error")
        end
        
        self:BuildFolderTree()
        writefile(self.Folder .. "/settings/autoload.txt", selectedConfig)
        autoloadLabel:Set("Current Auto Load: " .. selectedConfig)
        Library:Notify("Config", "Auto-load set: " .. selectedConfig, 3, "check")
    end)
    
    self:SetIgnoreIndexes({"SaveManager_ConfigName", "SaveManager_ConfigList"})
end

Library.SaveManager:BuildFolderTree()

return Library