local _G = GLOBAL
local FollowText = require "widgets/followtext"
local Image = require "widgets/image"
local require = GLOBAL.require
local Vector3 = GLOBAL.Vector3
local DEFAULT_OFFSET = Vector3(0, -400, 0)

if _G.TheNet:IsDedicated() then return end

if _G.TheNet:GetServerGameMode() == "lavaarena" then return end


--[[Assets = {
    Asset("ATLAS", "images/wgt_arrow.xml"),
    Asset("IMAGE","images/wgt_arrow.tex"),
}]]--

Assets = {
	Asset("ANIM", "images/trap_marker_fx.zip")
}

local function MakeSkull(inst, scale)
	local skull = _G.CreateEntity()

	skull.entity:SetCanSleep(false)
	skull.persists = false

	skull.entity:AddTransform()
	skull.entity:AddAnimState()

	skull:AddTag("FX")
	skull:AddTag("NOCLICK")

	skull.Transform:SetScale(scale, scale, scale)

	skull.AnimState:SetBank("trap_marker_fx")
	skull.AnimState:SetBuild("trap_marker_fx")
    skull.AnimState:PlayAnimation("idle",true)
    skull.AnimState:SetTime(math.random()*3)

	skull.AnimState:SetBloomEffectHandle( "shaders/anim.ksh" )  
	--[[circle.AnimState:SetOrientation(_G.ANIM_ORIENTATION.OnGround)
	circle.AnimState:SetLayer(_G.LAYER_BACKGROUND)
	circle.AnimState:SetSortOrder(3.1)]]--

	skull.entity:SetParent(inst.entity)
	return skull
end


--[[local function AddArrowToTentacle(inst)
	if _G.ThePlayer ~= nil and _G.ThePlayer.HUD ~= nil then
	inst.playerhud = _G.ThePlayer.HUD:AddChild(FollowText(_G.TALKINGFONT, 35))
	inst.playerhud:SetHUD(_G.ThePlayer.HUD.inst)
    local offset = Vector3(0,-220,0)
    inst.playerhud:SetOffset(DEFAULT_OFFSET-offset)
    inst.playerhud:SetTarget(inst)
	inst.playerhud.arrow = inst.playerhud:AddChild(Image("images/wgt_arrow.xml", "wgt_arrow.tex"))
    inst.playerhud.arrow:SetScale(.25,.25,1)

	end
end]]--

AddPrefabPostInit("tentacle", function(inst)
  --AddArrowToTentacle(inst)
  MakeSkull(inst,1)
end)

AddPrefabPostInit("bigshadowtentacle", function(inst)
  --AddArrowToTentacle(inst)
  MakeSkull(inst,0.75)
end)

