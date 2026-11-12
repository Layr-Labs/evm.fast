import InitECandidate.Solver.MemSafe.Frames.GcrSteps
import InitECandidate.Solver.MemSafe.Frames.BKeep2

/-!
# `generic_create`: the child (frames10, task 2)

From the state after `increment_nonce(sender_address)` (`KG … [sa, ca] cg`): the marks,
`child_message(sender_address, 0, contract_address, create_gas, …, msize, 1, 0, 0)` and
`start_child(cm, 2, …, contract_address)`, as in `generic_call` (`gc_main`) with the kind-2
target block: `PreSCT` from `gc_preSC` (kind 1) and `preSCT_kind2` (the `BufOK` of `cm + 32 = ca`),
`XPG` with `cm + 16 = sa` and `cm + 32 = ca` (both tracked in `KG`'s `Bs`).

* **`gcr_cmT`** (`gcrCM` from the marks), **`gcr_marks`** (from the two `*_mark` calls).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- The final facts for a result `r`: a run, and on a return or an `EvmErr` the extended chain
with `Φ ≤ Φ_entry + 2`. -/
def KFR (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∃ Γ' p', RunT guestC H gw Γ0 s0 Γ' t p0 p' ∧
    ((∃ v, r = .returned v) ∨ (∃ v, r = .exception nmEvmErr v) →
      ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s0 + 2 ∧ RootK s0 t)

/-- The post of `generic_create`'s body. -/
def QB (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → KFR H gw Γ0 s0 p0 r t

theorem kfr_of_kf {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {t : State σ} (h : KF H gw Γ0 s0 p0 t) (r : PanSemResultExact 64) : KFR H gw Γ0 s0 p0 r t :=
  let ⟨Γ', p', hrun, hx, hΦ, hRt⟩ := h; ⟨Γ', p', hrun, fun _ => ⟨hx, hΦ, hRt⟩⟩

theorem qb_of_kf {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : ∀ r, ro = some r → ¬ Abortive r → KF H gw Γ0 s0 p0 t) : QB H gw Γ0 s0 p0 ro t :=
  fun r hr hna => kfr_of_kf (h r hr hna) r

theorem qb_locF {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : QB H gw Γ0 s0 p0 ro t) (l : Locs) : QB H gw Γ0 s0 p0 ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', p', hrun, hx⟩ := h r hr hna
  exact ⟨Γ', p', runT_locals hH hrun l, fun h' => let ⟨a, b, k⟩ := hx h'
    ⟨(chainX_locFree t l t.clock).mpr a, by rw [phi_locFree.loc]; exact b,
      rootK_congr rfl rfl rfl rfl k⟩⟩

section
variable {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) (hFo : FoldOK σ X guestC H)
  (hK : Shards.GuestHooks H) (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
  {M : Nat} {gwS gw : List MlS}
  (hsc : SumSpecT σ X guestC H (nm "start_child") (sgSC gwS)
    (PreSCX guestC guestSt tEV tCK M NewPreG XPG) (QSCX guestC tEV tCK GP GR))
  (hgS : ∀ g, g ∈ (sgSC gwS).gw → g ∈ gw)
  {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
  (hfs : fs = (e, c) :: rest)
variable [Fact (ChainOf s0 fs)]
include hD hFo hK hMH hsc hgS hfs

/-- **`var cm = child_message(…); start_child(cm, 2, …); return 1`.** -/
theorem gcr_cmT {sa ca cg mz nac c1 b1 : BitVec 64} {u3 : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u3)
    (lsa : u3.locals.lookup (nm "sender_address") = some (.val (.word sa)))
    (lca : u3.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lcg : u3.locals.lookup (nm "create_gas") = some (.val (.word cg)))
    (lmz : u3.locals.lookup (nm "msize") = some (.val (.word mz)))
    (lnac : u3.locals.lookup (nm "new_account_charged") = some (.val (.word nac)))
    (lcm : u3.locals.lookup (nm "child_mark") = some (.val (.word c1)))
    (lcmm : u3.locals.lookup (nm "child_mem_mark") = some (.val (.word b1)))
    (hc1 : ∀ p, ptrsOf u3 = some p → c1.toNat = p.sp ∧ b1.toNat = p.fp)
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u3) gcrCM (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  obtain ⟨hJ3, Γ3, p1, hrun3, hch3, hE3, hΦ3, hB3, h16, h232⟩ := hu
  have hp3 := hrun3.2.1
  obtain ⟨hc1', hb1'⟩ := hc1 p1 hp3
  unfold gcrCM
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX (cm_sumSpec hFo hD.mono hMH)) (noExc_cm hFo.hX))
    ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨_, hnx⟩ _ habn
    refine fun r' hr' hna' => ?_
    cases hr'
    rcases hnx (good_of_abn habn) with ⟨w, rfl⟩ | hab
    · exact absurd rfl (not_returned_of_abn habn w)
    · exact absurd hab hna'
  intro s _ hs vs hvs callee v st ⟨hR, _⟩ _ _
  subst hs
  have hGe : G guestC H Γ3 (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hrun3.2.2.2.2.2.1
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p1 :=
    (ptrsOf_congr rfl).trans hp3
  have hch3e : ChainL guestC tEV tCK Γ3 (callEntryStateHOLFinite s callee) fs :=
    chainL_congr (s := s) (s' := callEntryStateHOLFinite s callee) rfl rfl hch3
  obtain ⟨e', c', rest', hfs', he0, -, -⟩ := hch3e.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch3.objs (e, c) (by rw [hfs]; simp)).1
  obtain ⟨⟨Mp, hMp, hMpb, hMpt, hMps⟩, -⟩ := hE3.1 p1 hp3 (e, c) (by rw [hfs]; simp)
  have hv7 : vs[7]? = some (.val (.word 0)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 7 (cw 0) rfl
    rw [ev_cw] at h2
    rw [h1, ← h2]
    rfl
  obtain ⟨Γ4, q3, p4, hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ3 hGe
    ⟨p1, hpe, argsOK_any (sgA_any 14 []) (by rw [evs_len hvs]; rfl)⟩
    ⟨⟨oe, ⟨hoe, hoet, by rw [show oe.base = e from hoeb]; exact he0⟩, Mp, hMp,
      (by show Mp.base = fld s.memory oe.base 112; rw [show oe.base = e from hoeb]; exact hMpb),
      hMpt, by omega⟩, 0, hv7, by decide⟩
  have hq31 : q3 = p1 := Option.some.inj (hc.1.symm.trans hpe)
  subst q3
  obtain ⟨Mm, rfl, hΓ4, hptr, hmod, hglob, h16c, h32c, h40c, h120c⟩ := hq v rfl
  have hval : ∀ (k : Nat) (x : MlS) (w : BitVec 64), s.locals.lookup x = some (.val (.word w)) →
      [lv (nm "sender_address"), cw 0, lv (nm "contract_address"), lv (nm "create_gas"),
        lv (nm "reservoir"), lv (nm "endowment"), lv (nm "empty"), cw 0, cw 0,
        lv (nm "call_data"), lv (nm "msize"), cw 1, cw 0, cw 0][k]? = some (lv x) →
      vs[k]? = some (.val (.word w)) := by
    intro k x w hx hk
    obtain ⟨v3, h1, h2⟩ := evs_get hvs k (lv x) hk
    rw [ev_lv, hx] at h2
    rw [h1, h2]
  have h16' := h16c sa (hval 0 _ _ lsa rfl)
  have h32' := h32c ca (hval 2 _ _ lca rfl)
  have h40' := h40c cg (hval 3 _ _ lcg rfl)
  have h120' := h120c mz (hval 10 _ _ lmz rfl)
  have hfp4 : p4.fp = p1.fp :=
    fpQ_of_fp (s := callEntryStateHOLFinite s callee) (t := st) (hglob _ (by decide)) p1 p4 hpe hc.2.1
  obtain ⟨hch4, hΦ4⟩ := chain_of_sumCore hFr (sgA_any 14 []) (by simp [sgA]) hGe hc hfp4 hch3e
  have hE4 : ChainE GP GR Γ4 st fs :=
    chainE_sumCoreM hFr xCfg_guest (by decide) (ks := []) (by simp) (by simp) hGe hc
      (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) (fun a _ h => h.elim) he0
      ⟨oe, hoe, hoeb, hoet⟩ (fun f hf => hch3.objs f hf) (chainE_congr (s := s) rfl rfl hE3)
  have hpk4 : ProtKeep guestC Γ3 (callEntryStateHOLFinite s callee) st := fun a ha =>
    sumCore_prot hc hGe (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) a ha id
  have hrun4 : RunT guestC H gw Γ0 s0 Γ4 st p0 p4 :=
    runT_trans hrun3 (runT_of_sumCore (fun g h => by simp [sgA] at h) hc
      (bkeep_congr (s := callEntryStateHOLFinite s callee) rfl rfl
        (bkeep_of_sumCore' hGe (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) hc
          (fun a h => absurd h.2 id))))
  obtain ⟨q3', hq3', hord3', hL3', -⟩ := hrun3.2.2.2.2.2.1
  rw [hp3, Option.some.injEq] at hq3'
  subst hq3'
  have hsz := ev_size hFr hL3' hoe hoet
  have hXA : XAbove Γ4 st.memory p1.sp p1.fp (e, c) :=
    xAbove_step hL3' hc.2.2.2.1 (xKeep_of_protKeepS hFr hL3' (protKeep_nst_of hpk4) ⟨oe, hoe, hoeb, hoet⟩)
      (xAbove_live hord3' hL3' (hE3.1 p1 hp3 (e, c) (by rw [hfs]; simp)))
  have hr : (guestC.ty oe.ty).region = .scratch := by rw [hoet]; decide
  have hm2 := (hptr p1 p4 hpe hc.2.1).2
  have keepE : ∀ k, k < 280 → fld st.memory e k = fld s.memory e k := by
    intro k hk
    rw [← show oe.base = e from hoeb]
    exact fld_mod hmod (out_blk hord3' hL3' hoe hr hm2 (by omega))
  have hspc : (fld st.memory e evSp).toNat < (fld st.memory e evStackCap).toNat := by
    rw [show evSp = 16 from rfl, show evStackCap = 232 from rfl, keepE 16 (by decide),
      keepE 232 (by decide), h16, h232]
    exact hsp0
  have hph3 : Phi (callEntryStateHOLFinite s callee) = Phi s := phi_locFree s _ _
  have hRw : ∀ callee0, RootK s0 (callEntryStateHOLFinite (setVarHOLFinite (nm "cm") (.val (.word Mm))
      { st with locals := s.locals }) callee0) := fun callee0 =>
    rootK_congr (s := s0) (t := st) rfl rfl rfl rfl (rootK_of_same Fact.out hch4.chain)
  have hchw0 : ∀ callee0, ChainOf (callEntryStateHOLFinite (setVarHOLFinite (nm "cm") (.val (.word Mm))
      { st with locals := s.locals }) callee0) fs := fun callee0 =>
    (chainL_congr (s := st) (s' := callEntryStateHOLFinite (setVarHOLFinite (nm "cm") (.val (.word Mm))
      { st with locals := s.locals }) callee0) rfl rfl hch4).chain
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => qb_locF hH h _)
  set w := setVarHOLFinite (nm "cm") (.val (.word Mm)) { st with locals := s.locals } with hwd
  have hrunW : RunT guestC H gw Γ0 s0 Γ4 w p0 p4 := runT_locals hH hrun4 _
  refine hoareG_pre (P := fun t => t = w) ?_ (fun t _ h => h)
  have lw : ∀ x, x ≠ nm "cm" → w.locals.lookup x = s.locals.lookup x := by
    intro x hx
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm hx)]
  have hevs : evs w [lv (nm "cm"), cw 2, lv (nm "child_mark"), lv (nm "child_mem_mark"),
      lv (nm "new_account_charged"), cw 0, cw 0, lv (nm "contract_address")] =
      some (scArgs Mm 2 c1 b1 nac 0 0 ca) := by
    refine evs_cons (ev_lv_eq (lk_set_self _ _ _)) (evs_cons (ev_cw _ 2) ?_)
    refine evs_cons (ev_lv_eq ?_) (evs_cons (ev_lv_eq ?_) (evs_cons (ev_lv_eq ?_)
      (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_lv_eq ?_) evs_nil)))))
    · exact (lw _ (by decide)).trans lcm
    · exact (lw _ (by decide)).trans lcmm
    · exact (lw _ (by decide)).trans lnac
    · exact (lw _ (by decide)).trans lca
  have hpreT : ∀ callee0, PreSCT guestC guestSt tEV tCK M NewPreG (scArgs Mm 2 c1 b1 nac 0 0 ca)
      (callEntryStateHOLFinite w callee0) Γ4 := by
    intro callee0
    have hch4' := hch4
    rw [hΓ4]
    have hG4 := hc.2.2.2.2.2.1
    rw [hΓ4] at hG4 hch4'
    have hb4 : ∀ p, ptrsOf (callEntryStateHOLFinite w callee0) = some p →
        BufOK guestC (Γ3 ++ [⟨Mm, tMSGs, 176⟩]) p
          (fld (callEntryStateHOLFinite w callee0).memory Mm 32).toNat 20 := by
      intro p hp
      have hp' : p = p4 := Option.some.inj (hp.symm.trans ((ptrsOf_congr rfl).trans hc.2.1))
      subst hp'
      show BufOK guestC _ p (fld st.memory Mm 32).toNat 20
      rw [h32', ← hΓ4]
      exact bufOK_sumCore hGe hc
        (hB3 ca (by simp))
    refine preSCT_kind2 (x := 0) (gc_preSC hK hFr hfs hrun3.2.2.2.2.2.1 hp3 hch3 hG4 hc.2.1
      (hptr p1 p4 hpe hc.2.1).1 hm2 hmod hglob hch4' h40' h120' (by omega) hspc (Or.inl rfl)
      (by omega) hJ3 hc1' hb1' rfl rfl) hb4
  have hpre : ∀ callee0, PreSCX guestC guestSt tEV tCK M NewPreG XPG
      (scArgs Mm 2 c1 b1 nac 0 0 ca) (callEntryStateHOLFinite w callee0) Γ4 := by
    intro callee0
    refine preSCX_of (hpreT callee0) ?_
    intro cm kind cmark cmm nac' os' osz' ca' fs' hvs' hch'
    simp only [scArgs, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
    obtain ⟨rfl, -, rfl, rfl, -⟩ := hvs'
    have hchw : ChainL guestC tEV tCK Γ4 (callEntryStateHOLFinite w callee0) fs :=
      chainL_congr (s := st) (s' := callEntryStateHOLFinite w callee0) rfl rfl hch4
    have hfs'' := chainOf_unique hch'.chain hchw.chain
    subst fs'
    refine ⟨chainE_congr (s := st) rfl rfl hE4, ⟨⟨Mm, tMSGs, 176⟩, by rw [hΓ4]; simp, rfl, Or.inr rfl,
      le_refl _⟩, fun p' hp' k hk => ?_, fun f hf => ?_⟩
    · have hp4' : p' = p4 := Option.some.inj (hp'.symm.trans hc.2.1)
      subst p'
      have hBt : ∀ b, b ∈ [sa, ca] → BufOK guestC Γ4 p4 b.toNat 20 := fun b hb =>
        bufOK_sumCore hGe hc (hB3 b hb)
      simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · show BufOK guestC Γ4 p4 (fld st.memory Mm 16).toNat 20
        rw [h16']; exact hBt sa (by simp)
      · show BufOK guestC Γ4 p4 (fld st.memory Mm 32).toNat 20
        rw [h32']; exact hBt ca (by simp)
    · rw [hfs] at hf
      simp only [List.head?_cons, Option.some.injEq] at hf
      subst hf
      rw [hc1', hb1']
      exact hXA
  refine hoareG_seq (R := fun r t => (r = none ∧ KF H gw Γ0 s0 p0 t) ∨ (r ≠ none ∧ QB H gw Γ0 s0 p0 r t))
    ?_ (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD hsc ?_ ?_
    · intro t _ ht vs' hvs' callee0 v' st5 hR5 _
      subst ht
      rw [hevs] at hvs'
      cases hvs'
      obtain ⟨Γ5, p5, hrun5, -, hq5⟩ := run_callT hH hgS hrunW hR5 (by simp [Good])
        (not_abortive_ret v') (argsOK_any (by intro pt h; simp at h; exact h) rfl)
        (hpre callee0) (fun a h => h)
      obtain ⟨hc5, hΦ5, hRt5⟩ := (hq5 Mm rfl).1 v' rfl
      have hphw : Phi (callEntryStateHOLFinite w callee0) = Phi st :=
        phi_congrMG (s := st) rfl rfl
      have h40w : fld (callEntryStateHOLFinite w callee0).memory Mm 40 = cg := h40'
      rw [hphw, h40w] at hΦ5
      have hph5 : Phi { st5 with locals := w.locals } = Phi st5 := phi_locFree st5 _ _
      refine Or.inl ⟨rfl, Γ5, p5, runT_locals hH hrun5 _, chainX_locFree.loc st5 _ |>.mpr hc5, ?_,
        rootK_congr (s := s0) (t := st5) rfl rfl rfl rfl
          (rootK_trans (hRw callee0) hRt5 ⟨fs, hchw0 callee0⟩)⟩
      rw [hph5]
      omega
    · intro t _ ht vs' hvs' callee0 r5 st5 hR5 _ habn
      subst ht
      rw [hevs] at hvs'
      cases hvs'
      refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
      cases hr'
      obtain ⟨Γ5, p5, hrun5, -, hq5⟩ := run_callT hH hgS hrunW hR5 (good_of_abn habn)
        hna' (argsOK_any (by intro pt h; simp at h; exact h) rfl) (hpre callee0)
        (fun a h => h)
      have hphw : Phi (callEntryStateHOLFinite w callee0) = Phi st :=
        phi_congrMG (s := st) rfl rfl
      have hpe5 : Phi (emptyLocalsHOLFinite st5) = Phi st5 := phi_locFree st5 _ _
      refine ⟨Γ5, p5, runT_emptyLocals hH hrun5, fun hk => ?_⟩
      rcases hk with ⟨v, hv⟩ | ⟨v, hv⟩
      · exact absurd hv (not_returned_of_abn habn v)
      obtain ⟨hc5, hΦ5, hRt5⟩ := (hq5 Mm rfl).2 v hv
      refine ⟨chainX_congr (s := st5) (s' := emptyLocalsHOLFinite st5) rfl rfl hc5, ?_,
        rootK_congr (s := s0) (t := st5) rfl rfl rfl rfl
          (rootK_trans (hRw callee0) hRt5 ⟨fs, hchw0 callee0⟩)⟩
      rw [hpe5, hΦ5, hphw]
      omega
  · refine hoareG_return fun t _ h v _ => ?_
    rcases h with ⟨-, Γ5, p5, hrun5, hc5, hΦ5, hR5⟩ | ⟨h, -⟩
    · have hpe5 : Phi (emptyLocalsHOLFinite t) = Phi t := phi_locFree t _ _
      exact fun _ _ _ => ⟨Γ5, p5, runT_emptyLocals hH hrun5, fun _ =>
        ⟨chainX_congr (s := t) (s' := emptyLocalsHOLFinite t) rfl rfl hc5, by rw [hpe5]; exact hΦ5,
          rootK_congr (s := s0) (t := t) rfl rfl rfl rfl hR5⟩⟩
    · exact absurd rfl h

/-- **`var child_mark = scratch_mark(); var child_mem_mark = frame_mem_mark(); …`.** -/
theorem gcr_marks {sa ca cg mz nac : BitVec 64} {u : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u)
    (lsa : u.locals.lookup (nm "sender_address") = some (.val (.word sa)))
    (lca : u.locals.lookup (nm "contract_address") = some (.val (.word ca)))
    (lcg : u.locals.lookup (nm "create_gas") = some (.val (.word cg)))
    (lmz : u.locals.lookup (nm "msize") = some (.val (.word mz)))
    (lnac : u.locals.lookup (nm "new_account_charged") = some (.val (.word nac)))
    (hmz : mz.toNat ≤ 131072)
    (hsp0 : (fld s0.memory e evSp).toNat < (fld s0.memory e evStackCap).toNat)
    (hΦM : Phi s0 + 2 ≤ M) :
    HoareG σ X (fun t => t = u)
      (.decCall (nm "child_mark") .one (nm "scratch_mark") []
        (.decCall (nm "child_mem_mark") .one (nm "frame_mem_mark") [] gcrCM))
      (QB H gw Γ0 s0 p0) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  refine hoareG_decCall (FunSpec.and (markSpec'_scratch_mark hFo.hX) (funSpec_dom _)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    subst hs
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) (evs_zero hvs)
    exact qb_of_kf fun _ _ _ => kf_of_kg (kg_same hH hu (t := emptyLocalsHOLFinite st) hm hg hd hbe)
  intro s _ hs vs hvs callee v1 st1 ⟨hR1, hd1, hbe1⟩ _ _
  subst hs
  obtain ⟨hm1, hg1, hret1⟩ := hR1 (by simp [Good]) (evs_zero hvs)
  obtain ⟨-, Γ1, p1, hrun1, -⟩ := id hu
  obtain ⟨a1, b1, c1, -, hb1, hc1, hpe1⟩ := ptrsOf_parts hrun1.2.1
  have hv1 := mark_val_word (hret1 v1 rfl) (s := callEntryStateHOLFinite _ callee) hc1
  subst hv1
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => qb_locF hH h _)
  set u2 := setVarHOLFinite (nm "child_mark") (.val (.word c1)) { st1 with locals := s.locals }
    with hu2d
  have hu2 : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u2 := kg_same hH hu hm1 hg1 hd1 hbe1
  refine hoareG_pre (P := fun t => t = u2) ?_ (fun t _ h => h)
  refine hoareG_decCall (FunSpec.and (markSpec'_frame_mem_mark hFo.hX) (funSpec_dom _)) ?_ ?_
  rotate_left
  · intro s' _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    subst hs
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) (evs_zero hvs)
    exact qb_of_kf fun _ _ _ => kf_of_kg (kg_same hH hu2 (t := emptyLocalsHOLFinite st) hm hg hd hbe)
  intro s' _ hs vs hvs callee v2 st2 ⟨hR2, hd2, hbe2⟩ _ _
  subst hs
  obtain ⟨hm2, hg2, hret2⟩ := hR2 (by simp [Good]) (evs_zero hvs)
  have hgf : gword (callEntryStateHOLFinite u2 callee) gFrame = some b1 := by
    rw [← hb1]; exact gword_congr hg1 gFrame
  have hv2 := mark_val_word (hret2 v2 rfl) hgf
  subst hv2
  refine hoareG_conseq (Q := QB H gw Γ0 s0 p0) ?_ (fun _ _ h => h)
    (fun r t _ _ h => qb_locF hH h _)
  set u3 := setVarHOLFinite (nm "child_mem_mark") (.val (.word b1)) { st2 with locals := u2.locals }
    with hu3d
  have hu3 : KG H gw Γ0 s0 p0 fs e [sa, ca] cg.toNat u3 := kg_same hH hu2 hm2 hg2 hd2 hbe2
  have hp3 : ptrsOf u3 = some p1 := by
    rw [ptrsOf_congr (show u3.globals = st1.globals from hg2.trans rfl)]
    rw [ptrsOf_congr hg1]; exact hrun1.2.1
  have L : ∀ x, x ≠ nm "child_mark" → x ≠ nm "child_mem_mark" →
      u3.locals.lookup x = s.locals.lookup x := by
    intro x h1 h2
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm h2)]
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (Ne.symm h1)]
  refine hoareG_pre (P := fun t => t = u3) ?_ (fun t _ h => h)
  refine gcr_cmT hD hFo hK hMH hsc hgS hfs (c1 := c1) hu3 ((L _ (by decide) (by decide)).trans lsa)
    ((L _ (by decide) (by decide)).trans lca) ((L _ (by decide) (by decide)).trans lcg)
    ((L _ (by decide) (by decide)).trans lmz) ((L _ (by decide) (by decide)).trans lnac) ?_
    (lk_set_self _ _ _) ?_ hmz hsp0 hΦM
  · show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  · intro p hp
    rw [hp3, Option.some.injEq] at hp
    subst hp
    rw [hpe1]
    exact ⟨rfl, rfl⟩

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_cmT
#print axioms InitECandidate.Solver.MemSafe.Frames.gcr_marks
