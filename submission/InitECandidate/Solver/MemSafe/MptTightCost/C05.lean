import InitECandidate.Solver.MemSafe.MptTightCost.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.MptTightCost
variable {σ : Type}
def body__node_rlp_finish := (declPair Guest.Software.guestFn__node_rlp_finish).2.2
def b__node_rlp_finish : Nat := 10775030113653632417188448048919
theorem cost__node_rlp_finish : Cost σ guestCtx body__node_rlp_finish b__node_rlp_finish :=
 ConstCost.Core.analyze_sound table4_sound (by cbv)
theorem cc__node_rlp_finish : CalleeCost σ guestCtx (nm "_node_rlp_finish") b__node_rlp_finish := by
 have hc : ∃ rs, guestCode (nm "_node_rlp_finish") = some ((declPair Guest.Software.guestFn__node_rlp_finish).2.1,body__node_rlp_finish,rs) :=
  declPair_valid (List.getElem_mem (n := 282) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc cost__node_rlp_finish
def table5 := ConstCost.Core.extend table4 (nm "_node_rlp_finish") b__node_rlp_finish
theorem table5_sound : TblSound σ guestCtx table5 := ConstCost.Core.extend_sound table4_sound cc__node_rlp_finish
#print axioms cc__node_rlp_finish
end InitECandidate.Solver.MemSafe.MptTightCost
