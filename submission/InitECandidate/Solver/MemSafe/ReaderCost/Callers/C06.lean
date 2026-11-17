import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def body__split_extension := (declPair Guest.Software.guestFn__split_extension).2.2
def b__split_extension : Nat := 137438953522
theorem cost__split_extension : Cost σ guestCtx body__split_extension b__split_extension :=
  ReaderCost.Analyzer.analyze_sound table5_sound (by cbv)
theorem cc__split_extension : CalleeCost σ guestCtx (nm "_split_extension") b__split_extension := by
  have hc : ∃ rs, guestCode (nm "_split_extension") = some ((declPair Guest.Software.guestFn__split_extension).2.1,body__split_extension,rs) :=
    declPair_valid (List.getElem_mem (n := 274) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost__split_extension
def table6 := ReaderCost.Analyzer.extend table5 (nm "_split_extension") b__split_extension
theorem table6_sound : TblSound σ guestCtx table6 := ReaderCost.Analyzer.extend_sound table5_sound cc__split_extension
#print axioms cc__split_extension
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
