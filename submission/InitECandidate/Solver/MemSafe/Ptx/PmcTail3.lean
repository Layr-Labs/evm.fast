import InitECandidate.Solver.MemSafe.Ptx.PmcTail2
import InitECandidate.Solver.MemSafe.Entry2.Code

/-!
# F3: `process_message_call`, part I: the whole tail `pmcTail`

From `PT Fa` (no cell of `out` written yet) the tail returns `out` with the facts `Ff`: the error word,
the marks and (on success) the logs / deletion words are those of the child frame in `t1`; on an error
the cells 8 / 16 / 24 are untouched.
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

section tail3
variable (t1 : State σ) (child : BitVec 64)

/-- Eon: `out[48]` is untouched or holds the frame's `EV_OUTPUT_N`. -/
def X48 (W : Wmap) : Prop := W 48 = none ∨ W 48 = some (fld t1.memory child 128)

def Fa (W : Wmap) : Prop := W 8 = none ∧ W 16 = none ∧ W 24 = none ∧ X48 t1 child W
def Fb (W : Wmap) : Prop := Fa t1 child W ∧ W 32 = some (fld t1.memory child 160)
def Fd (W : Wmap) : Prop :=
  W 32 = some (fld t1.memory child 160) ∧
  (fld t1.memory child 160 = 0 → W 16 = some (fld t1.memory child 88) ∧
    W 24 = some (fld t1.memory child 136)) ∧
  (fld t1.memory child 160 ≠ 0 → W 8 = none ∧ W 16 = none ∧ W 24 = none) ∧ X48 t1 child W
def Fe (W : Wmap) : Prop := Fd t1 child W ∧ W 80 = some (fld t1.memory child 208)
def Ff (W : Wmap) : Prop := Fe t1 child W ∧ W 88 = some (fld t1.memory child 224)

variable {t1 child}

theorem x48_upW {j : Nat} {x : BitVec 64} (h : j ≠ 48 ∨ x = fld t1.memory child 128) (W : Wmap) :
    X48 t1 child W → X48 t1 child (upW W j x) := by
  intro hx
  unfold X48 at hx ⊢
  unfold upW
  by_cases hj : (48 : Nat) = j
  · rw [if_pos hj]
    right
    rcases h with h | h
    · exact absurd hj.symm h
    · rw [h]
  · rw [if_neg hj]; exact hx

theorem fa_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (W : Wmap) (x : BitVec 64)
    (hx : j ≠ 48 ∨ x = fld t1.memory child 128) :
    Fa t1 child W → Fa t1 child (upW W j x) := by
  rintro ⟨a, b, c, d⟩
  refine ⟨?_, ?_, ?_, x48_upW hx W d⟩
  · simp only [upW]; rw [if_neg (Ne.symm h8)]; exact a
  · simp only [upW]; rw [if_neg (Ne.symm h16)]; exact b
  · simp only [upW]; rw [if_neg (Ne.symm h24)]; exact c

theorem fb_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (h32 : j ≠ 32) (W : Wmap)
    (x : BitVec 64) (hx : j ≠ 48 ∨ x = fld t1.memory child 128) :
    Fb t1 child W → Fb t1 child (upW W j x) := by
  rintro ⟨a, b⟩
  refine ⟨fa_upW h8 h16 h24 W x hx a, ?_⟩
  simp only [upW]
  rw [if_neg (Ne.symm h32)]
  exact b

end tail3

section tail3b
variable {Γ0 Γ : Gam} {s0 t1 : State σ} {out child : BitVec 64}

def TailQ (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (t1 : State σ) (out child : BitVec 64)
    (r : Option (PanSemResultExact 64)) (u : State σ) : Prop :=
  ∀ v, r = some (.returned v) → v = .val (.word out) ∧ ∃ W, TB Γ0 s0 Γ t1 out child W u ∧ Ff t1 child W

theorem tailQ_loc {r : Option (PanSemResultExact 64)} {u : State σ} (l : Locs)
    (h : TailQ Γ0 s0 Γ t1 out child r u) : TailQ Γ0 s0 Γ t1 out child r { u with locals := l } :=
  fun v hv => let ⟨a, W, hT, hF⟩ := h v hv; ⟨a, W, tb_congr rfl rfl rfl rfl hT, hF⟩

/-- `var fsg = frame_state_gas_used(frame); k`. -/
theorem hoare_fsgu {Fct : Wmap → Prop} {k : ProgHOL 64}
    (hk : Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct) k (TailQ Γ0 s0 Γ t1 out child)) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child Fct)
      (.decCall (nm "fsg") .one (nm "frame_state_gas_used") [lv (nm "frame")] k)
      (TailQ Γ0 s0 Γ t1 out child) := by
  refine hoare_decCallS fsgu_spec fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain ⟨hmem, hgl, hbe⟩ := hR (by simp [Good])
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    obtain ⟨W, hT, hF⟩ := hP
    refine pt_set (by decide) (by decide) v ⟨W, ⟨tb_congr (u := s) hmem hgl ?_ hbe hT.1, hT.2⟩, hF⟩
    exact hst.2.1.trans hs.2.1.symm
  · exact tailQ_loc _ hq

end tail3b

end InitECandidate.Solver.MemSafe.Ptx
