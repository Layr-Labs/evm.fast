import InitECandidate.Solver.MemSafe.PairCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.PairCost.Callers
variable {σ : Type}
def body_frame_start := (declPair Guest.Software.guestFn_frame_start).2.2
def b_frame_start : Nat := 1745041933047810396715539413066818297376732583426445555909603
theorem cost_frame_start : Cost σ guestCtx body_frame_start b_frame_start := PairCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_frame_start : CalleeCost σ guestCtx (nm "frame_start") b_frame_start := by
  have hc : ∃ rs, guestCode (nm "frame_start") = some ((declPair Guest.Software.guestFn_frame_start).2.1,body_frame_start,rs) :=
    declPair_valid (List.getElem_mem (n := 581) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_frame_start
def table5 := PairCost.Core.extend table4 (nm "frame_start") b_frame_start
theorem table5_sound : TblSound σ guestCtx table5 := PairCost.Core.extend_sound table4_sound cc_frame_start
#print axioms cc_frame_start
end InitECandidate.Solver.MemSafe.PairCost.Callers
