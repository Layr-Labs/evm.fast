import InitECandidate.Solver.MemSafe.Eb.Glue3

/-!
# `execute_block`: the whole walk
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem tidy_splus {Z : List MlS} {S' : FS} (h : Tidy Z S') (w1 w2 w3 w4 w t r be0 wd0 : BitVec 64) :
    Tidy (nmBA :: nmBIA :: nmBIS :: nmBK :: Z) (SPlus S' w1 w2 w3 w4 w t r be0 wd0) := by
  have h1 := tidy_balNF h w1 w2 w3 w4
  refine ⟨fun g w' t' hf => ?_, fun g w' hf => ?_⟩
  · rcases hf with hf | hf
    · exact h1.1 g w' t' hf
    · rcases hf with h | h | h | h | h | h <;> cases h
  · rcases hf with hf | hf
    · exact h1.2 g w' hf
    · rcases hf with h | h | h | h | h | h <;> cases h

theorem safeS_splus {S' : FS} (h : SafeS S') (w1 w2 w3 w4 w t r be0 wd0 : BitVec 64) :
    SafeS (SPlus S' w1 w2 w3 w4 w t r be0 wd0) := by
  have h1 := safeS_balNF h w1 w2 w3 w4
  intro f hf
  rcases hf with hf | hf
  · exact h1 f hf
  · rcases hf with rfl | rfl | rfl | rfl | rfl | rfl <;> trivial

theorem safeS_head {S0 S' : FS} {Z : List MlS} {w t r lg rq rl ntx0 : BitVec 64} (hout : HeadOut S0 S' Z w t r lg rq rl ntx0)
    (h0 : SafeS S0) : SafeS S' := by
  refine hout.led.safe SafeFact h0 ?_ ?_ (fun _ => trivial) (fun _ _ => trivial)
  · intro b ty n hty
    rcases hty with rfl | rfl | rfl <;> (show KeepTy _; unfold KeepTy ScratchOwn; decide)
  · show KeepTy tBO
    unfold KeepTy ScratchOwn; decide

theorem zok_all {Z : List MlS} (h : ZOK Z) (hbo : nmBo ∉ Z) : ZOK (nmBA :: nmBIA :: nmBIS :: nmBK :: nmBo :: Z) := by
  intro g hg
  simp only [List.mem_cons] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | hg
  all_goals first | exact h g hg | (refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> decide)

end InitECandidate.Solver.MemSafe.Eb
