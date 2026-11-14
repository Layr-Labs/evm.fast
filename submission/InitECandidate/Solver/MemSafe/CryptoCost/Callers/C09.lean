import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_start_child := (declPair Guest.Software.guestFn_start_child).2.2
def b_start_child : Nat := 5725005529352480645262382191679890955831726340732205014325514250
theorem cost_start_child : Cost σ guestCtx body_start_child b_start_child :=
  Analyzer.analyze_sound table8_sound (by cbv)
theorem cc_start_child : CalleeCost σ guestCtx (nm "start_child") b_start_child := by
  have hc : ∃ rs, guestCode (nm "start_child") =
      some ((declPair Guest.Software.guestFn_start_child).2.1,body_start_child,rs) :=
    declPair_valid (List.getElem_mem (n := 585) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_start_child
def table9 := Analyzer.extend table8 (nm "start_child") b_start_child
theorem table9_sound : TblSound σ guestCtx table9 := Analyzer.extend_sound table8_sound cc_start_child
#print axioms cc_start_child
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
