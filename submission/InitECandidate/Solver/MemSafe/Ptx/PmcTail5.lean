import InitECandidate.Solver.MemSafe.Ptx.PmcTail4

/-!
# F3: `process_message_call`, part K: `pmcTail` as a whole
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

section tail5
variable {Γ0 Γ : Gam} {s0 t1 : State σ} {out child : BitVec 64}

theorem fd_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (h32 : j ≠ 32) (W : Wmap)
    (x : BitVec 64) (hx : j ≠ 48 ∨ x = fld t1.memory child 128) :
    Fd t1 child W → Fd t1 child (upW W j x) := by
  rintro ⟨a, b, c, d⟩
  refine ⟨?_, fun h => ?_, fun h => ?_, x48_upW hx W d⟩
  · simp only [upW]; rw [if_neg (Ne.symm h32)]; exact a
  · obtain ⟨b1, b2⟩ := b h
    simp only [upW]
    rw [if_neg (Ne.symm h16), if_neg (Ne.symm h24)]; exact ⟨b1, b2⟩
  · obtain ⟨c1, c2, c3⟩ := c h
    simp only [upW]
    rw [if_neg (Ne.symm h8), if_neg (Ne.symm h16), if_neg (Ne.symm h24)]; exact ⟨c1, c2, c3⟩

theorem fe_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (h32 : j ≠ 32) (h80 : j ≠ 80)
    (W : Wmap) (x : BitVec 64) (hx : j ≠ 48 ∨ x = fld t1.memory child 128) :
    Fe t1 child W → Fe t1 child (upW W j x) := by
  rintro ⟨a, b⟩
  refine ⟨fd_upW h8 h16 h24 h32 W x hx a, ?_⟩
  simp only [upW]
  rw [if_neg (Ne.symm h80)]
  exact b

theorem hoare_tail (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) :
    Hoare σ guestCtx (PT Γ0 s0 Γ t1 out child (Fa t1 child)) pmcTail (TailQ Γ0 s0 Γ t1 out child) := by
  unfold pmcTail
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fa t1 child) (j := 0) (off := 64) (by decide) (by decide)
    (by decide) (by decide) (fun W h => fa_upW (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fb t1 child) (j := 32) (off := 160) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => ⟨fa_upW (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h, by simp [upW]⟩)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fb t1 child) (j := 40) (off := 120) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => fb_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fb t1 child) (j := 48) (off := 128) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => fb_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inr rfl) h)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fb t1 child) (j := 56) (off := 72) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => fb_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fb t1 child) (j := 64) (off := 184) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => fb_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h)) ?_
  refine hoare_fsgu ?_
  refine hoare_seqP (hoare_stU hG0 (Fct' := Fb t1 child) (j := 72) (by decide) (by decide)
    (e := .op .add [lv (nm "fsg"), ldW (nm "frame") 200]) ?_
    (fun W x h => fb_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h)) ?_
  · intro u v hev
    obtain ⟨y, z, -, -, rfl⟩ := ev_op_add_inv hev
    exact ⟨y + z, rfl⟩
  refine hoare_seqP (hoare_iteErr hG0) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Fe t1 child) (j := 80) (off := 208) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => ⟨fd_upW (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h, by simp [upW]⟩)) ?_
  refine hoare_seqP (hoare_stF hG0 (Fct' := Ff t1 child) (j := 88) (off := 224) (by decide)
    (by decide) (by decide) (by decide)
    (fun W h => ⟨fe_upW (by decide) (by decide) (by decide) (by decide) (by decide) W _ (Or.inl (by decide)) h,
      by simp [upW]⟩)) ?_
  refine hoare_return ?_
  intro s _ ⟨W, hT, hF⟩ v hv
  have h1 : ev s (lv (nm "out")) = some (.val (.word out)) := ev_lv_eq hT.2.1
  rw [h1] at hv
  cases hv
  intro v' hv'
  cases hv'
  exact ⟨rfl, W, tb_congr rfl rfl rfl rfl hT.1, hF⟩

end tail5

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hoare_tail
