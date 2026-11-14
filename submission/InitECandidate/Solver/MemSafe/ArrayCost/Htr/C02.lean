import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_pack_bytes := (declPair Guest.Software.guestFn_pack_bytes).2.2
def b_pack_bytes : Nat := 274877907021
theorem cost_pack_bytes : Cost σ guestCtx body_pack_bytes b_pack_bytes := ArrayCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_pack_bytes : CalleeCost σ guestCtx (nm "pack_bytes") b_pack_bytes := by
  have hc : ∃ rs, guestCode (nm "pack_bytes") = some ((declPair Guest.Software.guestFn_pack_bytes).2.1,body_pack_bytes,rs) :=
    declPair_valid (List.getElem_mem (n := 192) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_pack_bytes
def table2 := ArrayCost.Core.extend table1 (nm "pack_bytes") b_pack_bytes
theorem table2_sound : TblSound σ guestCtx table2 := ArrayCost.Core.extend_sound table1_sound cc_pack_bytes
#print axioms cc_pack_bytes
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
