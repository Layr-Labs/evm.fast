import InitECandidate.Solver.MemSafe.Ptx.PcmThen3

/-!
# F3c: the error branch (`state_restore; return child`) and the test `pcmK6`
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

section k
variable {Γ0 : Gam} {s0 : State σ} {msg child : BitVec 64}

theorem pmm_congr {u u' : State σ} (h : PMm Γ0 s0 msg child u) (hm : u'.memory = u.memory)
    (hg : u'.globals = u.globals) (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) :
    PMm Γ0 s0 msg child u' := by
  obtain ⟨hc, ⟨e, he, hes⟩, ⟨c, hcc, hcs⟩, h112⟩ := h
  exact ⟨cs_congr hc hm hg hd hbe, ⟨e, by rw [gword_congr hg]; exact he, hes⟩,
    ⟨c, by rw [gword_congr hg]; exact hcc, hcs⟩, h112⟩

theorem pmm_step' {u t : State σ} (hT : PMm Γ0 s0 msg child u)
    (hr : ∀ (Γ : Gam) (p : Ptrs) (rec : BitVec 64), G guestC (Hooks.guestHooksR (σ := σ)) Γ u →
      ptrsOf u = some p → KB Γ0 Γ s0 u → (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) → GP Γ u.memory p (child, rec) →
      ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
        XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory) :
    PMm Γ0 s0 msg child t := by
  obtain ⟨hc, ⟨e, he, hes⟩, ⟨c, hcc, hcs⟩, h112⟩ := hT
  have hc' := cs_step hc hr
  obtain ⟨Γ, p, rec, hG, hp, hkb, hev, hgp, -⟩ := hc
  obtain ⟨Γ', p', hrun, -, -⟩ := hr Γ p rec hG hp hkb hev hgp
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hg : ∀ g, g ∈ guestC.PG → g ≠ Hooks.gJn → t.globals.lookup g = u.globals.lookup g :=
    fun g hg hn => hrun.2.2.2.2.2.2.1 g hg (by simpa using hn)
  refine ⟨hc', ⟨e, ?_, hes⟩, ⟨c, ?_, hcs⟩, ?_⟩
  · unfold gword; rw [hg nmEv hF.pgEv (by decide)]; exact he
  · unfold gword; rw [hg nmCC hF.pgCC (by decide)]; exact hcc
  · exact h112

theorem hoare_pm_sr :
    Hoare σ guestCtx (fun s => PMm Γ0 s0 msg child s ∧ LOC0 msg child s.locals)
      (callD (nm "state_restore") [lv (nm "snapshot")])
      (fun r t => r = none ∧ PMm Γ0 s0 msg child t ∧ LOC0 msg child t.locals) := by
  refine hoare_callD (sumSpecA_relX stSum_sr) ?_
  intro s hs ⟨hT, hL⟩ vs hvs callee v st hR hst
  obtain ⟨w, hw⟩ := hL.2.2
  rw [evs_cons (ev_lv_eq hw) evs_nil] at hvs
  cases hvs
  have hTe : PMm Γ0 s0 msg child (callEntryStateHOLFinite s callee) := pmm_congr hT rfl rfl rfl rfl
  obtain ⟨-, -, -, -, -, -, -, -, -, hJ⟩ := hTe.1
  have hTs : PMm Γ0 s0 msg child st := pmm_step' hTe fun Γ p rec hG hp _ hev hgp =>
    step_st hR hG hp (argsOK_any (by simp [HtabEntries.srSig]) (by simp [HtabEntries.srSig])) hJ
      (by simp [HtabEntries.srSig]) hev
  exact ⟨rfl, pmm_congr hTs rfl rfl rfl rfl, hL⟩

theorem pmFinL_of_pmm {u : State σ} (hT : PMm Γ0 s0 msg child u) : PmFinL Γ0 s0 child u := by
  obtain ⟨⟨Γ, p, rec, hG, hp, hkb, hev, hgp, hlog, hJ⟩, he, hcc, -⟩ := hT
  exact ⟨hgp.2.2.2.2.1, ⟨Γ, hG, hev, hkb.1, hkb.2.1, ⟨rec, fun p' hp' => by
    rw [hp] at hp'; cases hp'; exact hgp⟩, fun p' hp' => by rw [hp] at hp'; cases hp'; exact hlog⟩, he, hcc⟩

theorem hoare_pcmK7 : Hoare σ guestCtx (PM0 Γ0 s0 msg child) pcmK7 (PcQ Γ0 s0) := by
  unfold pcmK7
  refine hoare_seqP (Rn := fun t => PMm Γ0 s0 msg child t ∧ LOC0 msg child t.locals)
    (hoare_pm_sr) ?_
  refine hoare_return fun t _ ⟨hT, hL⟩ v hv => ?_
  rw [ev_lv, hL.2.1] at hv
  cases hv
  exact ⟨by simp, fun v' hv' => by
    cases hv'
    exact ⟨child, rfl, pmFinL_congr rfl rfl rfl rfl (pmFinL_of_pmm hT)⟩⟩

theorem hoare_pcmK6 (hcf : HypCfL σ) : Hoare σ guestCtx (PM0 Γ0 s0 msg child) pcmK6 (PcQ Γ0 s0) := by
  unfold pcmK6
  refine hoare_seqD (Rn := PM0 Γ0 s0 msg child) ?_ hoare_pcmK7
  refine hoare_ite (hoare_post (hoare_pre (hoare_pcmThen hcf) fun s _ h => h.1)
    fun r t _ _ hq => Or.inr ⟨hq.1, hq⟩) (hoare_skip fun s _ h => Or.inl ⟨rfl, h.1⟩)

end k

end InitECandidate.Solver.MemSafe.Ptx
