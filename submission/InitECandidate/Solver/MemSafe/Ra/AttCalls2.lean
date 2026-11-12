import InitECandidate.Solver.MemSafe.Ra.AttCalls1
import InitECandidate.Solver.MemSafe.Ini.All

/-!
# `run_attempt`: call conversions (3), `is_valid_versioned_hashes`, `nodedb_build`, `state_init`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem cr_ivvh : CallR (σ := σ) (nm "is_valid_versioned_hashes") (fun vs s Γ _ => Exb.IvPre vs s Γ)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ _ _ => True) := by
  have h := callR_of_sumSpecA (σ := σ) Exb.sumSpecA_is_valid_versioned_hashes (by decide) (by decide)
    (fun vs s Γ a hG hw => hw.elim)
  have h2 := callR_mono_post h (Q' := fun _ _ _ _ _ _ _ _ => True) (fun _ _ _ _ _ _ _ _ _ => trivial)
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  obtain ⟨SI, rfl, hI⟩ := hpre
  exact h2 _ body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE
    ⟨argsOK_any (by simp [Exb.ivSig]) rfl, SI, rfl, hI⟩

/-- `nodedb_build`: the result is a frozen node DB, and the frozen node DBs of the entry survive. -/
theorem cr_ndb : CallR (σ := σ) (nm "nodedb_build") (fun vs s Γ _ => Ini.NdbPre vs s Γ)
    (fun _ _ _ _ => False)
    (fun _ s Γ _ v t Γ' _ => (∃ T, v = .val (.word T) ∧ Hooks.NdbR Γ' t.memory T) ∧
      ∀ T0, Hooks.NdbR Γ s.memory T0 → Hooks.NdbR Γ' t.memory T0) := by
  have hf := Ini.sumSpecA_nodedb_build_79 (σ := σ)
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  subst hv
  have hargs : ArgsOK guestC Γ p Wit.ndbSig.params vs := by
    obtain ⟨arr, n, rfl, -⟩ := hpre
    exact argsOK_any (by simp [Wit.ndbSig]) rfl
  have hspec := hf vs body callee rs hl s hs hloc _ hr (by simp [Good]) (not_abortive_ret v) Γ hG ⟨p, hp, hargs⟩ hpre
  obtain ⟨Γ', p0, p', hc, hq⟩ := hspec
  obtain rfl : p = p0 := (Option.some.inj (hc.1.symm.trans hp)).symm
  have hbk : BKeep guestC Γ s (evaluateHOLFiniteState s body).2 :=
    bkeep_of_sumCore hG hargs hc (fun a h => h.2.elim)
  have hpk : PlKeep Γ s (evaluateHOLFiniteState s body).2 :=
    plKeep_of_sumCore hG hargs hc (fun a h => h.2.elim)
  have hgw : nmEv ∉ Wit.ndbSig.gw ∧ nmCC ∉ Wit.ndbSig.gw := by decide
  have hJo : JrOut Wit.ndbSig.gw := by decide
  obtain ⟨q, hq0, hord, hL, -⟩ := id hG
  obtain rfl : p = q := (Option.some.inj (hq0.symm.trans hp)).symm
  refine ⟨Γ', p', ⟨stepD_of_core hG hc, jrNZ_sumCore (by decide) hJo hc hJ, ?_, ?_, hpk⟩, ?_, ?_⟩
  · have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    have hglob := hc.2.2.2.2.2.2.2.1
    obtain ⟨⟨e, he, hs'⟩, ⟨c, hc', hs''⟩⟩ := hE
    exact ⟨⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs'⟩,
      ⟨c, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact hc', hs''⟩⟩
  · intro a ha _
    exact (bkeep_iff.mp hbk) a (kCell_of_bCell ha)
  · obtain ⟨T, hT, hN⟩ := hq v rfl
    exact ⟨T, hT, hN⟩
  · intro T0 hT0
    have hfr : ∀ x, Hooks.NdbFp s.memory T0 x → (evaluateHOLFiniteState s body).2.memory x = s.memory x := by
      intro x hx
      have hr' := Hooks.ndbFp_rcell hT0 hx
      refine hc.2.2.2.2.2.2.1 x ?_
      rintro (h | h | h | ⟨-, hF⟩)
      · exact Wit.rcell_not_wcell hord hL hr' h
      · exact argCells_any (by simp [Wit.ndbSig]) h
      · exact h (Wit.rcell_alloc hL hr')
      · exact hF
    exact Hooks.ndbR_ext hc.2.2.2.1 (Hooks.ndb_frame hT0 hfr).1

theorem jrNZ_of_sipost {Γ' : Gam} {t : State σ} (h : Ini.SiPost Γ' t) : JrNZ t := by
  obtain ⟨-, -, ⟨w2, hw2, -, hn2⟩, ⟨w3, hw3, -, hn3⟩, -, -⟩ := h
  intro g hg
  rcases jrGs_cases hg with rfl | rfl
  · exact ⟨w3, hw3, hn3⟩
  · exact ⟨w2, hw2, hn2⟩

/-- `state_init`: `SiPost` at the post typing (returns only). -/
theorem cr_si : CallR (σ := σ) (nm "state_init") (fun vs s Γ _ => Ini.StatePre vs s Γ)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ t Γ' _ => Ini.SiPost Γ' t) := by
  have hf := Ini.funSpec_state_init (σ := σ)
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  subst hv
  have hargs : ArgsOK guestC Γ p Ini.siSigW.params vs := by
    obtain ⟨db, rt, cd, rfl, -⟩ := hpre
    exact argsOK_any (by simp [Ini.siSigW]) rfl
  obtain ⟨Γ', p0, p', hc, hpost⟩ := hf vs body callee rs hl s hs hloc _ hr v rfl Γ hG ⟨p, hp, hargs⟩ hpre
  obtain rfl : p = p0 := (Option.some.inj (hc.1.symm.trans hp)).symm
  have hbk : BKeep guestC Γ s (evaluateHOLFiniteState s body).2 :=
    bkeep_of_sumCore hG hargs hc (fun a h => h.2.elim)
  have hpk : PlKeep Γ s (evaluateHOLFiniteState s body).2 :=
    plKeep_of_sumCore hG hargs hc (fun a h => h.2.elim)
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hglob := hc.2.2.2.2.2.2.2.1
  refine ⟨Γ', p', ⟨stepD_of_core hG hc, jrNZ_of_sipost hpost, ?_, ?_, hpk⟩, hpost⟩
  · obtain ⟨⟨e, he, hs'⟩, ⟨c, hc', hs''⟩⟩ := hE
    exact ⟨⟨e, by unfold gword; rw [hglob _ hF.pgEv (by decide)]; exact he, hs'⟩,
      ⟨c, by unfold gword; rw [hglob _ hF.pgCC (by decide)]; exact hc', hs''⟩⟩
  · intro a ha _
    exact (bkeep_iff.mp hbk) a (kCell_of_bCell ha)

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cr_si
#print axioms InitECandidate.Solver.MemSafe.Att.cr_ivvh
#print axioms InitECandidate.Solver.MemSafe.Att.cr_ndb
