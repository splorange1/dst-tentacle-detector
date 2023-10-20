Assets = {
	Asset("ANIM", "images/trap_marker_fx.zip")
}

local function MakeSkull(inst, scale)
	local skull = GLOBAL.CreateEntity()

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

	skull.entity:SetParent(inst.entity)
	return skull
end

AddPrefabPostInit("tentacle", function(inst)
  --AddArrowToTentacle(inst)
  MakeSkull(inst,1)
end)

AddPrefabPostInit("bigshadowtentacle", function(inst)
  --AddArrowToTentacle(inst)
  MakeSkull(inst,0.75)
end)

