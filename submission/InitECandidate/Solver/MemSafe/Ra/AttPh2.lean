import InitECandidate.Solver.MemSafe.Ra.AttPh

/-!
# `run_attempt`: `var hdr = payload_header(si); k` and the rebase
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

structure Ok1p (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64) (En : Env) (S : FS) : Prop where
  si : En (nm "si") = some (.val (.word si0))
  pl : En (nm "pl") = some (.val (.word pl0))
  sub : ∀ f, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f → S f
  tidy : Tidy Z1b S
  safe : SafeS S

section ph2
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
  {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64}

theorem cw_decPh {Bph B2 : Nat} (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hQT : ResIns (nm "hdr") QT)
    (hOk : Ok1p si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh En S) (hc : HypPhCost σ Bph)
    (hk : ∀ (E' : EbE σ) (H C WD : BitVec 64), (∀ o ∈ E'.Γ0, KeepTy o.ty) →
      CW (PA E' (En2 si0 pl0 H) (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD)) raS23 B2 QT) :
    CW (PA E En S) raS22 (1 + Bph + B2) QT := by
  have hc' : Inv.CalleeCostP σ guestCtx (nm "payload_header")
      (fun vs s => ∃ Γ p, G guestC (HR σ) Γ s ∧ ptrsOf s = some p ∧ ArgsOK guestC Γ p (CcSig 1).params vs ∧
        CcPre PhPreC vs s Γ) Bph := hc
  unfold raS22
  refine cw_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hOk.safe hh)
  refine cw_decCallK hQT (FunSpec.and Exb.funSpec_payload_header_closed (gwk_ph (f := nm "payload_header") (by decide)))
    hc' ?_ ?_
  · intro s hs hpak vs hvs callee
    obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpak
    have hre := ebRun_loc hr callee (s.clock - 1)
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 : v1 = .val (.word si0) := evI_lv_pa (⟨⟨Γ, p, hr, hL⟩, hlk⟩ : PA E En S s) hOk.si v1 h1
    subst e1
    obtain ⟨q0, hq0, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans (ebRun_ptrs hr))).symm
    have hpcv := hL (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) (hOk.sub _ (by simp [S2b]))
    obtain ⟨o, ho, hb, ht, -⟩ := hL (Fct.obj pl0 tPL 136) (hOk.sub _ (by simp [S2b]))
    exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc rfl, ebRun_jr hre, ⟨ebRun_ev hre, ebRun_cc hre⟩, p,
      ebRun_ptrs hre, below_cpre hC hL0, si0, rfl, o, ho, hb.trans hpcv.1.symm, ht⟩
  · intro s hs hpak vs hvs callee v st ⟨hR, hgl⟩ hst hsh
    obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpak
    have hre := ebRun_loc hr callee (s.clock - 1)
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 : v1 = .val (.word si0) := evI_lv_pa (⟨⟨Γ, p, hr, hL⟩, hlk⟩ : PA E En S s) hOk.si v1 h1
    subst e1
    obtain ⟨q0, hq0, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans (ebRun_ptrs hr))).symm
    have hpcv := hL (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) (hOk.sub _ (by simp [S2b]))
    obtain ⟨o, ho, hb, ht, -⟩ := hL (Fct.obj pl0 tPL 136) (hOk.sub _ (by simp [S2b]))
    obtain ⟨Γ', q', PL, C, hG', hq', hext, hhp, hnf, hmod, hpg, hRy, hPLe⟩ :=
      hR v rfl Γ p (ebRun_G hre) (ebRun_ptrs hre) (below_cpre hC hL0) ⟨si0, rfl, o, ho, hb.trans hpcv.1.symm, ht⟩
    have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    have hEv : EvCc st := by
      obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ : EvCc (callEntryStateHOLFinite s callee) := ⟨ebRun_ev hre, ebRun_cc hre⟩
      exact ⟨⟨e, by unfold gword; rw [hpg _ hF.pgEv]; exact he, hs1⟩, ⟨c, by unfold gword; rw [hpg _ hF.pgCC]; exact hc', hs2⟩⟩
    have hJ : JrNZ st :=
      jrNZ_of_lookup (fun g hg => hpg g (by rcases jrGs_cases hg with rfl | rfl <;> decide)) (ebRun_jr hre)
    obtain ⟨H, C', WD, Γk, hvH, hGk, hkeep, hhold⟩ := ph_post hK hC (ebRun_G hre) (ebRun_ptrs hre)
      (holdsAll_mono hLe (fun f hf => hOk.sub f hf)) hG' hq' hext hmod (fun g hg => hgl v rfl g (z1b_ph g hg)) hEv hRy
      (hPLe si0 rfl)
    subst hvH
    refine cw_pre (hk ⟨Γk, st, q'⟩ H C' WD hkeep) ?_
    intro t' _ ht'
    subst ht'
    have hrun0 : EbRun Γk st q' Γk st q' := ebRun_refl hGk hq' hJ hEv.1 hEv.2
    refine ⟨⟨Γk, q', ebRun_set (ebRun_loc hrun0 s.locals st.clock) (nm "hdr") _, ?_⟩, ?_⟩
    · intro g hg
      have := (holdsAll_loc hhold s.locals st.clock) g hg
      cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
    · intro x w hx
      simp only [En2, Env.set] at hx
      split_ifs at hx with h1 h2 h3
      · subst h1; cases hx; exact lk_set_self _ _ _
      · subst h2; cases hx; rw [lk_set_ne _ _ (by decide)]; exact hlk _ _ hOk.pl
      · subst h3; cases hx; rw [lk_set_ne _ _ (by decide)]; exact hlk _ _ hOk.si

end ph2

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cw_decPh
