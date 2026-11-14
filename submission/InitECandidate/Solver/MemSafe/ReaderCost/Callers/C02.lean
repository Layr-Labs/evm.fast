import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def body_common_prefix_length := (declPair Guest.Software.guestFn_common_prefix_length).2.2
def b_common_prefix_length : Nat := 34359738378
theorem cost_common_prefix_length : Cost σ guestCtx body_common_prefix_length b_common_prefix_length :=
  ReaderCost.Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_common_prefix_length : CalleeCost σ guestCtx (nm "common_prefix_length") b_common_prefix_length := by
  have hc : ∃ rs, guestCode (nm "common_prefix_length") = some ((declPair Guest.Software.guestFn_common_prefix_length).2.1,body_common_prefix_length,rs) :=
    declPair_valid (List.getElem_mem (n := 251) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost_common_prefix_length
def table2 := ReaderCost.Analyzer.extend table1 (nm "common_prefix_length") b_common_prefix_length
theorem table2_sound : TblSound σ guestCtx table2 := ReaderCost.Analyzer.extend_sound table1_sound cc_common_prefix_length
#print axioms cc_common_prefix_length
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
