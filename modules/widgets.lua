-- Helpers function to create widgets.
function CreateCheckBox(name, label, parent, x, y, tooltip, callback)
    local checkbox = CreateFrame("CheckButton", name, parent, "ChatConfigCheckButtonTemplate");
    checkbox.tooltip = tooltip;
    checkbox:SetPoint("TOPLEFT", x, y);
    _G[name.."Text"]:SetText(label);
    checkbox:SetScript("OnClick", callback);

    return checkbox;
end

function CreateSlider(name, label, parent, min, max, x, y, callback)
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