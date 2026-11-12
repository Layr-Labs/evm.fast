import InitECandidate.Solver.MemSafe.Eb.Cost8

/-!
# `execute_block`: the cost walk, part 9 (`tail_end`: ebS57 to `return 0`)
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

/-- The cost of `ebS57`, in the shape the walk produces. -/
def bTE : Nat :=
  1 + cMax + (0 + (1 + cMemeq + (0 + ((1 + cMemeq + 0) + (0 + ((1 + cMemeq + 0) + (0 + ((1 + cMemeq + 0) +
    (0 + ((1 + cMemeq + 0) + (0 + (0 + ((1 + cMemeq + 0) + (0 + ((1 + cMemeq + 0) + (0 + 0))))))))))))))))

section cw9
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem cw_tail_end (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) :
    CW (PA E En S) ebS57 bTE (RetQ E) := by
  have hQ := fun n => locIns_resIns (retQ_locIns E) n
  unfold ebS57
  refine cw_tab1 (hQ _) tab_max (by decide) (by decide) (by simp) (by simp) hT hz cc_cMax ?_
  intro w0
  unfold ebS58
  refine cw_guard_then ?_
  unfold ebS60
  refine cw_tab1 (hQ _) tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq ?_
  intro w1
  unfold ebS61
  refine cw_guard_then ?_
  unfold ebS63
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w2
  unfold ebS64
  refine cw_guard_then ?_
  unfold ebS66
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w3
  unfold ebS67
  refine cw_guard_then ?_
  unfold ebS69
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w4
  unfold ebS70
  refine cw_guard_then ?_
  unfold ebS72
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w5
  unfold ebS73
  refine cw_guard_then ?_
  unfold ebS75
  refine cw_guard_then ?_
  unfold ebS77
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w6
  unfold ebS78
  refine cw_guard_then ?_
  unfold ebS80
  refine cw_tab1A_then tab_memeq (by decide) (by decide) (by simp) (by simp) hT hz cc_cMemeq (env_set_self _ _ _) ?_
  intro w7
  unfold ebS81
  refine cw_guard_then ?_
  exact ⟨costP_zero (cost_return _), hn_ret0⟩

end cw9

end InitECandidate.Solver.MemSafe.Eb
