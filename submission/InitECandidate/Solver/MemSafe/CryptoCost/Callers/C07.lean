import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 5724992975149009871899676462546192541117034369503253134899752677
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue :=
  Analyzer.analyze_sound table6_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
  have hc : ∃ rs, guestCode (nm "frame_prologue") =
      some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,rs) :=
    declPair_valid (List.getElem_mem (n := 580) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_frame_prologue
def table7 := Analyzer.extend table6 (nm "frame_prologue") b_frame_prologue
theorem table7_sound : TblSound σ guestCtx table7 := Analyzer.extend_sound table6_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
