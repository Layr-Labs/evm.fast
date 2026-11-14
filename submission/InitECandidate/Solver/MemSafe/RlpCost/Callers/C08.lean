import InitECandidate.Solver.MemSafe.RlpCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_sorted_keys32 := (declPair Guest.Software.guestFn_sorted_keys32).2.2
def b_sorted_keys32 : Nat := 9879751071099579605513373543369444380978962302509139
theorem cost_sorted_keys32 : Cost σ guestCtx body_sorted_keys32 b_sorted_keys32 :=
  ArenaCost.Analyzer.analyze_sound table7_sound (by cbv)
theorem cc_sorted_keys32 : CalleeCost σ guestCtx (nm "sorted_keys32") b_sorted_keys32 := by
  have hc : ∃ rs, guestCode (nm "sorted_keys32") =
      some ((declPair Guest.Software.guestFn_sorted_keys32).2.1,body_sorted_keys32,rs) :=
    declPair_valid (List.getElem_mem (n := 431) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_sorted_keys32
def table8 := ArenaCost.Analyzer.extend table7 (nm "sorted_keys32") b_sorted_keys32
theorem table8_sound : TblSound σ guestCtx table8 := ArenaCost.Analyzer.extend_sound table7_sound cc_sorted_keys32
#print axioms cc_sorted_keys32
end InitECandidate.Solver.MemSafe.RlpCost.Callers
