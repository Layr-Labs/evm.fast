import InitECandidate.Solver.MemSafe.Ptx.PcmThen1

/-!
# F3c: the tail, the catch handler and the guarded `create_finish` call
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

section then2
variable {Γ0 : Gam} {s0 : State σ} {msg child par : BitVec 64}

theorem pmFinL_of_thm {u : State σ} (hT : THm Γ0 s0 msg child u) (hpar : par.toNat < nullMax) :
    PmFinL Γ0 s0 child (setGlobalHOLFinite nmEv (.val (.word par)) u) := by
  have hc := cs_setEv (w := par) hT.1 (Or.inl hpar)
  obtain ⟨c, hcc, hcs⟩ := hT.2.2.1
  obtain ⟨Γ, p, rec, hG, hp, hkb, hev, hgp, hlog, hJ⟩ := hc
  have hgo : ∀ g, g ≠ nmEv →
      (setGlobalHOLFinite nmEv (.val (.word par)) u).globals.lookup g = u.globals.lookup g := by
    intro g h
    show (u.globals.update (nmEv, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h)]
  refine ⟨hgp.2.2.2.2.1, ⟨Γ, hG, hev, hkb.1, hkb.2.1, ⟨rec, fun p' hp' => ?_⟩, fun p' hp' => ?_⟩,
    ⟨par, ?_, hpar⟩, ⟨c, ?_, hcs⟩⟩
  · rw [hp] at hp'; cases hp'; exact hgp
  · rw [hp] at hp'; cases hp'; exact hlog
  · refine gword_of ?_
    show (u.globals.update (nmEv, _)).lookup nmEv = _
    rw [lookup_update_self]
  · have : gword (setGlobalHOLFinite nmEv (.val (.word par)) u) nmCC = gword u nmCC := by
      unfold gword; rw [hgo nmCC (by decide)]
    rw [this]; exact hcc

theorem hoare_pcTail :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC msg child par s.locals)
      (.seq (.assign .global (nm "ev") (lv (nm "parent"))) (.return (lv (nm "child"))))
      (PcQ Γ0 s0) := by
  refine hoare_seqP (Rn := fun t => ∃ s : State σ, THm Γ0 s0 msg child s ∧ LOC msg child par s.locals ∧
    t = setGlobalHOLFinite nmEv (.val (.word par)) s) ?_ ?_
  · refine hoare_of_hoareG (hoareG_assignK fun s _ ⟨hT, hL⟩ v hv _ => ?_)
    rw [ev_lv, hL.2.1] at hv
    cases hv
    exact ⟨rfl, s, hT, hL, rfl⟩
  · refine hoare_return fun t _ ⟨s, hT, hL, ht⟩ v hv => ?_
    subst ht
    have hl : (setGlobalHOLFinite nmEv (.val (.word par)) s).locals.lookup (nm "child") =
        some (.val (.word child)) := hL.1.2.1
    rw [ev_lv, hl] at hv
    cases hv
    refine ⟨by simp, fun v' hv' => ?_⟩
    cases hv'
    exact ⟨child, rfl, pmFinL_congr rfl rfl rfl rfl (pmFinL_of_thm hT hL.2.2)⟩

theorem hoare_pcHandler {LOC : Locs → Prop}
    (hLOC : ∀ l, LOC l → ∃ w, l.lookup (nm "snapshot") = some (.val (.word w))) :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals) pcmHandler
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  unfold pcmHandler
  refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC t.locals)
    (hoare_th_sr hLOC) ?_
  refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC t.locals)
    hoare_th_refill ?_
  refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC t.locals)
    hoare_th_halt ?_
  refine hoare_seqP (Rn := fun t => THm Γ0 s0 msg child t ∧ LOC t.locals)
    (hoare_th_stEv (off := 120) (by decide) (by decide) fun s hT => ?_) ?_
  · obtain ⟨Γ, p, rec, hG, -⟩ := hT.1
    obtain ⟨w, hw⟩ := ev_evmEmpty hG
    exact ⟨w, hw⟩
  · exact hoare_th_stOut (x := 0) (by decide) fun s _ => ev_cw s 0

theorem hoare_pcCf (hcf : HypCfL σ) {LOC : Locs → Prop}
    (hmc : ∀ l, LOC l → l.lookup (nm "msg") = some (.val (.word msg)) ∧
      l.lookup (nm "child") = some (.val (.word child)) ∧
      ∃ w, l.lookup (nm "snapshot") = some (.val (.word w)))
    (hset : ∀ (s : State σ) v, LOC s.locals → LOC (setVarHOLFinite (nm "err") v s).locals) :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (.call (some (none, some (nm "EvmErr", nm "err", pcmHandler))) (nm "create_finish")
        [lv (nm "msg"), lv (nm "child")])
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  have key : ∀ (s : State σ) (callee : Locs) (vs : List (ValueHOL 64)) (r : PanSemResultExact 64)
      (st : State σ), THm Γ0 s0 msg child s → LOC s.locals →
      evs s [lv (nm "msg"), lv (nm "child")] = some vs →
      SumRelO guestC (Hooks.guestHooksR (σ := σ)) (sgA 2 [Hooks.gJn]) (CfPre guestC tEV)
        (PWtopL gasKs) CfQ vs (callEntryStateHOLFinite s callee) r st → Good (some r) → ¬ Abortive r →
      THm Γ0 s0 msg child st := by
    intro s callee vs r st hT hL hvs hR hg hna
    obtain ⟨hm, hc, -⟩ := hmc _ hL
    rw [evs_cons (ev_lv_eq hm) (evs_cons (ev_lv_eq hc) evs_nil)] at hvs
    cases hvs
    have hTe : THm Γ0 s0 msg child (callEntryStateHOLFinite s callee) := thm_congr hT rfl rfl rfl rfl
    obtain ⟨-, -, -, -, -, -, -, -, -, hJ⟩ := hTe.1
    exact thm_step' hTe fun Γ p rec hG hp hkb ⟨e, heo, heb, hee⟩ hgp =>
      step_cf hR rfl hG hp hJ hTe.2.1 heo hee heb
        (cfOK_of_tgtB (ordered_of_G hG hp) (layout_of_G hG hp) (tgtB_kb hTe.2.2.2 hkb hp)) hg hna
  refine hoare_callH (tgt := none) hcf ?_ ?_
  · intro s hs ⟨hT, hL⟩ vs hvs callee v st hR hst
    refine ⟨fun _ => ⟨rfl, thm_congr (key s callee vs _ st hT hL hvs hR (by simp [Good])
      (not_abortive_ret v)) rfl rfl rfl rfl, hL⟩, fun k x h => absurd h (by simp)⟩
  · intro s hs ⟨hT, hL⟩ vs hvs callee v st hR hst
    have hTs := key s callee vs _ st hT hL hvs hR (by simp [Good]) (not_abortive_evm v)
    refine hoare_pre (hoare_pcHandler fun l h => (hmc l h).2.2) fun t _ ht => ?_
    subst ht
    exact ⟨thm_congr hTs rfl rfl rfl rfl, hset { st with locals := s.locals } v hL⟩

end then2

end InitECandidate.Solver.MemSafe.Ptx
