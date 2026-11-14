import InitECandidate.Solver.MemSafe.RlpCost.Callers.C03
import InitECandidate.Solver.MemSafe.ReaderCost.Analyzer
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def table0 := RlpCost.Callers.table3
theorem table0_sound : TblSound σ guestCtx table0 := RlpCost.Callers.table3_sound
def body_memeq := (declPair Guest.Software.guestFn_memeq).2.2
def b_memeq : Nat := 137438953508
theorem cost_memeq : Cost σ guestCtx body_memeq b_memeq :=
  ReaderCost.Analyzer.analyze_sound table0_sound (by cbv)
theorem cc_memeq : CalleeCost σ guestCtx (nm "memeq") b_memeq := by
  have hc : ∃ rs, guestCode (nm "memeq") = some ((declPair Guest.Software.guestFn_memeq).2.1,body_memeq,rs) :=
    declPair_valid (List.getElem_mem (n := 18) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost_memeq
def table1 := ReaderCost.Analyzer.extend table0 (nm "memeq") b_memeq
theorem table1_sound : TblSound σ guestCtx table1 := ReaderCost.Analyzer.extend_sound table0_sound cc_memeq
#print axioms cc_memeq
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
