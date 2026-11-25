import InitECandidate.Solver.Improvements.CompactCostReplay

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules


namespace BlobAfterDivmod

private def u256_div_table : TblState := ([(nm "u256_divmod", 1291272085159668613509)],[],[])

private theorem u256_div_sound {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : StateSound σ guestCtx u256_div_table :=
  (overrideCost_sound stateSound_empty hdiv)

theorem u256_div_cost {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : CalleeCost σ guestCtx (nm "u256_div") 1291272085159668613510 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_u256_div) (u256_div_sound hdiv)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 70) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)


private def taylor_exponential_table : TblState := ([(nm "u256_mul_full", 16), (nm "u256_mul", 7), (nm "u256_is_zero", 0), (nm "u256_from_word", 0), (nm "u256_div", 1291272085159668613510), (nm "u256_add", 0), (nm "trap_with", 0)],[],[])

private theorem taylor_exponential_sound {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : StateSound σ guestCtx taylor_exponential_table :=
  (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "trap_with") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_add") (B := 0) (by decide_cbv))) (u256_div_cost hdiv)) (CompactCostReplay.accepted (f := nm "u256_from_word") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_is_zero") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_mul") (B := 7) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_mul_full") (B := 16) (by decide_cbv)))

theorem taylor_exponential_cost {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : CalleeCost σ guestCtx (nm "taylor_exponential") 23819765684465692452784845945574833259320 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_taylor_exponential) (taylor_exponential_sound hdiv)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 232) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)


private def calculate_blob_gas_price_table : TblState := ([(nm "taylor_exponential", 23819765684465692452784845945574833259320)],[],[])

private theorem calculate_blob_gas_price_sound {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : StateSound σ guestCtx calculate_blob_gas_price_table :=
  (overrideCost_sound stateSound_empty (taylor_exponential_cost hdiv))

theorem calculate_blob_gas_price_cost {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : CalleeCost σ guestCtx (nm "calculate_blob_gas_price") 23819765684465692452784845945574833259321 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_calculate_blob_gas_price) (calculate_blob_gas_price_sound hdiv)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 233) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)


private def op_blobbasefee_table : TblState := ([(nm "stack_push", 73786976294838206472), (nm "pc_add", 0), (nm "charge_gas", 0), (nm "calculate_blob_gas_price", 23819765684465692452784845945574833259321), (nm "block_env", 0)],[],[])

private theorem op_blobbasefee_sound {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : StateSound σ guestCtx op_blobbasefee_table :=
  (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "block_env") (B := 0) (by decide_cbv))) (calculate_blob_gas_price_cost hdiv)) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pc_add") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_push") (B := 73786976294838206472) (by decide_cbv)))

theorem op_blobbasefee_cost {σ : Type} (hdiv : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509) : CalleeCost σ guestCtx (nm "op_blobbasefee") 23819765684465692452858632921869671465798 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_op_blobbasefee) (op_blobbasefee_sound hdiv)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 553) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)


#print axioms op_blobbasefee_cost

end BlobAfterDivmod
