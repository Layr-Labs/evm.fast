import InitECandidate.Solver.MemSafe.PairCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.PairCost.Callers
variable {σ : Type}
def body_frame_prologue := (declPair Guest.Software.guestFn_frame_prologue).2.2
def b_frame_prologue : Nat := 1745041933047810396715539413066818297376732583426445555909599
theorem cost_frame_prologue : Cost σ guestCtx body_frame_prologue b_frame_prologue := PairCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_frame_prologue : CalleeCost σ guestCtx (nm "frame_prologue") b_frame_prologue := by
  have hc : ∃ rs, guestCode (nm "frame_prologue") = some ((declPair Guest.Software.guestFn_frame_prologue).2.1,body_frame_prologue,rs) :=
    declPair_valid (List.getElem_mem (n := 580) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_frame_prologue
def table4 := PairCost.Core.extend table3 (nm "frame_prologue") b_frame_prologue
theorem table4_sound : TblSound σ guestCtx table4 := PairCost.Core.extend_sound table3_sound cc_frame_prologue
#print axioms cc_frame_prologue
end InitECandidate.Solver.MemSafe.PairCost.Callers
