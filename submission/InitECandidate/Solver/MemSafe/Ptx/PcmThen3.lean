import InitECandidate.Solver.MemSafe.Ptx.PcmThen2

/-!
# F3c: the whole then-branch `pcmThen` (`error == 0`)
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

/-- The state after `process_message` returned (before `ev = child`), memory and globals. -/
def PMm (Γ0 : Gam) (s0 : State σ) (msg child : BitVec 64) (u : State σ) : Prop :=
  CS Γ0 s0 child u ∧ (∃ e, gword u nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword u nmCC = some c ∧ c.toNat < nullMax) ∧ TgtB Γ0 s0.memory msg

def PM0 (Γ0 : Gam) (s0 : State σ) (msg child : BitVec 64) (u : State σ) : Prop :=
  PMm Γ0 s0 msg child u ∧ LOC0 msg child u.locals

section then3
variable {Γ0 : Gam} {s0 : State σ} {msg child : BitVec 64}

theorem thm_setEv_child {s : State σ} (hc : CS Γ0 s0 child s)
    (hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) (h112 : TgtB Γ0 s0.memory msg) :
    THm Γ0 s0 msg child (setGlobalHOLFinite nmEv (.val (.word child)) s) := by
  have hgo : ∀ g, g ≠ nmEv →
      (setGlobalHOLFinite nmEv (.val (.word child)) s).globals.lookup g = s.globals.lookup g := by
    intro g h
    show (s.globals.update (nmEv, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h)]
  refine ⟨cs_setEv hc (Or.inr rfl), ?_, ?_, h112⟩
  · refine gword_of ?_
    show (s.globals.update (nmEv, _)).lookup nmEv = _
    rw [lookup_update_self]
  · obtain ⟨c, hc', hcs⟩ := hcc
    refine ⟨c, ?_, hcs⟩
    unfold gword at hc' ⊢
    rw [hgo nmCC (by decide)]; exact hc'

theorem hoare_pcmThen (hcf : HypCfL σ) :
    Hoare σ guestCtx (PM0 Γ0 s0 msg child) pcmThen (PcQ Γ0 s0) := by
  unfold pcmThen
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨⟨hc, ⟨e0, he0, he0s⟩, hcc, h112⟩, hL0⟩ := hP
  rw [HtabEntries.ev_gv (gword_some he0)] at hv
  cases hv
  refine hoare_post (P := fun t => t = setVarHOLFinite (nm "parent") (.val (.word e0)) s) ?_
    (fun r t _ _ hq => pcQ_loc hq _)
  have hL1 : LOC msg child e0 (setVarHOLFinite (nm "parent") (.val (.word e0)) s).locals :=
    ⟨⟨(lk_set_ne _ _ (by decide)).trans hL0.1, (lk_set_ne _ _ (by decide)).trans hL0.2.1,
      hL0.2.2.elim fun w hw => ⟨w, (lk_set_ne _ _ (by decide)).trans hw⟩⟩,
      lk_set_self _ _ _, he0s⟩
  have hc1 : CS Γ0 s0 child (setVarHOLFinite (nm "parent") (.val (.word e0)) s) :=
    cs_congr hc rfl rfl rfl rfl
  refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC msg child e0 t.locals) ?_ ?_
  · refine hoare_of_hoareG (hoareG_assignK fun t _ ht v hv _ => ?_)
    subst ht
    rw [ev_lv, hL1.1.2.1] at hv
    cases hv
    exact ⟨rfl, thm_setEv_child hc1 hcc h112, hL1⟩
  · refine hoare_dec fun s2 hs2 hP2 v2 hv2 hsh2 => ?_
    obtain ⟨hT2, hL2⟩ := hP2
    rw [ev_cw] at hv2
    cases hv2
    refine hoare_post (P := fun t => t = setVarHOLFinite (nm "err") (.val (.word (BitVec.ofNat 64 0))) s2)
      ?_ (fun r t _ _ hq => pcQ_loc hq _)
    have hset : ∀ (s : State σ) (v : ValueHOL 64), LOC msg child e0 s.locals →
        LOC msg child e0 (setVarHOLFinite (nm "err") v s).locals := fun s v h =>
      ⟨⟨(lk_set_ne _ _ (by decide)).trans h.1.1, (lk_set_ne _ _ (by decide)).trans h.1.2.1,
        h.1.2.2.elim fun w hw => ⟨w, (lk_set_ne _ _ (by decide)).trans hw⟩⟩,
        (lk_set_ne _ _ (by decide)).trans h.2.1, h.2.2⟩
    refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC msg child e0 t.locals) ?_
      hoare_pcTail
    refine hoare_pre (hoare_pcCf hcf (fun l h => h.1) hset) fun t _ ht => ?_
    subst ht
    exact ⟨thm_congr hT2 rfl rfl rfl rfl, hset s2 _ hL2⟩

end then3

end InitECandidate.Solver.MemSafe.Ptx
