import InitECandidate.Solver.MemSafe.InitCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_key_to_nibbles := (declPair Guest.Software.guestFn_key_to_nibbles).2.2
def b_key_to_nibbles : Nat := 68719476754
theorem cost_key_to_nibbles : Cost σ guestCtx body_key_to_nibbles b_key_to_nibbles :=
  InitCost.Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_key_to_nibbles : CalleeCost σ guestCtx (nm "key_to_nibbles") b_key_to_nibbles := by
  have hc : ∃ rs, guestCode (nm "key_to_nibbles") = some ((declPair Guest.Software.guestFn_key_to_nibbles).2.1,body_key_to_nibbles,rs) :=
    declPair_valid (List.getElem_mem (n := 248) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_key_to_nibbles
def table2 := InitCost.Analyzer.extend table1 (nm "key_to_nibbles") b_key_to_nibbles
theorem table2_sound : TblSound σ guestCtx table2 := InitCost.Analyzer.extend_sound table1_sound cc_key_to_nibbles
#print axioms cc_key_to_nibbles
end InitECandidate.Solver.MemSafe.InitCost.Callers
