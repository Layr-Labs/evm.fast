import InitECandidate.Solver.MemSafe.Frames.GcPre
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `generic_call`'s summary (task b)

**`gc_sumSpecT`**: `generic_call` has the footprint-free summary with precondition `PreGC` and
post `QGC`, from `start_child`'s summary (`sc_sumSpecT_guest*`), the fold's `GuestHooks`, the
`set_retdata` hooks (`RdHooks`), message objects unhooked, and the `KeepsFp` facts of
`set_retdata` / `stack_push`.

* the prefix: `set_retdata(evm_empty, 0)` (`sd_spec`, chain kept by `pa_coreX` with the RETDATA
  slots re-established), `msg = EV_MSG`;
* the depth-limit path (`gc_depth`);
* the main path (`gc_main`): `scratch_mark` / `frame_mem_mark`, `child_message` (`cm_sumSpec`,
  the chain kept by `chain_of_sumCore`), `start_child` with `PreSCT` from `gc_preSC`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

theorem evs_get {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → ∀ (i : Nat) (e : ExpHOL 64), es[i]? = some e →
      ∃ v, vs[i]? = some v ∧ ev s e = some v
  | [], vs, _, i, e, he => by simp at he
  | a :: es, vs, h, i, e, he => by
      obtain ⟨v, vs', rfl, hv, h'⟩ := evs_cons_inv h
      cases i with
      | zero =>
          simp only [List.getElem?_cons_zero, Option.some.injEq] at he
          subst he
          exact ⟨v, rfl, hv⟩
      | succ i =>
          simp only [List.getElem?_cons_succ] at he ⊢
          exact evs_get h' i e he

theorem evs_len {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → vs.length = es.length
  | [], vs, h => by rw [evs_zero h]; rfl
  | a :: es, vs, h => by
      obtain ⟨v, vs', rfl, -, h'⟩ := evs_cons_inv h
      simp [evs_len h']

/-- The tracked facts after the prefix. -/
def GA (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s0 : State σ) (p : Ptrs) (fs : List Frame)
    (e0 : BitVec 64) (u : State σ) : Prop :=
  (∀ x ∈ gcNames, u.locals.lookup x = s0.locals.lookup x) ∧ JrNZ u ∧
  ∃ Γ1 p1, RunT guestC H gw Γ s0 Γ1 u p p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧ Phi u ≤ Phi s0 ∧
    (∀ k ∈ [16, 32, 232], fld u.memory e0 k = fld s0.memory e0 k) ∧ ChainE GP GR Γ1 u fs ∧
    RootK s0 u

theorem ga_same {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ : Gam}
    {s0 u t : State σ} {p : Ptrs} {fs : List Frame} {e0 : BitVec 64}
    (h : GA H gw Γ s0 p fs e0 u) (hl : ∀ x ∈ gcNames, t.locals.lookup x = u.locals.lookup x)
    (hm : t.memory = u.memory) (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs)
    (hbe : t.be = u.be) : GA H gw Γ s0 p fs e0 t := by
  obtain ⟨hlf, hJ, Γ1, p1, hrun, hch, hΦ, hk, hE, hRt⟩ := h
  exact ⟨fun x hx => (hl x hx).trans (hlf x hx), jrNZ_congr hg hJ, Γ1, p1,
    runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch, by rw [phi_congrMG hm hg]; exact hΦ,
    fun k hk' => by rw [hm]; exact hk k hk', chainE_congr hm hg hE,
    rootK_congr rfl rfl hm hg hRt⟩

theorem gpost_of_ga {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ : Gam}
    {s0 u t : State σ} {p : Ptrs} {fs : List Frame} {e0 : BitVec 64} {gas : BitVec 64}
    (h : GA H gw Γ s0 p fs e0 u) (hm : t.memory = u.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) (r : PanSemResultExact 64) :
    GPost H gw Γ s0 p gas (some r) t := by
  obtain ⟨-, -, Γ1, p1, hrun, hch, hΦ, -, hE, hRt⟩ := h
  exact gpost_of (runT_same hH hrun hm hg hd hbe) ⟨fs, chainL_congr hm hg hch, chainE_congr hm hg hE⟩
    (by rw [phi_congrMG hm hg]; omega) (rootK_congr rfl rfl hm hg hRt) r

theorem gc_names_set {x : MlS} (hx : x ∉ gcNames) {s : State σ} (v : ValueHOL 64) :
    ∀ y ∈ gcNames, (setVarHOLFinite x v s).locals.lookup y = s.locals.lookup y :=
  fun y hy => lk_set_ne _ _ (fun h => hx (h ▸ hy))

/-- **The main path of `generic_call`.** -/
theorem gc_main {H : Hooks σ} {M : Nat} (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hK : Shards.GuestHooks H) (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
    {gwS : List MlS}
    (hsc : SumSpecT σ X guestC H (nm "start_child") (sgSC gwS)
      (PreSCX guestC guestSt tEV tCK M NewPreG XPG) (QSCX guestC tEV tCK GP GR))
    {Γ : Gam} {s0 : State σ} {p : Ptrs} {fs : List Frame} {e0 c0 : BitVec 64}
    {rest : List Frame} (hfs : fs = (e0, c0) :: rest) {gas cn os osz isz nac : BitVec 64}
    (hG0 : G guestC H Γ s0) (hps0 : ptrsOf s0 = some p) {caller tgt : BitVec 64}
    (lcaller : s0.locals.lookup (nm "caller") = some (.val (.word caller)))
    (lto : s0.locals.lookup (nm "to") = some (.val (.word tgt)))
    (hbuf : BufOK guestC Γ p caller.toNat 20 ∧ BufOK guestC Γ p tgt.toNat 20)
    (lgas : s0.locals.lookup (nm "gas") = some (.val (.word gas)))
    (lcn : s0.locals.lookup (nm "code_n") = some (.val (.word cn)))
    (los : s0.locals.lookup (nm "out_start") = some (.val (.word os)))
    (losz : s0.locals.lookup (nm "out_size") = some (.val (.word osz)))
    (lisz : s0.locals.lookup (nm "in_size") = some (.val (.word isz)))
    (lnac : s0.locals.lookup (nm "new_account_charged") = some (.val (.word nac)))
    (hsp0 : (fld s0.memory e0 evSp).toNat < (fld s0.memory e0 evStackCap).toNat)
    (hout0 : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s0.memory e0 evMemLen).toNat)
    (hisz : isz.toNat < 2 ^ 32)
    (hΦM : Phi s0 + gas.toNat + 2 ≤ M) (hcn : cn.toNat + 63 < 2 ^ 64) :
    HoareG σ X (GA H (nmEv :: nmCC :: gwS) Γ s0 p fs e0) gcMain
      (GPost H (nmEv :: nmCC :: gwS) Γ s0 p gas) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  let gw := nmEv :: nmCC :: gwS
  unfold gcMain
  -- `var call_data = …`
  refine hoareG_dec fun u _ hu vcd _ _ => ?_
  refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
    (fun r t _ _ h => gpost_locals hH h _)
  have hu1 : GA H gw Γ s0 p fs e0 (setVarHOLFinite (nm "call_data") vcd u) :=
    ga_same hH hu (gc_names_set (by decide) vcd) rfl rfl rfl rfl
  refine hoareG_pre (P := fun t => t = setVarHOLFinite (nm "call_data") vcd u) ?_ (fun t _ h => h)
  -- `var child_mark = scratch_mark()`
  refine hoareG_decCall (FunSpec.and (markSpec'_scratch_mark hF.hX) (funSpec_dom _)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    subst hs
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) (evs_zero hvs)
    exact gpost_of_ga (gas := gas) (t := emptyLocalsHOLFinite st) hH hu1 hm hg hd hbe r
  intro s _ hs vs hvs callee v1 st1 ⟨hR1, hd1, hbe1⟩ _ _
  subst hs
  obtain ⟨hm1, hg1, hret1⟩ := hR1 (by simp [Good]) (evs_zero hvs)
  obtain ⟨-, -, Γ1, p1, hrun1, -, -, -, -, -⟩ := id hu1
  obtain ⟨a1, b1, c1, -, hb1, hc1, hpe1⟩ := ptrsOf_parts hrun1.2.1
  have hv1 := mark_val_word (hret1 v1 rfl) (s := callEntryStateHOLFinite _ callee) hc1
  subst hv1
  refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
    (fun r t _ _ h => gpost_locals hH h _)
  set u2 := setVarHOLFinite (nm "child_mark") (.val (.word c1))
    { st1 with locals := (setVarHOLFinite (nm "call_data") vcd u).locals } with hu2d
  have hu2 : GA H gw Γ s0 p fs e0 u2 :=
    ga_same hH hu1 (gc_names_set (by decide) _) hm1 hg1 hd1 hbe1
  refine hoareG_pre (P := fun t => t = u2) ?_ (fun t _ h => h)
  -- `var child_mem_mark = frame_mem_mark()`
  refine hoareG_decCall (FunSpec.and (markSpec'_frame_mem_mark hF.hX) (funSpec_dom _)) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    subst hs
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) (evs_zero hvs)
    exact gpost_of_ga (gas := gas) (t := emptyLocalsHOLFinite st) hH hu2 hm hg hd hbe r
  intro s _ hs vs hvs callee v2 st2 ⟨hR2, hd2, hbe2⟩ _ _
  subst hs
  obtain ⟨hm2, hg2, hret2⟩ := hR2 (by simp [Good]) (evs_zero hvs)
  have hgf : gword (callEntryStateHOLFinite u2 callee) gFrame = some b1 := by
    rw [← hb1]; exact gword_congr hg1 gFrame
  have hv2 := mark_val_word (hret2 v2 rfl) hgf
  subst hv2
  refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
    (fun r t _ _ h => gpost_locals hH h _)
  set u3 := setVarHOLFinite (nm "child_mem_mark") (.val (.word b1)) { st2 with locals := u2.locals }
    with hu3d
  have hu3 : GA H gw Γ s0 p fs e0 u3 :=
    ga_same hH hu2 (gc_names_set (by decide) _) hm2 hg2 hd2 hbe2
  have hp3 : ptrsOf u3 = some p1 := by
    rw [ptrsOf_congr (show u3.globals = st1.globals from hg2.trans rfl)]
    rw [ptrsOf_congr hg1]; exact hrun1.2.1
  have hl3 : ∀ x ∈ gcNames, u3.locals.lookup x = s0.locals.lookup x := hu3.1
  have lcm3 : u3.locals.lookup (nm "child_mark") = some (.val (.word c1)) := by
    show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  have lcmm3 : u3.locals.lookup (nm "child_mem_mark") = some (.val (.word b1)) := lk_set_self _ _ _
  refine hoareG_pre (P := fun t => t = u3) ?_ (fun t _ h => h)
  -- `var cm = child_message(…)`
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX (cm_sumSpec hF hD.mono hMH)) (noExc_cm hF.hX))
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
  obtain ⟨-, hJ3, Γ3, p3, hrun3, hch3, hΦ3, hk3, hE3, hRt3⟩ := id hu3
  have hp31 : p3 = p1 := Option.some.inj (hrun3.2.1.symm.trans hp3)
  subst p3
  have hGe : G guestC H Γ3 (callEntryStateHOLFinite u3 callee) :=
    (G_locFree hH u3 _ _).mpr hrun3.2.2.2.2.2.1
  have hpe : ptrsOf (callEntryStateHOLFinite u3 callee) = some p1 :=
    (ptrsOf_congr rfl).trans hrun3.2.1
  have hch3e : ChainL guestC tEV tCK Γ3 (callEntryStateHOLFinite u3 callee) fs :=
    chainL_congr (s := u3) (s' := callEntryStateHOLFinite u3 callee) rfl rfl hch3
  obtain ⟨e', c', rest', hfs', he0, -, -⟩ := hch3.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch3.objs (e0, c0) (by rw [hfs]; simp)).1
  obtain ⟨⟨Mp, hMp, hMpb, hMpt, hMps⟩, -⟩ := hE3.1 p1 hrun3.2.1 (e0, c0) (by rw [hfs]; simp)
  have hv7 : vs[7]? = some (.val (.word isz)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 7 (lv (nm "in_size")) rfl
    rw [ev_lv, hl3 _ (by decide), lisz] at h2
    rw [h1, h2]
  obtain ⟨Γ4, q3, p4, hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ3 hGe
    ⟨p1, hpe, argsOK_any (sgA_any 14 []) (by rw [evs_len hvs]; rfl)⟩
    ⟨⟨oe, ⟨hoe, hoet, by rw [show oe.base = e0 from hoeb]; exact he0⟩, Mp, hMp,
      (by show Mp.base = fld u3.memory oe.base 112; rw [show oe.base = e0 from hoeb]; exact hMpb),
      hMpt, by omega⟩, isz, hv7, hisz⟩
  have hq31 : q3 = p1 := Option.some.inj (hc.1.symm.trans hpe)
  subst q3
  obtain ⟨Mm, rfl, hΓ4, hptr, hmod, hglob, h16, h32, h40, h120⟩ := hq v rfl
  have hv0 : vs[0]? = some (.val (.word caller)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 0 (lv (nm "caller")) rfl
    rw [ev_lv, hl3 _ (by decide), lcaller] at h2
    rw [h1, h2]
  have hv2 : vs[2]? = some (.val (.word tgt)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 2 (lv (nm "to")) rfl
    rw [ev_lv, hl3 _ (by decide), lto] at h2
    rw [h1, h2]
  have h16' := h16 caller hv0
  have h32' := h32 tgt hv2
  have hv3 : vs[3]? = some (.val (.word gas)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 3 (lv (nm "gas")) rfl
    rw [ev_lv, hl3 _ (by decide), lgas] at h2
    rw [h1, h2]
  have hv10 : vs[10]? = some (.val (.word cn)) := by
    obtain ⟨v3, h1, h2⟩ := evs_get hvs 10 (lv (nm "code_n")) rfl
    rw [ev_lv, hl3 _ (by decide), lcn] at h2
    rw [h1, h2]
  have h40' := h40 gas hv3
  have h120' := h120 cn hv10
  have hfp4 : p4.fp = p1.fp :=
    fpQ_of_fp (s := callEntryStateHOLFinite u3 callee) (t := st) (hglob _ (by decide)) p1 p4 hpe hc.2.1
  obtain ⟨hch4, hΦ4⟩ := chain_of_sumCore hFr (sgA_any 14 []) (by simp [sgA]) hGe hc hfp4 hch3e
  have hE4 : ChainE GP GR Γ4 st fs :=
    chainE_sumCoreM hFr xCfg_guest (by decide) (ks := []) (by simp) (by simp) hGe hc
      (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) (fun a _ h => h.elim) he0
      ⟨oe, hoe, hoeb, hoet⟩ (fun f hf => hch3.objs f hf) (chainE_congr (s := u3) rfl rfl hE3)
  have hpk4 : ProtKeep guestC Γ3 (callEntryStateHOLFinite u3 callee) st := fun a ha =>
    sumCore_prot hc hGe (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) a ha id
  have hrun4 : RunT guestC H gw Γ s0 Γ4 st p p4 :=
    runT_trans hrun3 (runT_of_sumCore (fun g h => by simp [sgA] at h) hc
      (bkeep_congr (s := callEntryStateHOLFinite u3 callee) rfl rfl
        (bkeep_of_sumCore' hGe (fun a ha => absurd ha (argCells_any (sgA_any 14 []))) hc
          (fun a h => absurd h.2 id))))
  obtain ⟨q3', hq3', hord3', hL3', -⟩ := hrun3.2.2.2.2.2.1
  rw [hrun3.2.1, Option.some.injEq] at hq3'
  subst hq3'
  have hsz := ev_size hFr hL3' hoe hoet
  have hXA : XAbove Γ4 st.memory p1.sp p1.fp (e0, c0) :=
    xAbove_step hL3' hc.2.2.2.1 (xKeep_of_protKeepS hFr hL3' (protKeep_nst_of hpk4) ⟨oe, hoe, hoeb, hoet⟩)
      (xAbove_live hord3' hL3' (hE3.1 p1 hrun3.2.1 (e0, c0) (by rw [hfs]; simp)))
  have hr : (guestC.ty oe.ty).region = .scratch := by rw [hoet]; decide
  have hm2 := (hptr p1 p4 hpe hc.2.1).2
  have keepE : ∀ k, k < 280 → fld st.memory e0 k = fld u3.memory e0 k := by
    intro k hk
    rw [← show oe.base = e0 from hoeb]
    exact fld_mod hmod (out_blk hord3' hL3' hoe hr hm2 (by omega))
  have hspc : (fld st.memory e0 evSp).toNat < (fld st.memory e0 evStackCap).toNat := by
    rw [show evSp = 16 from rfl, show evStackCap = 232 from rfl, keepE 16 (by decide),
      keepE 232 (by decide), hk3 16 (by simp), hk3 232 (by simp)]
    exact hsp0
  have houtc : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld st.memory e0 evMemLen).toNat := by
    rw [show evMemLen = 32 from rfl, keepE 32 (by decide), hk3 32 (by simp)]
    exact hout0
  have hph3 : Phi (callEntryStateHOLFinite u3 callee) = Phi u3 := phi_locFree u3 _ _
  refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
    (fun r t _ _ h => gpost_locals hH h _)
  set w := setVarHOLFinite (nm "cm") (.val (.word Mm)) { st with locals := u3.locals } with hwd
  have hrunW : RunT guestC H gw Γ s0 Γ4 w p p4 := runT_locals hH hrun4 _
  refine hoareG_pre (P := fun t => t = w) ?_ (fun t _ h => h)
  have lw : ∀ x ∈ gcNames, w.locals.lookup x = s0.locals.lookup x := by
    intro x hx
    show (setVarHOLFinite _ _ _).locals.lookup x = _
    rw [lk_set_ne _ _ (fun h => absurd (h ▸ hx) (by decide))]
    exact hl3 x hx
  have hevs : evs w [lv (nm "cm"), cw 1, lv (nm "child_mark"), lv (nm "child_mem_mark"),
      lv (nm "new_account_charged"), lv (nm "out_start"), lv (nm "out_size"), cw 0] =
      some (scArgs Mm 1 c1 b1 nac os osz 0) := by
    refine evs_cons (ev_lv_eq (lk_set_self _ _ _)) (evs_cons (ev_cw _ 1) ?_)
    refine evs_cons (ev_lv_eq ?_) (evs_cons (ev_lv_eq ?_) (evs_cons (ev_lv_eq ?_)
      (evs_cons (ev_lv_eq ?_) (evs_cons (ev_lv_eq ?_) (evs_cons (ev_cw _ 0) evs_nil)))))
    · show (setVarHOLFinite _ _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact lcm3
    · show (setVarHOLFinite _ _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact lcmm3
    · exact (lw _ (by decide)).trans lnac
    · exact (lw _ (by decide)).trans los
    · exact (lw _ (by decide)).trans losz
  have hpreT : ∀ callee0, PreSCT guestC guestSt tEV tCK M NewPreG (scArgs Mm 1 c1 b1 nac os osz 0)
      (callEntryStateHOLFinite w callee0) Γ4 := by
    intro callee0
    have hch4' := hch4
    rw [hΓ4]
    have hG4 := hc.2.2.2.2.2.1
    rw [hΓ4] at hG4 hch4'
    refine gc_preSC hK hFr hfs hrun3.2.2.2.2.2.1 hrun3.2.1 hch3 hG4 hc.2.1
      (hptr p1 p4 hpe hc.2.1).1 hm2 hmod hglob hch4' h40' h120' hcn hspc houtc (by omega) hJ3
      (by rw [hpe1]) (by rw [hpe1]) rfl rfl
  have hRw : ∀ callee0, RootK s0 (callEntryStateHOLFinite w callee0) := fun callee0 =>
    rootK_congr (s := s0) (t := st) rfl rfl rfl rfl
      (rootK_trans hRt3 (rootK_of_same hch3.chain hch4.chain) ⟨_, hch3.chain⟩)
  have hchw0 : ∀ callee0, ChainOf (callEntryStateHOLFinite w callee0) fs := fun callee0 =>
    (chainL_congr (s := st) (s' := callEntryStateHOLFinite w callee0) rfl rfl hch4).chain
  have hc1 : c1.toNat = p1.sp := by rw [hpe1]
  have hb1' : b1.toNat = p1.fp := by rw [hpe1]
  have hpre : ∀ callee0, PreSCX guestC guestSt tEV tCK M NewPreG XPG
      (scArgs Mm 1 c1 b1 nac os osz 0) (callEntryStateHOLFinite w callee0) Γ4 := by
    intro callee0
    refine preSCX_of (hpreT callee0) ?_
    intro cm kind cmark cmm nac' os' osz' ca fs' hvs' hch'
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
      simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · show BufOK guestC Γ4 p4 (fld st.memory Mm 16).toNat 20
        rw [h16']; exact bufOK_runT hG0 hrun4 hbuf.1
      · show BufOK guestC Γ4 p4 (fld st.memory Mm 32).toNat 20
        rw [h32']; exact bufOK_runT hG0 hrun4 hbuf.2
    · rw [hfs] at hf
      simp only [List.head?_cons, Option.some.injEq] at hf
      subst hf
      rw [hc1, hb1']
      exact hXA
  refine hoareG_seq (R := fun r t => (r = none ∧ ∃ Γ5 p5, RunT guestC H gw Γ s0 Γ5 t p p5 ∧
      ChainX guestC tEV tCK GP GR Γ5 t ∧ Phi t ≤ Phi s0 + gas.toNat + 2 ∧ RootK s0 t) ∨
      (r ≠ none ∧ GPost H gw Γ s0 p gas r t)) ?_
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD hsc ?_ ?_
    · intro t _ ht vs' hvs' callee0 v' st5 hR5 _
      subst ht
      rw [hevs] at hvs'
      cases hvs'
      obtain ⟨Γ5, p5, hrun5, -, hq5⟩ := run_callT hH (fun g h => h) hrunW hR5 (by simp [Good])
        (not_abortive_ret v') (argsOK_any (by intro pt h; simp at h; exact h) rfl)
        (hpre callee0) (fun a h => h)
      obtain ⟨hc5, hΦ5, hRt5⟩ := (hq5 Mm rfl).1 v' rfl
      have hphw : Phi (callEntryStateHOLFinite w callee0) = Phi st :=
        phi_congrMG (s := st) rfl rfl
      have h40w : fld (callEntryStateHOLFinite w callee0).memory Mm 40 = gas := h40'
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
      obtain ⟨Γ5, p5, hrun5, -, hq5⟩ := run_callT hH (fun g h => h) hrunW hR5 (good_of_abn habn)
        hna' (argsOK_any (by intro pt h; simp at h; exact h) rfl) (hpre callee0) (fun a h => h)
      have hphw : Phi (callEntryStateHOLFinite w callee0) = Phi st :=
        phi_congrMG (s := st) rfl rfl
      have hpe5 : Phi (emptyLocalsHOLFinite st5) = Phi st5 := phi_locFree st5 _ _
      refine ⟨Γ5, p5, runT_emptyLocals hH hrun5, fun v hv => absurd hv
        (not_returned_of_abn habn v), fun v hv => ?_⟩
      obtain ⟨hc5, hΦ5, hRt5⟩ := (hq5 Mm rfl).2 v hv
      refine ⟨chainX_congr (s := st5) (s' := emptyLocalsHOLFinite st5) rfl rfl hc5, ?_,
        rootK_congr (s := s0) (t := st5) rfl rfl rfl rfl
          (rootK_trans (hRw callee0) hRt5 ⟨fs, hchw0 callee0⟩)⟩
      rw [hpe5, hΦ5, hphw]
      omega
  · refine hoareG_return fun t _ h v _ => ?_
    rcases h with ⟨-, Γ5, p5, hrun5, hc5, hΦ5, hRt5⟩ | ⟨h, -⟩
    · have hpe5 : Phi (emptyLocalsHOLFinite t) = Phi t := phi_locFree t _ _
      exact gpost_of (runT_emptyLocals hH hrun5)
        (chainX_congr (s := t) (s' := emptyLocalsHOLFinite t) rfl rfl hc5) (by rw [hpe5]; exact hΦ5)
        (rootK_congr (s := s0) (t := t) rfl rfl rfl rfl hRt5) _
    · exact absurd rfl h

/-- **`generic_call`'s summary** (task b). -/
theorem gc_sumSpecT {H : Hooks σ} {M : Nat} (hF : FoldOK σ X guestC H)
    (hD : DrvCfg guestC H tEV tCK) (hK : Shards.GuestHooks H) (hR : RdHooks H)
    (hMH : ∀ Γ (s : State σ) o, o.ty = tMSGs → H.wf Γ s o)
    (fpRd : KeepsFp σ X (nm "set_retdata")) (fpSp : KeepsFp σ X (nm "stack_push"))
    {gwS : List MlS}
    (hsc : SumSpecT σ X guestC H (nm "start_child") (sgSC gwS)
      (PreSCX guestC guestSt tEV tCK M NewPreG XPG) (QSCX guestC tEV tCK GP GR)) :
    SumSpecT σ X guestC H (nm "generic_call") (sgA 16 (nmEv :: nmCC :: gwS)) (PreGC M) QGC := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _
    ⟨gas, res, caller, tgt, ca, tr, st0, is, isz, os, osz, code, cn, dp, nac, value, hvs, fs, e0,
      c0, rest, hch, hfs, hsp, hout, hisz, hΦM, hcn, hJ0, hE0, hbuf⟩
  subst hvs
  rw [hF.hX] at hl
  obtain ⟨ps, hps, hlk⟩ := lookupCode_k hl
  rw [code_gc] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  have L : ∀ (k : Nat) (x : MlS × ShapeHOL) (v : ValueHOL 64), gcParams[k]? = some x →
      (gcArgs gas res value caller tgt ca tr st0 is isz os osz code cn dp nac)[k]? = some v →
      s0.locals.lookup x.1 = some v :=
    fun k x v h1 h2 => by rw [hloc]; exact hlk k x v h1 h2
  have lgas := L 0 _ _ rfl rfl
  have lres := L 1 _ _ rfl rfl
  have lcaller := L 3 _ _ rfl rfl
  have lto := L 4 _ _ rfl rfl
  have los := L 10 _ _ rfl rfl
  have losz := L 11 _ _ rfl rfl
  have lisz := L 9 _ _ rfl rfl
  have lcn := L 13 _ _ rfl rfl
  have lnac := L 15 _ _ rfl rfl
  have ⟨p, hps0, hord, hL, _⟩ := hG
  have hFr := hD.fc
  have hH := hFr.hooks
  let gw := nmEv :: nmCC :: gwS
  obtain ⟨e', c', rest', hfs', he0, -, -⟩ := hch.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e0, c0) (by rw [hfs]; simp)).1
  have H0 : HoareG σ X (fun u => u = s0) gcBody (GPost H gw Γ s0 p gas) := by
    refine hoareG_dec fun s _ hs v1 _ _ => ?_
    have hs' := hs.symm
    subst hs'
    refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
      (fun r t _ _ h => gpost_locals hH h _)
    -- `set_retdata(empty, 0)`
    have step : ∀ (u : State σ), u = setVarHOLFinite (nm "empty") v1 s0 → ∀ vs,
        vs.length = 2 → ∀ callee r st,
        SumRelX guestC H (sgA 2 []) (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ RetOK guestC Γ s.memory e.base)
          (fun vs s Γ a => ProtCell guestC Γ a ∧ PWtopM tEV tCK [18, 19, 27] vs s Γ a)
          (fun vs s Γ r t Γ' => FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e →
            RetOK guestC Γ' t.memory e) vs (callEntryStateHOLFinite u callee) r st →
        Good (some r) → ¬ Abortive r →
        ∃ Γ1 p1, RunT guestC H gw Γ s0 Γ1 st p p1 ∧ ChainL guestC tEV tCK Γ1 st fs ∧
          Phi st ≤ Phi s0 ∧ JrNZ st ∧ (∀ k ∈ [16, 32, 232], fld st.memory e0 k = fld s0.memory e0 k) ∧
          ChainE GP GR Γ1 st fs ∧ RootK s0 st := by
      intro u hu vs hlen callee r st hRd hg' hna'
      subst hu
      have hGe : G guestC H Γ (callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee) :=
        (G_locFree hH _ _ _).mpr ((G_locFree hH s0 _ _).mpr hG)
      have hpe : ptrsOf (callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee) =
          some p := (ptrsOf_congr rfl).trans hps0
      obtain ⟨Γ1, q, p1, hc, hq⟩ := hRd hg' hna' Γ hGe ⟨p, hpe, argsOK_any (sgA_any 2 []) hlen⟩
        ⟨oe, ⟨hoe, hoet, by rw [show oe.base = e0 from hoeb]; exact he0⟩,
          by rw [show oe.base = e0 from hoeb]; exact hch.retd (e0, c0) (by rw [hfs]; simp)⟩
      obtain rfl : q = p := Option.some.inj (hc.1.symm.trans hpe)
      have hche : ChainL guestC tEV tCK Γ
          (callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee) fs :=
        chainL_congr (s := s0) (s' := callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee)
          rfl rfl hch
      rw [hfs] at hche
      obtain ⟨hch1, hΦ1, -, hkE⟩ := pa_coreX hFr hGe hche (ks := [18, 19, 27]) (by decide)
        (by decide) (by simp [sgA]) (sumCore_pwM hc fun a h => ⟨h.1, h.2.1⟩) (fun a ha => absurd ha (argCells_any (sgA_any 2 [])))
        (hq.1.1 q p1 hpe hc.2.1) (Or.inl ⟨by decide, by decide⟩) (Or.inr (hq.2 e0 he0))
      have hph : Phi (callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee) =
          Phi s0 := phi_congrMG (s := s0) rfl rfl
      have hE1 : ChainE GP GR Γ1 st fs :=
        chainE_sumCoreM hFr xCfg_guest (by decide) (ks := [18, 19, 27]) (by decide) (by decide) hGe hc
          (fun a ha => absurd ha (argCells_any (sgA_any 2 []))) (fun a _ h => h) he0
          ⟨oe, hoe, hoeb, hoet⟩ (fun f hf => hch.objs f hf) (chainE_congr (s := s0) rfl rfl hE0)
      have hchst : ChainL guestC tEV tCK Γ1 st fs := by rw [hfs]; exact hch1
      refine ⟨Γ1, p1, runT_of_sumCore (fun g h => by simp [sgA] at h) hc
        (bkeep_congr (s := callEntryStateHOLFinite (setVarHOLFinite (nm "empty") v1 s0) callee)
          rfl rfl
          (bkeep_of_sumCore' hGe (fun a ha => absurd ha (argCells_any (sgA_any 2 []))) hc
            (fun a h => by
              obtain ⟨q', hq', hord', hL', -⟩ := hGe
              exact not_kCell_of_pwtopM hord' hL' h.2))), hchst,
        by omega, jrNZ_sumCore (by decide) (by simp [sgA]) hc (jrNZ_congr (s := s0) rfl hJ0), ?_, hE1,
        rootK_of_same hch.chain hchst.chain⟩
      intro k hk
      simp only [List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl
      · exact hkE 2 (by simp [evProtSlots]) (by decide)
      · exact hkE 4 (by simp [evProtSlots]) (by decide)
      · exact hkE 29 (by simp [evProtSlots]) (by decide)
    refine hoareG_seq (R := fun r u => (r = none ∧ GA H gw Γ s0 p fs e0 u) ∨
        (r ≠ none ∧ GPost H gw Γ s0 p gas r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_callD (sumSpecA_relX (sd_spec hF hD hR fpRd)) ?_ ?_
      · intro u _ hu vs hvs callee v st hRd _
        obtain ⟨Γ1, p1, hrun1, hch1, hΦ1, hJ1, hk1, hE1, hR1⟩ :=
          step u hu vs (by rw [evs_len hvs]; rfl) callee _ st hRd (by simp [Good]) (not_abortive_ret v)
        subst hu
        refine Or.inl ⟨rfl, ⟨gc_names_set (by decide) v1, jrNZ_congr (s := st) rfl hJ1, Γ1, p1,
          runT_locals hH hrun1 _, chainL_congr (s := st)
          (s' := { st with locals := (setVarHOLFinite (nm "empty") v1 s0).locals }) rfl rfl hch1,
          by rw [phi_locFree.loc]; exact hΦ1, hk1, chainE_congr (s := st) rfl rfl hE1,
          rootK_congr (s := s0) (t := st) rfl rfl rfl rfl hR1⟩⟩
      · intro u _ hu vs hvs callee r st hRd _ habn
        refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
        cases hr'
        obtain ⟨Γ1, p1, hrun1, hch1, hΦ1, -, -, hE1, hR1⟩ :=
          step u hu vs (by rw [evs_len hvs]; rfl) callee r st hRd (good_of_abn habn) hna'
        have hpe : Phi (emptyLocalsHOLFinite st) = Phi st := phi_locFree st _ _
        exact gpost_of (runT_emptyLocals hH hrun1)
          ⟨fs, chainL_congr (s := st) (s' := emptyLocalsHOLFinite st) rfl rfl hch1,
            chainE_congr (s := st) rfl rfl hE1⟩
          (by rw [hpe]; omega) (rootK_congr (s := s0) (t := st) rfl rfl rfl rfl hR1) r r rfl hna'
    refine hoareG_pre (P := GA H gw Γ s0 p fs e0 ) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    -- `var msg = lds 1 (ev + 112)`
    refine hoareG_dec fun u _ hu v2 _ _ => ?_
    refine hoareG_conseq (Q := GPost H gw Γ s0 p gas) ?_ (fun _ _ h => h)
      (fun r t _ _ h => gpost_locals hH h _)
    have hu2 : GA H gw Γ s0 p fs e0 (setVarHOLFinite (nm "msg") v2 u) :=
      ga_same hH hu (gc_names_set (by decide) v2) rfl rfl rfl rfl
    refine hoareG_pre (P := GA H gw Γ s0 p fs e0) ?_ (fun t _ ht => by subst ht; exact hu2)
    refine hoareG_seq (R := fun r u => (r = none ∧ GA H gw Γ s0 p fs e0 u) ∨
        (r ≠ none ∧ GPost H gw Γ s0 p gas r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨h, _⟩ => Or.inl ⟨rfl, h⟩)
      refine hoareG_conseq (gc_depth hF hD hK fpSp (gw := gw) (Γ := Γ) (p := p) lgas lres)
        (fun u _ ⟨⟨hlf, hJ, Γ1, p1, hrun, hch1, hΦ, _, hE1, hRt1⟩, _⟩ =>
          ⟨hlf, hJ, Γ1, p1, fs, hrun, hch1, hΦ, hE1, hRt1⟩)
        (fun r t _ _ ⟨hr, h⟩ => Or.inr ⟨hr, h⟩)
    refine hoareG_pre (P := GA H gw Γ s0 p fs e0) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    exact gc_main hF hD hK hMH hsc hfs hG hps0 lcaller lto (hbuf p hps0) lgas lcn los losz lisz lnac hsp
      hout hisz hΦM hcn
  obtain ⟨Γ', p', hrun, hq1, hq2⟩ := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr hna
  refine ⟨Γ', p, p', sumCoreT_of_runT rfl rfl hrun, fun g hg' => ?_⟩
  simp only [gcArgs, List.head?_cons, Option.some.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hg'
  subst hg'
  exact ⟨hq1, hq2⟩

/-- **`generic_call`'s summary for `guestHooksR`** in the challenge context (frames8: on the
chain extension `GP` / `GR`; open: `frame_start`'s extended summary and its `NoEvm`). -/
theorem gc_sumSpecT_guestR {M : Nat}
    {gwS : List MlS} (hgJS : JrOut (gwS))
    (hfst : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QLeX guestC tEV tCK GP GR))
    (hfsE : NoEvm σ guestCtx (nm "frame_start")) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "generic_call")
      (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ gwS))) (PreGC M) QGC :=
  gc_sumSpecT Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.guestHooksR_guest
    Hooks.rdHooks_guestR msgHook_guestR (Wire.keepsFp_guest (by decide_cbv))
    (Wire.keepsFp_guest (by decide_cbv)) (sc_sumSpecX_guestR hgJS hfst hfsE)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sumSpecT_guestR

#print axioms InitECandidate.Solver.MemSafe.Frames.gc_main
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sumSpecT
