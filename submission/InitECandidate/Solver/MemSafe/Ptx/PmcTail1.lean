import InitECandidate.Solver.MemSafe.Ptx.PmcTB3

/-!
# F3: `process_message_call`, part G: the tail's statements (stores, the error test, the end)
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

variable {σ : Type}

/-- The tail invariant with the written-offset facts `Fct`. -/
def PT (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (t1 : State σ) (out child : BitVec 64)
    (Fct : Wmap → Prop) (u : State σ) : Prop :=
  ∃ W, TP Γ0 s0 Γ t1 out child W u ∧ Fct W

section tail1
variable {Γ0 Γ : Gam} {s0 t1 : State σ} {out child : BitVec 64}

/-- `st out + j, lds 1 (frame + off)`: records the frame's word. -/
theorem hoare_stF (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct Fct' : Wmap → Prop}
    {j off : Nat} (hj8 : j % 8 = 0) (hj : j < 96) (hoff8 : off % 8 = 0) (hoff : off < 232)
    (hF : ∀ W, Fct W → Fct' (upW W j (fld t1.memory child off))) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct)
      (.store (.op .add [lv (nm "out"), cw j]) (ldW (nm "frame") off))
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child Fct' u) := by
  refine hoare_stT hG0 hj8 hj ?_
  intro u W v hT hFW hev
  have := ev_lLoad_eq (x := "frame") (k := off) hT.2.2 hev
  refine ⟨fld u.memory child off, this, ?_⟩
  rw [tb_fld hT.1 hoff8 hoff]; exact hF W hFW

/-- `st out + j, e` for a word-valued `e` whose value is not tracked. -/
theorem hoare_stU (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct Fct' : Wmap → Prop}
    {j : Nat} (hj8 : j % 8 = 0) (hj : j < 96) {e : ExpHOL 64}
    (hw : ∀ (u : State σ) v, ev u e = some v → ∃ x, v = .val (.word x))
    (hF : ∀ W x, Fct W → Fct' (upW W j x)) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct)
      (.store (.op .add [lv (nm "out"), cw j]) e)
      (fun r u => r = none ∧ PT Γ0 s0 Γ t1 out child Fct' u) := by
  refine hoare_stT hG0 hj8 hj ?_
  intro u W v _ hFW hev
  obtain ⟨x, rfl⟩ := hw u v hev
  exact ⟨x, rfl, hF W x hFW⟩

theorem word_ldW (u : State σ) (x : MlS) (k : Nat) (v : ValueHOL 64)
    (h : ev u (ldW x k) = some v) : ∃ w, v = .val (.word w) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one h
  exact ⟨_, by rw [mem_rd u.memory w]⟩

/-- The error test of the tail. -/
theorem cond160 {u : State σ} {w : BitVec 64} (hl : LocOK out child u)
    (h : ev u (.cmp .equal (ldW (nm "frame") 160) (cw 0)) = some (.val (.word w))) :
    w = if fld u.memory child 160 = 0 then 1 else 0 := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  have hx' := ev_lLoad_eq (x := "frame") (k := 160) hl.2 hx
  rw [ev_cw] at hy
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx' hy hv
  subst hx' hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hv
  rw [hv]
  simp

theorem hoare_ite160 {Fct : Wmap → Prop} {A B : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hA : Hoare σ guestCtx (fun u => PT Γ0 s0 Γ t1 out child Fct u ∧ fld t1.memory child 160 = 0) A Q)
    (hB : Hoare σ guestCtx (fun u => PT Γ0 s0 Γ t1 out child Fct u ∧ fld t1.memory child 160 ≠ 0) B Q) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct)
      (.ite (.cmp .equal (ldW (nm "frame") 160) (cw 0)) A B) Q := by
  refine hoare_ite (hoare_pre hA ?_) (hoare_pre hB ?_)
  · intro s _ ⟨hP, w, hw, hne⟩
    obtain ⟨W, hT, hF⟩ := hP
    have := cond160 hT.2 hw
    rw [tb_fld hT.1 (by decide) (by decide)] at this
    refine ⟨⟨W, hT, hF⟩, ?_⟩
    by_contra hc
    rw [if_neg hc] at this
    exact hne this
  · intro s _ ⟨hP, hw⟩
    obtain ⟨W, hT, hF⟩ := hP
    have := cond160 hT.2 (w := 0) hw
    rw [tb_fld hT.1 (by decide) (by decide)] at this
    refine ⟨⟨W, hT, hF⟩, ?_⟩
    intro hc
    rw [if_pos hc] at this
    exact absurd this (by decide)

end tail1

end InitECandidate.Solver.MemSafe.Ptx
