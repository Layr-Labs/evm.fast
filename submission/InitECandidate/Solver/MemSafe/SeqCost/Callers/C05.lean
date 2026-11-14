import InitECandidate.Solver.MemSafe.SeqCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_rlp_finish_list := (declPair Guest.Software.guestFn_rlp_finish_list).2.2
def b_rlp_finish_list : Nat := 55340232358567608367
theorem cost_rlp_finish_list : Cost σ guestCtx body_rlp_finish_list b_rlp_finish_list :=
  SeqCost.Analyzer.analyze_sound table4_sound (by cbv)
theorem cc_rlp_finish_list : CalleeCost σ guestCtx (nm "rlp_finish_list") b_rlp_finish_list := by
  have hc : ∃ rs, guestCode (nm "rlp_finish_list") = some ((declPair Guest.Software.guestFn_rlp_finish_list).2.1,body_rlp_finish_list,rs) :=
    declPair_valid (List.getElem_mem (n := 833) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_rlp_finish_list
def table5 := SeqCost.Analyzer.extend table4 (nm "rlp_finish_list") b_rlp_finish_list
theorem table5_sound : TblSound σ guestCtx table5 := SeqCost.Analyzer.extend_sound table4_sound cc_rlp_finish_list
#print axioms cc_rlp_finish_list
end InitECandidate.Solver.MemSafe.SeqCost.Callers
