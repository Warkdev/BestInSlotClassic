-- Helpers function to create widgets.
local backdrop = {
    bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
    tile = true, tileSize = 16, edgeSize = 16, 
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
};
    
local function IsSelfOrChild(self, focus)    
    -- This function helps validate that the focus is within the local hierarchy.
    return focus and (self == focus or IsSelfOrChild(self, focus:GetParent()));
end
    
local function StopMovingOrSizing(self)    
    if self.isMoving then
        self:StopMovingOrSizing();
        self.isMoving = false;
    end
end

local function StartMovingOrSizing(self, fromChild)    
    if not self:IsMovable() and not self:IsResizable() then
        return
    end
    if self.isMoving then
        StopMovingOrSizing(self);
    else
        self.isMoving = true;
        if not self:IsMovable() or ((select(2, GetCursorPosition()) / self:GetEffectiveScale()) < math.max(self:GetTop() - 40, self:GetBottom() + 10)) then
            --self:StartSizing();
        else
            self:StartMoving();
        end
    end
end
    
local function HideParent(self)        
    BIS:ShowManager();
end
    
function BIS:CreateWindow(name, height, width)    
    local window = CreateFrame("FRAME", "BISManager", UIParent);        
    window:EnableMouse(true);
    window:SetMovable(true);
    window:SetResizable(false);
    window:SetPoint("CENTER");
	window:SetMinResize(32, 32);
	window:SetSize(height, width);
    window:SetUserPlaced(true);
    window:SetBackdrop(backdrop);
    window:SetBackdropBorderColor(1, 1, 1, 1);
    window:SetBackdropColor(0, 0, 0, 1);
    window:SetClampedToScreen(true);
	window:SetToplevel(true);        
	window:SetScript("OnMouseDown", StartMovingOrSizing);
	window:SetScript("OnMouseUp", StopMovingOrSizing);
	window:SetScript("OnHide", StopMovingOrSizing);

    -- The Close Button. It's assigned as a local variable so you can change how it behaves.
    window.CloseButton = CreateFrame("Button", nil, window, "UIPanelCloseButton");
    window.CloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 4, 3);
    window.CloseButton:SetScript("OnClick", HideParent);        

    return window;
end

function BIS:CreateCheckBox(name, label, parent, x, y, width, height, tooltip, callback)    
    local checkbox = CreateFrame("CheckButton", name, parent, "ChatConfigCheckButtonTemplate");
    checkbox.tooltip = tooltip;    
    checkbox:SetPoint("TOPLEFT", x, y);
    _G[name.."Text"]:SetSize(width, height);
    _G[name.."Text"]:SetText(label);    
    checkbox:SetScript("OnClick", callback);

    return checkbox;
end

function BIS:CreateSlider(name, label, parent, min, max, x, y, callback)    
    local slider = CreateFrame("Slider", name, parent, "OptionsSliderTemplate");
    slider:SetPoint("TOPLEFT", x, y);
    slider:SetMinMaxValues(min, max);
    slider:SetWidth(200);
    slider:SetValueStep(1);
    slider:SetStepsPerPage(1);
    slider:SetWidth(200);
    slider:SetObeyStepOnDrag(true);    
    slider:SetScript("OnValueChanged", callback);
    _G[name.."Text"]:SetText(label);
    _G[name.."Low"]:SetText(min);
    _G[name.."High"]:SetText(max);

    return slider;
end
