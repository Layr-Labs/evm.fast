import InitECandidate.Solver.MemSafe.Ptx.PmcTail3

/-!
# F3: `process_message_call`, part J: `pmcTail` as a whole
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

section tail4
variable {Γ0 Γ : Gam} {s0 t1 : State σ} {out child : BitVec 64}

/-- The `then` branch of the error test (`error = 0`). -/
theorem hoare_then (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child (Fb t1 child))
      (.seq (.store (.op .add [lv (nm "out"), cw 16]) (ldW (nm "frame") 88))
        (.seq (.store (.op .add [lv (nm "out"), cw 24]) (ldW (nm "frame") 136))
          (.dec (nm "rc") .one (ldW (nm "frame") 96)
            (.seq (.ite (.cmp .less (lv (nm "rc")) (cw 0)) (.assign VarKind.local (nm "rc") (cw 0)) .skip)
              (.store (.op .add [lv (nm "out"), cw 8]) (lv (nm "rc")))))))
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child
        (fun W => (W 32 = some (fld t1.memory child 160) ∧ W 16 = some (fld t1.memory child 88) ∧
          W 24 = some (fld t1.memory child 136)) ∧ X48 t1 child W) u) := by
  refine hoare_seqP (hoare_stF hG0 (Fct' := fun W => (W 32 = some (fld t1.memory child 160) ∧
      W 16 = some (fld t1.memory child 88)) ∧ X48 t1 child W) (by decide) (by decide) (by decide)
      (by decide) ?_) ?_
  · rintro W ⟨⟨-, -, -, hx⟩, h⟩
    exact ⟨⟨by simp only [upW]; rw [if_neg (by decide)]; exact h, by simp [upW]⟩,
      x48_upW (Or.inl (by decide)) W hx⟩
  refine hoare_seqP (hoare_stF hG0 (Fct' := fun W => (W 32 = some (fld t1.memory child 160) ∧
      W 16 = some (fld t1.memory child 88) ∧ W 24 = some (fld t1.memory child 136)) ∧
      X48 t1 child W)
      (by decide) (by decide) (by decide) (by decide) ?_) ?_
  · rintro W ⟨⟨h1, h2⟩, hx⟩
    exact ⟨⟨by simp only [upW]; rw [if_neg (by decide)]; exact h1,
      by simp only [upW]; rw [if_neg (by decide)]; exact h2, by simp [upW]⟩,
      x48_upW (Or.inl (by decide)) W hx⟩
  · refine hoare_rc hG0 ?_
    rintro W x ⟨⟨h1, h2, h3⟩, hx⟩
    exact ⟨⟨by simp only [upW]; rw [if_neg (by decide)]; exact h1,
      by simp only [upW]; rw [if_neg (by decide)]; exact h2,
      by simp only [upW]; rw [if_neg (by decide)]; exact h3⟩, x48_upW (Or.inl (by decide)) W hx⟩

theorem hoare_iteErr (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child (Fb t1 child))
      (.ite (.cmp .equal (ldW (nm "frame") 160) (cw 0))
        (.seq (.store (.op .add [lv (nm "out"), cw 16]) (ldW (nm "frame") 88))
          (.seq (.store (.op .add [lv (nm "out"), cw 24]) (ldW (nm "frame") 136))
            (.dec (nm "rc") .one (ldW (nm "frame") 96)
              (.seq (.ite (.cmp .less (lv (nm "rc")) (cw 0)) (.assign VarKind.local (nm "rc") (cw 0)) .skip)
                (.store (.op .add [lv (nm "out"), cw 8]) (lv (nm "rc")))))))
        .skip)
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child (Fd t1 child) u) := by
  refine hoare_ite160 ?_ ?_
  · intro s hs ⟨hP, h160⟩ ht
    have := hoare_then (Γ := Γ) (t1 := t1) (out := out) (child := child) hG0 s hs hP ht
    refine ⟨this.1, ?_⟩
    obtain ⟨W, hT, ⟨h1, h2, h3⟩, hx⟩ := this.2
    exact ⟨W, hT, h1, fun _ => ⟨h2, h3⟩, fun hne => absurd h160 hne, hx⟩
  · refine hoare_skip fun s _ ⟨⟨W, hT, ha, hc⟩, hne⟩ => ⟨rfl, W, hT, hc, fun h => absurd h hne,
      fun _ => ⟨ha.1, ha.2.1, ha.2.2.1⟩, ha.2.2.2⟩

end tail4

end InitECandidate.Solver.MemSafe.Ptx
