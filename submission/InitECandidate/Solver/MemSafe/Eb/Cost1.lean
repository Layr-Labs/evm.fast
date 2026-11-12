import InitECandidate.Solver.MemSafe.Eb.Final2
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.Band.Rules

/-!
# `execute_block`: the cost walk, part 1 (the judgment `CW` and its rules)

`CW P c B Q`: from a state of `P`, a Good run of `c` costs at most `B` ticks (`Inv.CostP`) and a tracked run ends in `Q` (`Hoare`).
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

/-- Cost and post-state together. -/
def CW (P : State σ → Prop) (c : ProgHOL 64) (B : Nat) (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  Inv.CostP σ guestCtx P c B ∧ Hoare σ guestCtx P c Q

section cw
variable {P P' R : State σ → Prop} {a b c : ProgHOL 64} {B B' Ba Bb : Nat}
  {Q Q' : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_pre (h : CW P c B Q) (hP : ∀ s : State σ, InCtx s guestCtx → P' s → P s) : CW P' c B Q :=
  ⟨h.1.pre hP, hoare_pre h.2 hP⟩

theorem cw_mono (h : CW P c B Q) (hle : B ≤ B') : CW P c B' Q := ⟨h.1.mono hle, h.2⟩

theorem cw_post (h : CW P c B Q) (hQ : ∀ r (t : State σ), InCtx t guestCtx → Q r t → Q' r t) : CW P c B Q' :=
  ⟨h.1, hoare_post h.2 fun _ t hc _ hq => hQ _ t hc hq⟩

theorem cw_seq (ha : CW P a Ba (fun r t => r = none ∧ R t)) (hb : CW R b Bb Q) : CW P (.seq a b) (Ba + Bb) Q :=
  ⟨Inv.costP_seq ha.1 (hoare_post ha.2 fun _ t _ _ h hr => h.2) hb.1, hoare_seqP ha.2 hb.2⟩

theorem cw_hn (hn : HN P c P') (hc : Inv.CostP σ guestCtx P c B) : CW P c B (fun r t => r = none ∧ P' t) := ⟨hc, hn⟩

theorem cw_exists {α : Type} {P : α → State σ → Prop} (h : ∀ x, CW (P x) c B Q) : CW (fun s => ∃ x, P x s) c B Q :=
  ⟨Inv.costP_exists fun x => (h x).1, hoare_exists fun x => (h x).2⟩

/-- A statement of cost zero (no calls). -/
theorem costP_zero (h : Cost σ guestCtx c 0) : Inv.CostP σ guestCtx P c 0 := Inv.costP_of_cost h

end cw

end InitECandidate.Solver.MemSafe.Eb
