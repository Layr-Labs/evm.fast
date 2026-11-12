import InitECandidate.Solver.MemSafe.Frames.BundleXG

/-!
# `frame_start` on the chain extension (frames9, task 2a)

`frame_start` (`try done = frame_prologue() catch EvmErr => err { frame_exception(err); }
if done != 0 { CK_DONE := 1 }`) as the footprint-free summary `start_child` / `generic_call` need
(`SumSpecT`, Pre `PreInvX … GP GR M`, post `QLeX … GP GR`), from `frame_prologue`'s summary on the
extension (post **`QProX`**: `ChainX` and `Φ` not raised on a return or an `EvmErr`).

* `exc_stepX`: `frame_exception`'s step keeps `ChainX` (its exact memory effect, `chainE_exc`).
* `done_writeX`: `CK_DONE := 1` keeps `ChainX` (`chainE_top`) and does not raise `Φ`.
* **`start_sumSpecX`**.
-/

set_option autoImplicit false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- `frame_prologue`'s post on the extension: `ChainX` and `Φ` not raised, on a return or an
`EvmErr`. -/
def QProX (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t ≤ Phi s ∧ RootK s t) ∧
  (∀ v, r = .exception nmEvmErr v → ChainX C tEV tCK P R Γ' t ∧ Phi t ≤ Phi s ∧ RootK s t)

section
variable {H : Hooks σ}

/-- `frame_exception`'s step keeps the guest extension (the chain is the core's `Chain`). -/
theorem exc_stepX (hFr : FrameCfg guestC H tEV tCK) {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    {sg : Sig} {PWx : BitVec 64 → Prop} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hG : G guestC H Γ s) (hc : SumCore guestC H sg PWx Γ s vs r t Γ' p p')
    (hE : Good (some r) → (∃ x, gword s (nm "evm_empty") = some x) →
      ∃ e c err E S, vs = [.val (.word err)] ∧ gword s nmEv = some e ∧ gword s nmCC = some c ∧
        gword s (nm "evm_empty") = some E ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧
        t.memory = upd (excMem s.memory e err S E) (c + BitVec.ofNat 64 32) 1)
    (hg : Good (some r)) (hch2 : Chain guestC tEV tCK Γ' t)
    (hx : ChainX guestC tEV tCK GP GR Γ s) :
    ChainX guestC tEV tCK GP GR Γ' t ∧ RootK s t := by
  obtain ⟨fs, hch, hEx⟩ := hx
  have ⟨q, hps, hord, hL, _, _, hGl, _⟩ := hG
  obtain ⟨k0, hk0⟩ := hFr.empty
  obtain ⟨v0, hv0, -⟩ := hGl _ k0 hk0
  obtain ⟨e, c, err, E, S, -, he, hcc, -, -, hglob, hmem⟩ := hE hg ⟨v0, hv0⟩
  obtain ⟨e', c', rest, hfs, he', hc', hic⟩ := hch.chain
  rw [he, Option.some.injEq] at he'
  rw [hcc, Option.some.injEq] at hc'
  subst he' hc'
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory := by
    rw [hmem]; exact excMem_mod _ _ _ _ _ _
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -⟩ := hc
  obtain rfl : q = p := Option.some.inj (hps.symm.trans hpu)
  have ⟨q2, hq2, hord2, hL2, _⟩ := hG'
  obtain rfl : q2 = p' := Option.some.inj (hq2.symm.trans hpt)
  have hE' := chainE_exc hFr hpu hpt hord hord2 hL hL2 hmo hext hnf hch hoe hoet hoc hoct hmod hEx
  obtain ⟨fs2, hch2⟩ := hch2
  have hck : ∀ f ∈ fs, ∀ j ∈ ckChainSlots, fld t.memory f.2 j = fld s.memory f.2 j := by
    intro f hf j hj
    obtain ⟨ocf, hocf, hocfb, hocft⟩ := ck_obj hch hf
    have hszc := ck_size hFr hL hocf hocft
    have hj' : j ≤ 80 ∧ j ≠ 32 := by
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hj
      omega
    rw [← hocfb]
    exact fld_mod hmod (notExcCellsX hFr hord hL hoe hoet hoc hoct hocf (by omega)
      (Or.inl (by rw [hocft]; decide)) (Or.inr hj'.2))
  have hof : ChainOf t fs := ⟨oe.base, oc.base, rest, hfs, by rw [gword_congr hglob]; exact he,
    by rw [gword_congr hglob]; exact hcc, isChain_keep hic hck⟩
  have hfe := chainOf_unique hch2.chain hof
  subst fs2
  exact ⟨⟨fs, hch2, hE'⟩, rootK_of_same hch.chain hch2.chain⟩

/-- **`CK_DONE := 1` on the extension.** -/
theorem done_writeX (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ : Gam} {u : State σ}
    {c : BitVec 64} (hG : G guestC H Γ u) (hx : ChainX guestC tEV tCK GP GR Γ u)
    (hc : gword u nmCC = some c) {t : State σ}
    (hm : t.memory = upd u.memory (c + BitVec.ofNat 64 32) 1) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    ∃ p, RunT guestC H gw Γ u Γ t p p ∧ ChainX guestC tEV tCK GP GR Γ t ∧ Phi t ≤ Phi u ∧
      RootK u t := by
  obtain ⟨fs, hL, hE⟩ := hx
  obtain ⟨p, hrun, -, hΦ⟩ := done_write (gw := gw) hF hG ⟨fs, hL⟩ hc hm hg hd hbe
  obtain ⟨p0, e, c', rest, oe, oc, hps, hord, hLy, hfs, he, hc', hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hL
  rw [hc, Option.some.injEq] at hc'
  subst hc' hoeb hocb
  have hmod : ModifiesOnly (TopCells oe.base oc.base) u.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inr rfl) _
  obtain ⟨-, -, hLt, -⟩ := top_write (gw := gw) hF hG hL hfs hmod hg hd hbe
  exact ⟨p, runT_of_run hrun (bkeep_of_topCells hF hord hLy hoe hoet hoc hoct hse hsc hmod),
    ⟨fs, hLt, chainE_top hF xCfg_guest (by decide) hG hL hfs hmod hg hE⟩,
    hΦ, rootK_of_same hL.chain hLt.chain⟩

/-- Run, extended chain and a non-increasing `Φ`, from `s0`. -/
def KLeX (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (u : State σ) :
    Prop :=
  ∃ Γ' p', RunT guestC H gw Γ0 s0 Γ' u p0 p' ∧ ChainX guestC tEV tCK GP GR Γ' u ∧ Phi u ≤ Phi s0 ∧
    RootK s0 u

theorem kLeX_locals (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {u : State σ} (h : KLeX H gw Γ0 s0 p0 u) (l : Locs) :
    KLeX H gw Γ0 s0 p0 { u with locals := l } := by
  obtain ⟨Γ', p', hr, hc, hΦ, hRt⟩ := h
  exact ⟨Γ', p', runT_locals hH hr l, (chainX_locFree u l u.clock).mpr hc,
    by rw [phi_locFree.loc]; exact hΦ, rootK_congr rfl rfl rfl rfl hRt⟩

/-- The run part. -/
def KRunT (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (u : State σ) :
    Prop :=
  ∃ Γ' p', RunT guestC H gw Γ0 s0 Γ' u p0 p'

theorem kRunT_locals (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {u : State σ} (h : KRunT H gw Γ0 s0 p0 u) (l : Locs) :
    KRunT H gw Γ0 s0 p0 { u with locals := l } :=
  let ⟨Γ', p', hr⟩ := h; ⟨Γ', p', runT_locals hH hr l⟩

/-- The post of `frame_start`'s body. -/
def DPostX (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ((∃ v, r = .returned v) ∧ KLeX H gw Γ0 s0 p0 t) ∨
    ((∀ v, r ≠ .returned v) ∧ KRunT H gw Γ0 s0 p0 t)

theorem dPostX_locals (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {r : PanSemResultExact 64} {t : State σ} (h : DPostX H gw Γ0 s0 p0 r t)
    (l : Locs) : DPostX H gw Γ0 s0 p0 r { t with locals := l } :=
  h.imp (fun ⟨a, b⟩ => ⟨a, kLeX_locals hH b l⟩) (fun ⟨a, b⟩ => ⟨a, kRunT_locals hH b l⟩)

end

/-- **`frame_start`'s summary on the chain extension**, from `frame_prologue`'s. -/
theorem start_sumSpecX {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} (hgJ : JrOut gw) {M : Nat}
    (hpro : SumSpecT σ X guestC H (nm "frame_prologue") (sg0 gw)
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR)) :
    SumSpecT σ X guestC H (nm "frame_start") (sg0 gw) (PreInvX guestC tEV tCK GP GR M)
      (QLeX guestC tEV tCK GP GR) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _ ⟨⟨hx0, hΦ0⟩, hJ0⟩
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_start hl
  have ⟨p, hps, _⟩ := hG
  have hH := hF.hooks
  have hJ : JrPG guestC := by decide
  have hsub0 : ∀ g, g ∈ (sg1 []).gw → g ∈ gw := fun g h => by simp [sg1] at h
  have hsubp : ∀ g, g ∈ (sg0 gw).gw → g ∈ gw := fun g h => h
  let KS := KLeX H gw Γ s0 p
  let KA := KRunT H gw Γ s0 p
  have H0 : HoareG σ X (fun u => u = s0) startBody
      (fun ro t => ∀ r, ro = some r → ¬ Abortive r → DPostX H gw Γ s0 p r t) := by
    refine hoareG_dec fun s1 _ hs1 v1 _ _ => ?_
    have hs1' := hs1.symm
    subst hs1'
    refine hoareG_dec fun s2 _ hs2 v2 _ _ => ?_
    subst hs2
    have hkl : KS (setVarHOLFinite nmDone v2 (setVarHOLFinite nmErr v1 s0)) :=
      kLeX_locals hH ⟨Γ, p, runT_refl hG hps, hx0, le_refl _, rootK_refl s0⟩ _
    -- the call of `frame_prologue` from a `KS` state
    have hcall : ∀ (u : State σ), KS u → ∀ (vs : List (ValueHOL 64)), vs = [] → ∀ callee r st,
        SumRelX guestC H (sg0 gw) (PreInvX guestC tEV tCK GP GR M) (fun _ _ Γ a => ¬ KCell guestC Γ a)
          (QProX guestC tEV tCK GP GR) vs (callEntryStateHOLFinite u callee) r st →
        Good (some r) → ¬ Abortive r →
        ∃ Γ2 p2, RunT guestC H gw Γ s0 Γ2 st p p2 ∧
          (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ2 st ∧ Phi st ≤ Phi s0 ∧
            RootK s0 st) ∧
          (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ2 st ∧ Phi st ≤ Phi s0 ∧
            RootK s0 st) := by
      intro u hu vs hvs callee r st hR hg' hna'
      subst hvs
      obtain ⟨Γ1, p1, hrun1, hc1, hΦ1, hR1⟩ := hu
      have hJu : JrNZ (callEntryStateHOLFinite u callee) :=
        jrNZ_congr (s := u) rfl (jrNZ_runT hJ hgJ hrun1 hJ0)
      obtain ⟨Γ2, p2, hrun2, -, hQr, hQe⟩ := run_callT hH hsubp hrun1 hR hg' hna'
        (argsOK_any (any_sg0 gw) rfl)
        ⟨⟨(chainX_locFree u _ _).mpr hc1, by rw [phi_locFree.entry]; omega⟩, hJu⟩ (fun a h => h)
      refine ⟨Γ2, p2, hrun2, fun v hv => ?_, fun v hv => ?_⟩
      · obtain ⟨a, b, k⟩ := hQr v hv
        rw [phi_locFree.entry] at b
        exact ⟨a, by omega, rootK_trans (rootK_congr (s := s0) (t := u) rfl rfl rfl rfl hR1) k
          (chainOf_of_X ((chainX_locFree u _ _).mpr hc1))⟩
      · obtain ⟨a, b, k⟩ := hQe v hv
        rw [phi_locFree.entry] at b
        exact ⟨a, by omega, rootK_trans (rootK_congr (s := s0) (t := u) rfl rfl rfl rfl hR1) k
          (chainOf_of_X ((chainX_locFree u _ _).mpr hc1))⟩
    refine hoareG_seq (R := fun ro u => (ro = none ∧ KS u) ∨
        (ro ≠ none ∧ (∀ v, ro ≠ some (.returned v)) ∧
          ∀ r, ro = some r → ¬ Abortive r → KA u)) ?_ ?_ ?_
    · refine hoareG_callH hpro ?_ ?_ ?_
      · intro s _ hs vs hvs callee v st hR _
        subst hs
        obtain ⟨Γ2, p2, hrun2, hret, -⟩ := hcall _ hkl vs (evs_zero hvs) callee _ st hR
          (by simp [Good]) (not_abortive_ret v)
        obtain ⟨hc2, hΦ2, hR2⟩ := hret v rfl
        have hk : KS st := ⟨Γ2, p2, hrun2, hc2, hΦ2, hR2⟩
        refine ⟨(fun h => by cases h), fun k x htg _ => ?_⟩
        simp only [Option.some.injEq, Prod.mk.injEq] at htg
        obtain ⟨rfl, rfl⟩ := htg
        exact Or.inl ⟨rfl, kLeX_locals hH hk _⟩
      · intro s _ hs vs hvs callee v st hR _
        subst hs
        obtain ⟨Γ2, p2, hrun2, -, hexc⟩ := hcall _ hkl vs (evs_zero hvs) callee _ st hR
          (by simp [Good]) (not_abortive_evm v)
        obtain ⟨hc2, hΦ2, hR2⟩ := hexc v rfl
        refine hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (exc_sumSpec hC hF M)))
          (exc_spec hC)) ?_ ?_
        · intro u _ hu vs' hvs' callee' v' st' ⟨hR', hE'⟩ _
          have hrunu : RunT guestC H gw Γ s0 Γ2 u p p2 := by rw [hu]; exact runT_locals hH hrun2 _
          have hcu : ChainX guestC tEV tCK GP GR Γ2 u := by
            rw [hu]; exact (chainX_locFree st _ _).mpr hc2
          have hΦu : Phi u = Phi st := by rw [hu]; rfl
          have hG2e : G guestC H Γ2 (callEntryStateHOLFinite u callee') :=
            (G_locFree hH u _ _).mpr hrunu.2.2.2.2.2.1
          obtain ⟨Γ3, p3, hrun3, hc3, hQ3⟩ := run_callT_bk hH hsub0 hrunu hR' (by simp [Good])
            (not_abortive_ret v') (argsOK_any (any_sg1 []) (evs_one hvs'))
            ⟨(chain_locFree.entry _ _).mpr (chainX_chain hcu), by rw [phi_locFree.entry]; omega⟩
            (bkeep_exc_spec hF hG2e (chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee') rfl rfl (chainX_chain hcu).choose_spec) hE'
              (by simp [Good]))
          obtain ⟨hch3, hΦ3⟩ := hQ3 v' rfl
          obtain ⟨hx3, hR3⟩ := exc_stepX hF hG2e hc3 hE' (by simp [Good]) hch3
            ((chainX_locFree u _ _).mpr hcu)
          rw [phi_locFree.entry] at hΦ3
          have hk : KS st' := ⟨Γ3, p3, hrun3, hx3, by omega,
            rootK_trans (rootK_congr (s := s0) (t := st) rfl rfl (by rw [hu]; rfl) (by rw [hu]; rfl) hR2)
              hR3 (chainOf_of_X ((chainX_locFree u _ _).mpr hcu))⟩
          exact Or.inl ⟨rfl, kLeX_locals hH hk _⟩
        · intro u _ hu vs' hvs' callee' r' st' ⟨hR', hE'⟩ _ habn
          have hrunu : RunT guestC H gw Γ s0 Γ2 u p p2 := by rw [hu]; exact runT_locals hH hrun2 _
          have hcu : ChainX guestC tEV tCK GP GR Γ2 u := by
            rw [hu]; exact (chainX_locFree st _ _).mpr hc2
          have hΦu : Phi u = Phi st := by rw [hu]; rfl
          refine Or.inr ⟨by simp, fun w h => ?_, fun rr hrr hna' => ?_⟩
          · simp only [Option.some.injEq] at h
            exact not_returned_of_abn habn w h
          · simp only [Option.some.injEq] at hrr
            subst hrr
            have hG2e : G guestC H Γ2 (callEntryStateHOLFinite u callee') :=
              (G_locFree hH u _ _).mpr hrunu.2.2.2.2.2.1
            obtain ⟨Γ3, p3, hrun3, -⟩ := run_callT_bk hH hsub0 hrunu hR' (good_of_abn habn) hna'
              (argsOK_any (any_sg1 []) (evs_one hvs'))
              ⟨(chain_locFree.entry _ _).mpr (chainX_chain hcu), by rw [phi_locFree.entry]; omega⟩
              (bkeep_exc_spec hF hG2e (chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee') rfl rfl (chainX_chain hcu).choose_spec) hE'
                (good_of_abn habn))
            exact ⟨Γ3, p3, runT_emptyLocals hH hrun3⟩
      · intro s _ hs vs hvs callee r' st hR _ habn _
        subst hs
        refine Or.inr ⟨by simp, fun w h => ?_, fun rr hrr hna' => ?_⟩
        · simp only [Option.some.injEq] at h
          exact not_returned_of_abn habn w h
        · simp only [Option.some.injEq] at hrr
          subst hrr
          obtain ⟨Γ2, p2, hrun2, -⟩ := hcall _ hkl vs (evs_zero hvs) callee _ st hR
            (good_of_abn habn) hna'
          exact ⟨Γ2, p2, runT_emptyLocals hH hrun2⟩
    · intro r t _ hr _ h rr hrr hna'
      subst hrr
      rcases h with ⟨h0, -⟩ | ⟨-, hnr, hk⟩
      · exact absurd h0 hr
      · exact dPostX_locals hH (dPostX_locals hH (Or.inr ⟨fun v h => hnr v (by rw [h]),
          hk rr rfl hna'⟩) _) _
    · refine hoareG_pre (P := KS) ?_ ?_
      rotate_left
      · rintro u - (⟨-, hk⟩ | ⟨h0, -⟩)
        · exact hk
        · exact absurd rfl h0
      refine hoareG_seq (R := fun ro u => ro = none ∧ KS u) ?_
        (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_ite ?_ ?_
        · refine hoareG_stG fun u _ ⟨hk, _⟩ G v hG' hv => ?_
          rw [ev_cw] at hv; cases hv
          refine ⟨_, rfl, fun _ => ⟨rfl, ?_⟩⟩
          obtain ⟨Γ1, p1, hrun1, hc1, hΦ1, hR1⟩ := hk
          obtain ⟨q, hrq, hcq, hΦq, hRq⟩ := done_writeX (gw := gw) (t := { u with memory :=
            (upd u.memory (G + BitVec.ofNat 64 32) (BitVec.ofNat 64 1)) }) hF hrun1.2.2.2.2.2.1 hc1
            hG' rfl rfl rfl rfl
          have hq : q = p1 := Option.some.inj (hrq.1.symm.trans hrun1.2.1)
          subst hq
          exact ⟨Γ1, q, runT_trans hrun1 hrq, hcq, by omega,
            rootK_trans hR1 hRq (chainOf_of_X hc1)⟩
        · exact hoareG_skip fun u _ ⟨hk, _⟩ => ⟨rfl, hk⟩
      · refine hoareG_return fun u _ ⟨_, hk⟩ v _ => ?_
        intro rr hrr _
        cases hrr
        exact dPostX_locals hH (dPostX_locals hH (Or.inl ⟨⟨_, rfl⟩, kLeX_locals hH hk _⟩) _) _
  obtain hP := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr hna
  rcases hP with ⟨⟨v, hv⟩, Γ', p', hrun, hch', hΦ', hR'⟩ | ⟨hnr, Γ', p', hrun⟩
  · exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sg0 gw) rfl rfl hrun, fun _ _ => ⟨hch', hΦ', hR'⟩⟩
  · exact ⟨Γ', p, p', sumCoreT_of_runT (sg := sg0 gw) rfl rfl hrun, fun v hv => absurd hv (hnr v)⟩

/-- **`frame_start` raises no `EvmErr`**: `frame_prologue`'s `EvmErr` is caught, the handler
`frame_exception` raises none, the rest ends with `return 0`. -/
theorem noEvm_fstart (hC : X.code.lookup = guestCode) (hE : NoEvm σ X (nm "frame_exception")) :
    NoEvm σ X (nm "frame_start") := by
  intro vs body callee rs hl s0 hs0 hloc r hr v hv
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_start hl
  have H0 : HoareG σ X (fun u => u = s0) startBody
      (fun ro _ => ∀ w, ro ≠ some (.exception nmEvmErr w)) := by
    refine hoareG_dec fun s1 _ _ v1 _ _ => ?_
    refine hoareG_dec fun s2 _ _ v2 _ _ => ?_
    refine hoareG_seq (R := fun ro _ => ro = none ∨ ∀ w, ro ≠ some (.exception nmEvmErr w))
      ?_ ?_ ?_
    · refine hoareG_callH (funSpec_true (nm "frame_prologue")) ?_ ?_ ?_
      · intro _ _ _ _ _ _ _ _ _ _
        exact ⟨fun _ => Or.inl rfl, fun _ _ _ _ => Or.inl rfl⟩
      · intro _ _ _ _ _ _ _ _ _ _
        refine hoareG_callD hE ?_ ?_
        · intro _ _ _ _ _ _ _ _ _ _
          exact Or.inl rfl
        · intro _ _ _ _ _ _ rr _ hR _ _
          exact Or.inr fun w h => hR w (Option.some.inj h)
      · intro _ _ _ _ _ _ rr _ _ _ _ hne
        refine Or.inr fun w h => ?_
        cases h
        exact hne w rfl
    · intro ro t _ hro _ h
      rcases h with h | h
      · exact absurd h hro
      · exact h
    · refine hoareG_seq (R := fun ro _ => ro = none) ?_ (fun _ _ _ hro _ h => absurd h hro) ?_
      · refine hoareG_ite ?_ ?_
        · exact hoareG_stG fun _ _ _ _ _ _ hv => ⟨_, by rw [ev_cw] at hv; exact (Option.some.inj hv).symm,
            fun _ => rfl⟩
        · exact hoareG_skip fun _ _ _ => rfl
      · exact hoareG_return fun _ _ _ _ _ w h => by cases h
  have := H0 s0 hs0 rfl (by rw [hr, hv]; simp [Good])
  rw [hr, hv] at this
  exact this v rfl

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.exc_stepX
#print axioms InitECandidate.Solver.MemSafe.Frames.done_writeX
#print axioms InitECandidate.Solver.MemSafe.Frames.start_sumSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.noEvm_fstart
