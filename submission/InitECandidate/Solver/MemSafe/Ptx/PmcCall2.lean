import InitECandidate.Solver.MemSafe.Ptx.PmcCall

/-!
# F3: `process_message_call`, part Q: the call step as a Hoare triple, the tail, the collision return
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

/-- The facts after the call, for some typing and child. -/
def PC (Γ0 : Gam) (s0 : State σ) (out : BitVec 64) (T : State σ) : Prop :=
  ∃ Γ' child, PC' Γ0 s0 Γ' out child T

/-- The post of the body on a return. -/
def PmcQ (Γ0 : Gam) (s0 : State σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ out', v = .val (.word out') ∧ PmcFin Γ0 s0 out' t

section call2
variable {M : Nat} {msg out : BitVec 64} {Γ0 : Gam} {s0 : State σ}

/-- `frame = f(msg)` for `f` with the post of `process_message`. -/
theorem hoare_callPm {f : MlS} (hf : FunSpec σ guestCtx f (PmRL (σ := σ) M)) :
    Hoare σ guestCtx (FE M msg Γ0 s0 out)
      (.call (some (some (VarKind.local, nm "frame"), none)) f [lv (nm "msg")])
      (fun r t => r = none ∧ PC Γ0 s0 out t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callA hf ?_
  intro s hs hP vs hvs callee v st hR hst _
  obtain ⟨Γ, p, hG, hp, hfo, hKB, -, hO, hFr, hZ, hlm, hlo⟩ := hP
  rw [evs_cons (ev_lv_eq hlm) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  obtain ⟨child, rfl, hfin⟩ := hR Γ hGe ⟨msg, rfl, hfo⟩ v rfl
  exact ⟨rfl, pc_of_fin hG hKB hO hFr hZ hlo hfin |>.imp fun Γ' h => ⟨child, h⟩⟩

theorem pmcFin_congr {Γe : Gam} {se : State σ} {t t' : State σ} (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (h : PmcFin Γe se out t) : PmcFin Γe se out t' := by
  obtain ⟨Γ', hG, hk, hb, hO, ⟨e, he, he'⟩, ⟨c, hc, hc'⟩, hcases, h48, hfr⟩ := h
  refine ⟨Γ', G_congr Hooks.guestHooksR_lawful hm hg hd hbe hG, keepH_congr rfl hg hk,
    bkeep_congr rfl hm hb, hO, ⟨e, by rw [gword_congr hg]; exact he, he'⟩,
    ⟨c, by rw [gword_congr hg]; exact hc, hc'⟩, ?_, by rw [hm]; exact h48, hfr⟩
  rcases hcases with hc | hc
  · left; rw [hm]; exact hc
  · right
    unfold OutChild at hc ⊢
    rw [hm, ptrsOf_congr hg]; exact hc

theorem cb_unt {Γ : Gam} {u0 u : State σ} {W : Wmap} (hT : CB Γ0 s0 Γ u0 out W u) {j : Nat}
    (hW : W j = none) (hj8 : j % 8 = 0) (hj : j < 96) :
    rd u.memory (out + BitVec.ofNat 64 j) = rd u0.memory (out + BitVec.ofNat 64 j) := by
  obtain ⟨hG, hKB, ⟨O, hO, hOb, hOt, hOs⟩, hFr, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨p, hp, hord, hL, -⟩ := hG
  unfold rd
  rw [hag (out + BitVec.ofNat 64 j)]
  intro j' hj'
  obtain ⟨h8', hj96'⟩ := hdom j' hj'
  have hne : j' ≠ j := fun h => hj' (h ▸ hW)
  have := cell_ne hord hL hO hO (k := j) (k' := j') (by omega) (by omega) (Or.inr (Ne.symm hne))
  rwa [hOb] at this

theorem pmcFin_of_col {Γ : Gam} {u0 u : State σ} {W : Wmap} (hT : CB Γ0 s0 Γ u0 out W u)
    (hCb : Cb W) (hZ : Zeros u0.memory out)
    (hev : ∃ e, gword u0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword u0 nmCC = some c ∧ c.toNat < nullMax) : PmcFin Γ0 s0 out u := by
  have hT' := hT
  obtain ⟨hG, hKB, hO, hFr, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨⟨a8, a16, a24, a80, a88, a48⟩, a32⟩ := hCb
  have h48 : (rd u.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 := by
    rw [cb_unt hT' a48 (by decide) (by decide), zeros_rd hZ (by decide) (by decide)]
    simp
  refine ⟨Γ, hG, hKB.1, hKB.2.1, hO, ?_, ?_, Or.inl ?_, h48, hFr⟩
  · obtain ⟨e, he, he'⟩ := hev
    exact ⟨e, by rw [gword_congr hgl]; exact he, he'⟩
  · obtain ⟨c, hc, hc'⟩ := hcc
    exact ⟨c, by rw [gword_congr hgl]; exact hc, hc'⟩
  · refine ⟨(cb_unt hT' a80 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)),
      (cb_unt hT' a88 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)), ?_,
      (cb_unt hT' a8 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)),
      (cb_unt hT' a16 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide)),
      (cb_unt hT' a24 (by decide) (by decide)).trans (zeros_rd hZ (by decide) (by decide))⟩
    rw [hwr 32 12 a32]
    decide

/-- After the call: the tail returns `out` with `PmcFin`. -/
theorem hoare_afterCall (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) :
    Hoare σ guestCtx (PC Γ0 s0 out) pmcTail (PmcQ Γ0 s0) := by
  intro s hs ⟨Γ', child, hPC⟩ ht
  have h := hoare_tail (Γ := Γ') (t1 := s) (out := out) (child := child) hG0 s hs
    ⟨fun _ => none, hPC.1, rfl, rfl, rfl, Or.inl rfl⟩ ht
  intro v hv
  obtain ⟨hv', W, hTW, hF⟩ := h v hv
  exact ⟨out, hv', pmcFin_of_tail hPC hTW hF⟩

end call2

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hoare_afterCall
#print axioms InitECandidate.Solver.MemSafe.Ptx.pmcFin_of_col
