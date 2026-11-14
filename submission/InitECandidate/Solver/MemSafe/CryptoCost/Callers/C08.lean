import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_frame_start := (declPair Guest.Software.guestFn_frame_start).2.2
def b_frame_start : Nat := 5724992975149009871899676462546192541117034369503253134899752681
theorem cost_frame_start : Cost σ guestCtx body_frame_start b_frame_start :=
  Analyzer.analyze_sound table7_sound (by cbv)
theorem cc_frame_start : CalleeCost σ guestCtx (nm "frame_start") b_frame_start := by
  have hc : ∃ rs, guestCode (nm "frame_start") =
      some ((declPair Guest.Software.guestFn_frame_start).2.1,body_frame_start,rs) :=
    declPair_valid (List.getElem_mem (n := 581) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_frame_start
def table8 := Analyzer.extend table7 (nm "frame_start") b_frame_start
theorem table8_sound : TblSound σ guestCtx table8 := Analyzer.extend_sound table7_sound cc_frame_start
#print axioms cc_frame_start
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
