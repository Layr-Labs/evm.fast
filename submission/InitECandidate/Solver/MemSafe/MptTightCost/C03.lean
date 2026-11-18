import InitECandidate.Solver.MemSafe.MptTightCost.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.MptTightCost
variable {σ : Type}
def body__node_rlp_begin := (declPair Guest.Software.guestFn__node_rlp_begin).2.2
def b__node_rlp_begin : Nat := 36893488181778841622
theorem cost__node_rlp_begin : Cost σ guestCtx body__node_rlp_begin b__node_rlp_begin :=
 ConstCost.Core.analyze_sound table2_sound (by cbv)
theorem cc__node_rlp_begin : CalleeCost σ guestCtx (nm "_node_rlp_begin") b__node_rlp_begin := by
 have hc : ∃ rs, guestCode (nm "_node_rlp_begin") = some ((declPair Guest.Software.guestFn__node_rlp_begin).2.1,body__node_rlp_begin,rs) :=
  declPair_valid (List.getElem_mem (n := 281) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc cost__node_rlp_begin
def table3 := ConstCost.Core.extend table2 (nm "_node_rlp_begin") b__node_rlp_begin
theorem table3_sound : TblSound σ guestCtx table3 := ConstCost.Core.extend_sound table2_sound cc__node_rlp_begin
#print axioms cc__node_rlp_begin
end InitECandidate.Solver.MemSafe.MptTightCost
