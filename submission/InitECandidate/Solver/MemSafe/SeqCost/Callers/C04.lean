import InitECandidate.Solver.MemSafe.SeqCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_add_to_bloom := (declPair Guest.Software.guestFn_add_to_bloom).2.2
def b_add_to_bloom : Nat := 633825300815090976167789854948
theorem cost_add_to_bloom : Cost σ guestCtx body_add_to_bloom b_add_to_bloom :=
  SeqCost.Analyzer.analyze_sound table3_sound (by cbv)
theorem cc_add_to_bloom : CalleeCost σ guestCtx (nm "add_to_bloom") b_add_to_bloom := by
  have hc : ∃ rs, guestCode (nm "add_to_bloom") = some ((declPair Guest.Software.guestFn_add_to_bloom).2.1,body_add_to_bloom,rs) :=
    declPair_valid (List.getElem_mem (n := 831) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_add_to_bloom
def table4 := SeqCost.Analyzer.extend table3 (nm "add_to_bloom") b_add_to_bloom
theorem table4_sound : TblSound σ guestCtx table4 := SeqCost.Analyzer.extend_sound table3_sound cc_add_to_bloom
#print axioms cc_add_to_bloom
end InitECandidate.Solver.MemSafe.SeqCost.Callers
