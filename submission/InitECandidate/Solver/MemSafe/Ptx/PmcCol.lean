import InitECandidate.Solver.MemSafe.Ptx.PmcTail5

/-!
# F3: `process_message_call`, part L: the collision path (`pmcStoresDep`)

`CB Γ0 s0 Γ u0 out W u`: as `TB` but without a child frame: `u` is `u0` with the cells of `out` recorded in `W` changed.
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

def CB (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (u0 : State σ) (out : BitVec 64) (W : Wmap)
    (u : State σ) : Prop :=
  G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ KB Γ0 Γ s0 u ∧ OutIn Γ out ∧ OutFresh Γ0 out ∧
  u.globals = u0.globals ∧
  (∀ j, W j ≠ none → j % 8 = 0 ∧ j < 96) ∧
  (∀ a, (∀ j, W j ≠ none → a ≠ out + BitVec.ofNat 64 j) → u.memory a = u0.memory a) ∧
  (∀ j x, W j = some x → rd u.memory (out + BitVec.ofNat 64 j) = x)

def CP (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (u0 : State σ) (out : BitVec 64) (W : Wmap)
    (u : State σ) : Prop :=
  CB Γ0 s0 Γ u0 out W u ∧ u.locals.lookup (nm "out") = some (.val (.word out))

section col
variable {Γ0 Γ : Gam} {s0 u0 u : State σ} {out : BitVec 64} {W : Wmap}

theorem cb_store (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {j : Nat} (hj8 : j % 8 = 0)
    (hj : j < 96) (x : BitVec 64) (hT : CB Γ0 s0 Γ u0 out W u) :
    CB Γ0 s0 Γ u0 out (upW W j x) { u with memory := Frames.upd u.memory (out + BitVec.ofNat 64 j) x } := by
  obtain ⟨hG, hKB, ⟨O, hO, hOb, hOt, hOs⟩, hFr, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨p, hp, hord, hL, -⟩ := id hG
  have hcell : O.cell (j / 8) = out + BitVec.ofNat 64 j := by
    unfold Obj.cell; rw [hOb]; congr 2; omega
  have hslot : O.HasSlot (j / 8) := by unfold Obj.HasSlot; omega
  have hGn : G guestC (Hooks.guestHooksR (σ := σ)) Γ
      { u with memory := Frames.upd u.memory (out + BitVec.ofNat 64 j) x } := by
    have := D0.G_st_block hG hO (by rw [hOt]; decide) hslot
      (blk_prot (t := O.ty) (Or.inr (Or.inr hOt)) (j / 8)) x
    rwa [hcell] at this
  have hnb : ¬ KCell guestC Γ0 (out + BitVec.ofNat 64 j) := by
    have := out_not_bcell hG0 hord hL hO hOs (by rw [hOb]; exact hFr) hj
    rwa [hOb] at this
  have hne : ∀ j', j' < 96 → j' ≠ j → out + BitVec.ofNat 64 j' ≠ out + BitVec.ofNat 64 j := by
    intro j' hj' hne
    have := cell_ne hord hL hO hO (k := j') (k' := j) (by omega) (by omega) (Or.inr hne)
    rwa [hOb] at this
  obtain ⟨hk1, hk2, p0, hp0, ho0⟩ := hKB
  refine ⟨hGn, ⟨keepH_congr rfl rfl hk1, bkeep_of_upd hk2 hnb, p0, hp0, ho0⟩, ⟨O, hO, hOb, hOt, hOs⟩, hFr,
    hgl, ?_, ?_, ?_⟩
  · intro j' hj'
    unfold upW at hj'
    by_cases h : j' = j
    · subst h; exact ⟨hj8, hj⟩
    · rw [if_neg h] at hj'; exact hdom j' hj'
  · intro a ha
    show Frames.upd u.memory (out + BitVec.ofNat 64 j) x a = u0.memory a
    have haj : a ≠ out + BitVec.ofNat 64 j := ha j (by unfold upW; simp)
    rw [Frames.upd_ne _ _ haj]
    refine hag a fun j' hj' => ha j' ?_
    unfold upW
    by_cases h : j' = j
    · rw [if_pos h]; simp
    · rw [if_neg h]; exact hj'
  · intro j' y hy
    unfold upW at hy
    by_cases h : j' = j
    · rw [if_pos h] at hy
      cases hy
      subst h
      exact rd_upd_self _ _ _
    · rw [if_neg h] at hy
      show rd (Frames.upd u.memory (out + BitVec.ofNat 64 j) x) (out + BitVec.ofNat 64 j') = y
      rw [rd_upd_ne _ _ (hne j' (hdom j' (by rw [hy]; simp)).2 h)]
      exact hwr j' y hy

theorem hoare_stC (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct Fct' : Wmap → Prop}
    {j : Nat} (hj8 : j % 8 = 0) (hj : j < 96) {e : ExpHOL 64}
    (hv : ∀ (u : State σ) (W : Wmap) v, CP Γ0 s0 Γ u0 out W u → Fct W → ev u e = some v →
      ∃ x, v = .val (.word x) ∧ Fct' (upW W j x)) :
    Hoare σ guestCtx (fun u => ∃ W, CP Γ0 s0 Γ u0 out W u ∧ Fct W)
      (.store (.op .add [lv (nm "out"), cw j]) e)
      (fun r u => r = none ∧ ∃ W, CP Γ0 s0 Γ u0 out W u ∧ Fct' W) := by
  refine hoare_stOut (o := out) (k := j) (fun s _ ⟨W, hT, _⟩ => hT.2) ?_
  intro s hs ⟨W, hT, hF⟩ v hev
  obtain ⟨x, rfl, hF'⟩ := hv s W v hT hF hev
  exact ⟨x, rfl, fun _ => ⟨rfl, upW W j x, ⟨cb_store hG0 hj8 hj x hT.1, hT.2⟩, hF'⟩⟩

def Ca (W : Wmap) : Prop := W 8 = none ∧ W 16 = none ∧ W 24 = none ∧ W 80 = none ∧ W 88 = none ∧ W 48 = none
def Cb (W : Wmap) : Prop := Ca W ∧ W 32 = some 12

theorem ca_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (h80 : j ≠ 80) (h88 : j ≠ 88) (h48 : j ≠ 48)
    (W : Wmap) (x : BitVec 64) : Ca W → Ca (upW W j x) := by
  rintro ⟨a, b, c, d, e, f⟩
  simp only [Ca, upW]
  rw [if_neg (Ne.symm h8), if_neg (Ne.symm h16), if_neg (Ne.symm h24), if_neg (Ne.symm h80),
    if_neg (Ne.symm h88), if_neg (Ne.symm h48)]
  exact ⟨a, b, c, d, e, f⟩

theorem cb_upW {j : Nat} (h8 : j ≠ 8) (h16 : j ≠ 16) (h24 : j ≠ 24) (h80 : j ≠ 80) (h88 : j ≠ 88) (h48 : j ≠ 48)
    (h32 : j ≠ 32) (W : Wmap) (x : BitVec 64) : Cb W → Cb (upW W j x) := by
  rintro ⟨a, b⟩
  refine ⟨ca_upW h8 h16 h24 h80 h88 h48 W x a, ?_⟩
  simp only [upW]
  rw [if_neg (Ne.symm h32)]
  exact b

/-- The collision stores. -/
theorem hoare_stDep (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0)
    (hglob : ∀ u : State σ, G guestC (Hooks.guestHooksR (σ := σ)) Γ u → ∃ w, ev u (gv (nm "evm_empty")) = some (.val (.word w))) :
    Hoare σ guestCtx (fun u => ∃ W, CP Γ0 s0 Γ u0 out W u ∧ Ca W) pmcStoresDep
      (fun r u => ∀ v, r = some (.returned v) → v = .val (.word out) ∧
        ∃ W, CB Γ0 s0 Γ u0 out W u ∧ Cb W) := by
  unfold pmcStoresDep
  refine hoare_seqP (hoare_stC hG0 (Fct' := Cb) (j := 32) (by decide) (by decide) ?_) ?_
  · intro u W v hT hF hev
    rw [ev_cw] at hev; cases hev
    exact ⟨_, rfl, ca_upW (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) W _ hF, by simp [upW]⟩
  refine hoare_seqP (hoare_stC hG0 (Fct' := Cb) (j := 56) (by decide) (by decide) ?_) ?_
  · intro u W v hT hF hev
    obtain ⟨w, rfl⟩ := word_ldW u _ _ v hev
    exact ⟨w, rfl, cb_upW (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) W _ hF⟩
  refine hoare_seqP (hoare_stC hG0 (Fct' := Cb) (j := 64) (by decide) (by decide) ?_) ?_
  · intro u W v hT hF hev
    obtain ⟨w, rfl⟩ := word_ldW u _ _ v hev
    exact ⟨w, rfl, cb_upW (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) W _ hF⟩
  refine hoare_seqP (hoare_stC hG0 (Fct' := Cb) (j := 40) (by decide) (by decide) ?_) ?_
  · intro u W v hT hF hev
    obtain ⟨w, hw⟩ := hglob u hT.1.1
    rw [hw] at hev; cases hev
    exact ⟨w, rfl, cb_upW (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) W _ hF⟩
  refine hoare_return ?_
  intro s _ ⟨W, hT, hF⟩ v hv
  have h1 : ev s (lv (nm "out")) = some (.val (.word out)) := hT.2
  rw [h1] at hv
  cases hv
  intro v' hv'
  cases hv'
  exact ⟨rfl, W, hT.1, hF⟩

end col

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hoare_stDep
