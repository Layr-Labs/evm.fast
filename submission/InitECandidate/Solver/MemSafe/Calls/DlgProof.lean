import InitECandidate.Solver.MemSafe.Calls.Dlg
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Frames.BKeep2

/-!
# `DlgHyp σ` proved (frames15)

`calculate_delegation_cost`'s tab26 summary with the extra post `DlgQ` (the fresh `alloc(24)`
block of a delegated return is a writable 20-byte buffer of the post typing).

Method: the tab26 summary (`tabJL_guestR`) gives the footprint-dependent part of `SumCore`
(`ModifiesOnly`, protected globals); the body proof tracks a *footprint-free* `Struct.Trk`
(`PW := True`) through the five callee calls and the `alloc`, giving the post typing `Γ1`
(`Ext`, `Mono`, `NewFresh`, `G`) together with `BufOK Γ1 p' da 20`; both are glued into one
`SumCore` (`ModifiesOnly`, globals, `ptrsOf` are `Γ'`-independent).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The body's post (for a fixed entry typing `Γ` and allocator state `p0`). -/
def DlQ (H : Hooks σ) (Γ : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → ∃ Γ1, Struct.Trk guestC H Γ s0 p0 (fun _ => True) Γ1 t ∧
    ∀ a b c, r' = .returned (wv [a, b, c]) → a ≠ 0 → ∀ p', ptrsOf t = some p' →
      BufOK guestC Γ1 p' b.toNat 20

theorem dlQ_locals {H : Hooks σ} (hH : HooksLawful guestC H) {Γ : Gam} {s0 : State σ} {p0 : Ptrs}
    (r : Option (PanSemResultExact 64)) (t : State σ) (l : Locs) (h : DlQ H Γ s0 p0 r t) :
    DlQ H Γ s0 p0 r { t with locals := l } := by
  intro r' hr' hna
  obtain ⟨Γ1, hT, hb⟩ := h r' hr' hna
  exact ⟨Γ1, Struct.trk_congr hH hT rfl rfl rfl rfl, fun a b c h ha p' hp' => hb a b c h ha p' hp'⟩

/-- `Struct.trk_callSum` for a `SumRelX` callee, with the trivial footprint. -/
theorem dl_call {H : Hooks σ} (hH : HooksLawful guestC H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {Γk : Gam} {t t' st : State σ} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hT : Struct.Trk guestC H Γ0 s0 p0 (fun _ => True) Γk t) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals) (htd : t'.memaddrs = t.memaddrs)
    (htb : t'.be = t.be)
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW' vs s Γ a) Q vs t' r st)
    (hg : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ∀ p, ptrsOf t = some p → ArgsOK guestC Γk p sg.params vs) (hpre : Pre vs t' Γk)
    (hgw : ∀ g ∈ guestC.PG, g ∉ sg.gw) (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) :
    ∃ Γ' p p', Struct.Trk guestC H Γ0 s0 p0 (fun _ => True) Γ' st ∧
      SumCore guestC H sg (fun a => ProtCell guestC Γk a ∧ PW' vs t' Γk a) Γk t' vs r st Γ' p p' ∧
      Q vs t' Γk r st Γ' := by
  have hG := Struct.trk_G hT
  have hG' : G guestC H Γk t' := Struct.G_congr hH htm htg htd htb hG
  obtain ⟨q, hq, -⟩ := hG
  have hq' : ptrsOf t' = some q := by rw [← hq]; exact Frames.ptrsOf_congr htg
  obtain ⟨Γ', p, p', hc, hQ⟩ := hR hg hna Γk hG' ⟨q, hq', hargs q hq⟩ hpre
  exact ⟨Γ', p, p', Struct.trk_call hT hord0 hL0 htm htg hc hgw (fun a _ => Or.inr (Or.inr trivial))
    (fun a _ _ => trivial) hd hbe, hc, hQ⟩

section chain
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

theorem dlg_eoc_eq : eocCs = dlgCs := by decide +kernel
theorem dlg_eoc_sg : eocSg = dlgSg := by decide +kernel

theorem ev_lvw' {u : State σ} {x : MlS} {w : BitVec 64}
    (h : u.locals.lookup x = some (.val (.word w))) : ev u (lv x) = some (.val (.word w)) := by
  rw [ev_lv]; exact h

/-- `f(args); rest` with a callee relation `R` (copy of `dl_callD_seq`). -/
theorem dl_callD_seq {X : Ctx 64} {P P' : State σ → Prop}
    {F : Option (PanSemResultExact 64) → State σ → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {rest : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
      P' { st with locals := s.locals })
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee r (st : State σ),
      R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
      F (some r) (emptyLocalsHOLFinite st))
    (hrest : HoareG σ X P' rest F) : HoareG σ X P (.seq (callD f args) rest) F := by
  refine hoareG_seq (R := fun r t => (r ≠ none → F r t) ∧ (r = none → P' t)) ?_
    (fun r t _ hr _ h => h.1 hr) (hoareG_pre hrest fun _ _ h => h.2 rfl)
  exact hoareG_callD hf (fun s hs hp vs hvs callee v st hR hst =>
      ⟨fun h => absurd rfl h, fun _ => hret s hs hp vs hvs callee v st hR hst⟩)
    (fun s hs hp vs hvs callee r st hR hst habn' =>
      ⟨fun _ => habn s hs hp vs hvs callee r st hR hst habn', fun h => by cases h⟩)

def dlK4 : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv (nm "warm")) (cw 0))
      (.return (.rstruct [(cw 1), (lv (nm "da")), (cw 100)])) .skip)
    (.return (.rstruct [(cw 1), (lv (nm "da")), (cw 3000)]))

def dlK3 : ProgHOL 64 := .decCall (nm "warm") .one (nm "is_warm_address") [(lv (nm "da"))] dlK4

def dlK2 : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [(lv (nm "da")), (.op .add [(.rfield 0 (lv (nm "code"))), (cw 3)]),
      (cw 20)]) dlK3

def dlK1 : ProgHOL 64 := .decCall (nm "da") .one (nm "alloc") [(cw 24)] dlK2

def dlK0 : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "v")) (cw 0))
      (.return (.rstruct [(cw 0), (lv (nm "addr")), (cw 0)])) .skip) dlK1

def dlKv : ProgHOL 64 :=
  .decCall (nm "v") .one (nm "is_valid_delegation") [(.rfield 0 (lv (nm "code"))),
      (.rfield 1 (lv (nm "code")))] dlK0

theorem dlgBody_eq : dlgBody = .decCall (nm "code") (shK 2) (nm "ext_code_of") [(lv (nm "addr"))] dlKv :=
  rfl

theorem dlp_iwa_mem : (nm "is_warm_address", (⟨[.any], [], [], false⟩ : Sig), ([] : List Cap)) ∈
    ShardsJL.tab26 := by decide +kernel
theorem dlp_ivd_mem : (nm "is_valid_delegation", (⟨[.any, .any], [], [], false⟩ : Sig),
    ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel

section stages
variable {Γ : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The two returns. -/
theorem dl_k4 (hord0 : p0.Ordered) {Γ4 : Gam} {u : State σ} {DA W : BitVec 64}
    (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ4 u)
    (hDA : u.locals.lookup (nm "da") = some (.val (.word DA)))
    (hW : u.locals.lookup (nm "warm") = some (.val (.word W)))
    (hB : ∀ p, ptrsOf u = some p → BufOK guestC Γ4 p DA.toNat 20) :
    HoareG σ guestCtx (fun t => t = u) dlK4 (DlQ HJ Γ s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold dlK4
  have key : ∀ (t : State σ) (b : BitVec 64) (a' c' : BitVec 64), t = u → a' ≠ 0 → b = DA →
      DlQ HJ Γ s0 p0 (some (.returned (wv [a', b, c']))) (emptyLocalsHOLFinite t) := by
    intro t b a' c' ht ha hb r' hr' hna
    have ht' : u = t := ht.symm
    subst ht'
    simp only [Option.some.injEq] at hr'
    subst hr'
    refine ⟨Γ4, Struct.trk_congr hH hT rfl rfl rfl rfl, fun a b' c h ha0 p' hp' => ?_⟩
    simp only [PanSemResultExact.returned.injEq] at h
    have h3 := wv_inj h
    simp only [List.cons.injEq] at h3
    obtain ⟨-, rfl, -⟩ := h3
    rw [show ptrsOf (emptyLocalsHOLFinite u) = ptrsOf u from Frames.ptrsOf_congr rfl] at hp'
    rw [hb]
    exact hB p' hp'
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ht w' hw' hne v' hv'
    have ht' : u = t := ht.symm
    subst ht'
    rw [ev_ret3 (ev_cw _ 1) (Struct.ev_lw' hDA) (ev_cw _ 100)] at hv'
    cases hv'
    exact key u DA _ _ rfl (by decide) rfl
  · refine hoareG_return fun t _ ⟨ht, _⟩ v' hv' => ?_
    have ht' : u = t := ht.symm
    subst ht'
    rw [ev_ret3 (ev_cw _ 1) (Struct.ev_lw' hDA) (ev_cw _ 3000)] at hv'
    cases hv'
    exact key u DA _ _ rfl (by decide) rfl

/-- `warm = is_warm_address(da)`. -/
theorem dl_k3 (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ) {Γ3 : Gam} {u : State σ}
    {DA : BitVec 64} (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ3 u)
    (hDA : u.locals.lookup (nm "da") = some (.val (.word DA)))
    (hB : ∀ p, ptrsOf u = some p → BufOK guestC Γ3 p DA.toNat 20) :
    HoareG σ guestCtx (fun t => t = u) dlK3 (DlQ HJ Γ s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold dlK3
  refine Struct.hoareG_decCall' (dlQ_locals hH) (FunSpec.and
    (sumSpecA_relX (tabJL_guestR (σ := σ) _ _ _ dlp_iwa_mem)) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ hst hsh
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (ev_lvw' hDA) evs_nil] at hvs
    cases hvs
    obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨Γ4, p, p', hT4, hc4, -⟩ := dl_call (sg := ⟨[.any], [], [], false⟩)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (by simp [Good])
      (not_abortive_ret _) (fun p hp => argsOK_any (by simp) rfl) reqOK_nil (fun g _ => by simp)
      hd hbe
    have hpu : ptrsOf u = some p := by
      have := hc4.1
      rw [show ptrsOf (callEntryStateHOLFinite u callee) = ptrsOf u from Frames.ptrsOf_congr rfl] at this
      exact this
    have hGe : G guestC HJ Γ3 (callEntryStateHOLFinite u callee) :=
      Struct.G_congr hH rfl rfl rfl rfl (Struct.trk_G hT)
    have hB4 : BufOK guestC Γ4 p' DA.toNat 20 :=
      bufOK_sumCore hGe hc4 (hB p hpu)
    set u1 := setVarHOLFinite (nm "warm") (.val (.word W)) { st with locals := u.locals } with hu1
    have hT1 : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ4 u1 :=
      Struct.trk_congr hH hT4 rfl rfl rfl rfl
    have hpu1 : ptrsOf u1 = some p' := by
      rw [show ptrsOf u1 = ptrsOf st from Frames.ptrsOf_congr rfl]; exact hc4.2.1
    exact dl_k4 hord0 hT1 ((lk_set_ne _ _ (by decide)).trans hDA) (lk_set_self _ _ _)
      (fun pp hpp => by rw [hpu1] at hpp; cases hpp; exact hB4)
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ hst habn
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (ev_lvw' hDA) evs_nil] at hvs
    cases hvs
    intro r' hr' hna
    cases hr'
    obtain ⟨Γ4, p, p', hT4, hc4, -⟩ := dl_call (sg := ⟨[.any], [], [], false⟩)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (good_of_abn habn)
      hna (fun p hp => argsOK_any (by simp) rfl) reqOK_nil (fun g _ => by simp) hd hbe
    exact ⟨Γ4, Struct.trk_congr hH hT4 rfl rfl rfl rfl,
      fun a b c h => absurd h (Struct.abn_ne_ret habn _)⟩

/-- `memcpy(da, code.0 + 3, 20)`. -/
theorem dl_k2 (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ) {Γ2 : Gam} {u : State σ}
    {DA c0 c1 : BitVec 64} (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ2 u)
    (hDA : u.locals.lookup (nm "da") = some (.val (.word DA)))
    (hC : u.locals.lookup (nm "code") = some (wv [c0, c1]))
    (hB : ∀ p, ptrsOf u = some p → BufOK guestC Γ2 p DA.toNat 20) :
    HoareG σ guestCtx (fun t => t = u) dlK2 (DlQ HJ Γ s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  unfold dlK2
  refine dl_callD_seq (P' := fun t => t.locals = u.locals ∧ ∃ Γ3,
      Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ3 t ∧
        ∀ p, ptrsOf t = some p → BufOK guestC Γ3 p DA.toNat 20)
    (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (Helpers.summ_memcpy hH
      Helpers.tagSlots_guestC hF.hX hF.hal))) (funSpec_dom _)) ?_ ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ hst
    have hs' : u = s := hs.symm
    subst hs'
    have hadd : ev u (.op .add [.rfield 0 (lv (nm "code")), cw 3]) =
        some (.val (.word (c0 + BitVec.ofNat 64 3))) :=
      ev_add2 (Struct.ev_wv_word hC (i := 0) (by simp)) (ev_cw _ 3)
    rw [evs_cons (ev_lvw' hDA) (evs_cons hadd (evs_cons (ev_cw _ 20) evs_nil))] at hvs
    cases hvs
    obtain ⟨p, hpu, -⟩ := (Struct.trk_ptrs hT)
    have h20 : (1 * (BitVec.ofNat 64 20).toNat + 0) = 20 := by decide
    obtain ⟨Γ3, p3, p3', hT3, hc3, -⟩ := dl_call (sg := Helpers.sigMemcpy)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (by simp [Good])
      (not_abortive_ret _)
      (fun p' hp' => by
        rw [hpu] at hp'; cases hp'
        refine ⟨rfl, fun i pt w hpt hw => ?_⟩
        rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;>
          subst hw
        · refine ⟨DA, _, rfl, rfl, ?_⟩
          rw [h20]
          exact hB p hpu
        · trivial
        · trivial) trivial (fun g _ => by simp [Helpers.sigMemcpy]) hd hbe
    have hGe : G guestC HJ Γ2 (callEntryStateHOLFinite u callee) :=
      Struct.G_congr hH rfl rfl rfl rfl (Struct.trk_G hT)
    have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p := by
      rw [show ptrsOf (callEntryStateHOLFinite u callee) = ptrsOf u from Frames.ptrsOf_congr rfl]
      exact hpu
    refine ⟨rfl, Γ3, Struct.trk_congr hH hT3 rfl rfl rfl rfl, fun pp hpp => ?_⟩
    have hp3 : p3 = p := by have := hc3.1; rw [hpe] at this; exact (Option.some.inj this).symm
    subst hp3
    have : ptrsOf { st with locals := u.locals } = some p3' := by
      rw [show ptrsOf { st with locals := u.locals } = ptrsOf st from Frames.ptrsOf_congr rfl]
      exact hc3.2.1
    rw [this] at hpp
    cases hpp
    exact bufOK_sumCore hGe hc3 (hB p3 hpu)
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ hst habn
    have hs' : u = s := hs.symm
    subst hs'
    have hadd : ev u (.op .add [.rfield 0 (lv (nm "code")), cw 3]) =
        some (.val (.word (c0 + BitVec.ofNat 64 3))) :=
      ev_add2 (Struct.ev_wv_word hC (i := 0) (by simp)) (ev_cw _ 3)
    rw [evs_cons (ev_lvw' hDA) (evs_cons hadd (evs_cons (ev_cw _ 20) evs_nil))] at hvs
    cases hvs
    intro r' hr' hna
    cases hr'
    obtain ⟨p, hpu, -⟩ := (Struct.trk_ptrs hT)
    have h20 : (1 * (BitVec.ofNat 64 20).toNat + 0) = 20 := by decide
    obtain ⟨Γ3, p3, p3', hT3, hc3, -⟩ := dl_call (sg := Helpers.sigMemcpy)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (good_of_abn habn)
      hna
      (fun p' hp' => by
        rw [hpu] at hp'; cases hp'
        refine ⟨rfl, fun i pt w hpt hw => ?_⟩
        rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;>
          subst hw
        · refine ⟨DA, _, rfl, rfl, ?_⟩
          rw [h20]
          exact hB p hpu
        · trivial
        · trivial) trivial (fun g _ => by simp [Helpers.sigMemcpy]) hd hbe
    exact ⟨Γ3, Struct.trk_congr hH hT3 rfl rfl rfl rfl,
      fun a b c h => absurd h (Struct.abn_ne_ret habn _)⟩
  · intro t hctx ⟨hl, Γ3, hT3, hB3⟩
    exact dl_k3 hord0 hL0 hT3 (by rw [hl]; exact hDA) hB3 t hctx rfl

/-- `da = alloc(24)`. -/
theorem dl_k1 (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ) {Γ1 : Gam} {u : State σ}
    {c0 c1 : BitVec 64} (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ1 u)
    (hC : u.locals.lookup (nm "code") = some (wv [c0, c1])) :
    HoareG σ guestCtx (fun t => t = u) dlK1 (DlQ HJ Γ s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hM : HooksMono guestC HJ := Hooks.drvCfg_guestHooksR.mono
  have hAG : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hRd : RdHooks HJ := Hooks.rdHooks_guestR
  unfold dlK1
  refine Struct.hoareG_decCall' (dlQ_locals hH) (FunSpec.and (allocSpec_alloc hF.hX)
    (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ hst hsh
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    cases hvs
    obtain ⟨p1, hp1, hordp, hLp⟩ := Struct.trk_ptrs hT
    have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := by
      rw [show ptrsOf (callEntryStateHOLFinite u callee) = ptrsOf u from Frames.ptrsOf_congr rfl]
      exact hp1
    obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ p1 rfl hpe hordp
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have h24 : (BitVec.ofNat 64 24).toNat = 24 := by decide
    rw [h24] at hlive hna
    have hT' := Struct.trk_alloc_obj (ty := tB8) (n := 24) (rg := .heap) hH hM hAG hT rfl rfl hpe hm
      hgl hp' hord' hmo hd hbe hq8 (by omega) (by omega) (by decide) rfl hlive
      (fun a h1 h2 => hna a h1 (by omega)) b8_scalar (by decide)
      (fun Γ s o h => hRd.b8 Γ s o h)
    set u1 := setVarHOLFinite (nm "da") (.val (.word q)) { st with locals := u.locals } with hu1
    have hT1 := Struct.trk_congr (t' := u1) hH hT' rfl rfl rfl rfl
    obtain ⟨p2, hp2, hord2, hL2⟩ := Struct.trk_ptrs hT'
    have hpu1 : ptrsOf u1 = some p2 := by
      rw [show ptrsOf u1 = ptrsOf st from Frames.ptrsOf_congr rfl]; exact hp2
    have hB : ∀ pp, ptrsOf u1 = some pp → BufOK guestC (Γ1 ++ [⟨q, tB8, 24⟩]) pp q.toNat 20 := by
      intro pp hpp
      rw [hpu1] at hpp
      cases hpp
      exact Struct.bufOK_obj hord2 hL2 (o := ⟨q, tB8, 24⟩) (List.mem_append_right _ (List.mem_singleton_self _))
        b8_scalar (by unfold Obj.lo; exact le_refl _) (by unfold Obj.hi; simp)
    exact dl_k2 hord0 hL0 hT1 (lk_set_self _ _ _) ((lk_set_ne _ _ (by decide)).trans hC) hB
  · intro s _ hs vs hvs callee r st ⟨hAl, hd, hbe⟩ hst habn
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    cases hvs
    intro r' hr' hna
    cases hr'
    obtain ⟨p1, hp1, hordp, hLp⟩ := Struct.trk_ptrs hT
    have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := by
      rw [show ptrsOf (callEntryStateHOLFinite u callee) = ptrsOf u from Frames.ptrsOf_congr rfl]
      exact hp1
    obtain ⟨hm, hgl, p', hp', hord', hmo, -⟩ := hAl (good_of_abn habn) _ p1 rfl hpe hordp
    exact ⟨Γ1, Struct.trk_congr hH (Struct.trk_alloc hH hAG hT rfl rfl hpe hm hgl hp' hord' hmo hd hbe)
      rfl rfl rfl rfl, fun a b c h => absurd h (Struct.abn_ne_ret habn _)⟩

/-- `if v == 0 { return <0, addr, 0>; }`. -/
theorem dl_k0 (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ) {Γ1 : Gam} {u : State σ}
    {A c0 c1 : BitVec 64} (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ1 u)
    (hA : u.locals.lookup (nm "addr") = some (.val (.word A)))
    (hC : u.locals.lookup (nm "code") = some (wv [c0, c1])) :
    HoareG σ guestCtx (fun t => t = u) dlK0 (DlQ HJ Γ s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold dlK0
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ht w' _ _ v' hv'
    have ht' : u = t := ht.symm
    subst ht'
    rw [ev_ret3 (ev_cw _ 0) (Struct.ev_lw' hA) (ev_cw _ 0)] at hv'
    cases hv'
    intro r' hr' hna
    simp only [Option.some.injEq] at hr'
    subst hr'
    refine ⟨Γ1, Struct.trk_congr hH hT rfl rfl rfl rfl, fun a b c h ha => ?_⟩
    simp only [PanSemResultExact.returned.injEq] at h
    have h3 := wv_inj h
    simp only [List.cons.injEq] at h3
    exact absurd h3.1.symm ha
  · refine hoareG_pre (P := fun t => t = u) ?_ (fun t _ h => h.1)
    exact dl_k1 hord0 hL0 hT hC

/-- `v = is_valid_delegation(code.0, code.1)`. -/
theorem dl_kv (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ) {Γ1 : Gam} {u : State σ}
    {A c0 c1 : BitVec 64} (hT : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ1 u)
    (hA : u.locals.lookup (nm "addr") = some (.val (.word A)))
    (hC : u.locals.lookup (nm "code") = some (wv [c0, c1])) :
    HoareG σ guestCtx (fun t => t = u) dlKv (DlQ HJ Γ s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold dlKv
  refine Struct.hoareG_decCall' (dlQ_locals hH) (FunSpec.and
    (sumSpecA_relX (tabJL_guestR (σ := σ) _ _ _ dlp_ivd_mem)) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ hst hsh
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (Struct.ev_wv_word hC (i := 0) (by simp))
      (evs_cons (Struct.ev_wv_word hC (i := 1) (by simp)) evs_nil)] at hvs
    cases hvs
    obtain ⟨V, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨Γ2, p, p', hT2, hc2, -⟩ := dl_call (sg := ⟨[.any, .any], [], [], false⟩)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (by simp [Good])
      (not_abortive_ret _) (fun p hp => argsOK_any (by simp) rfl) reqOK_nil (fun g _ => by simp)
      hd hbe
    set u1 := setVarHOLFinite (nm "v") (.val (.word V)) { st with locals := u.locals } with hu1
    have hT1 : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ2 u1 :=
      Struct.trk_congr hH hT2 rfl rfl rfl rfl
    exact dl_k0 hord0 hL0 hT1 ((lk_set_ne _ _ (by decide)).trans hA)
      ((lk_set_ne _ _ (by decide)).trans hC)
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ hst habn
    have hs' : u = s := hs.symm
    subst hs'
    rw [evs_cons (Struct.ev_wv_word hC (i := 0) (by simp))
      (evs_cons (Struct.ev_wv_word hC (i := 1) (by simp)) evs_nil)] at hvs
    cases hvs
    intro r' hr' hna
    cases hr'
    obtain ⟨Γ2, p, p', hT2, hc2, -⟩ := dl_call (sg := ⟨[.any, .any], [], [], false⟩)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR (good_of_abn habn)
      hna (fun p hp => argsOK_any (by simp) rfl) reqOK_nil (fun g _ => by simp) hd hbe
    exact ⟨Γ2, Struct.trk_congr hH hT2 rfl rfl rfl rfl,
      fun a b c h => absurd h (Struct.abn_ne_ret habn _)⟩

end stages

theorem dl_hoare {Γ : Gam} {s0 : State σ} {p0 : Ptrs} (hG0 : G guestC HJ Γ s0)
    (hp0 : ptrsOf s0 = some p0) {A : BitVec 64}
    (hargs : ArgsOK guestC Γ p0 dlgSg.params [.val (.word A)]) (hreq : ReqOK dlgCs s0 Γ)
    (hA : s0.locals.lookup (nm "addr") = some (.val (.word A))) :
    HoareG σ guestCtx (fun u => u = s0) dlgBody (DlQ HJ Γ s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hM : HooksMono guestC HJ := Hooks.drvCfg_guestHooksR.mono
  have hAG : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hRd : RdHooks HJ := Hooks.rdHooks_guestR
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold dlgBody
  -- step 1: `code = ext_code_of(addr)`
  refine Struct.hoareG_decCall' (dlQ_locals hH) (FunSpec.and
    (sumSpecA_relX (tabJL_guestR (σ := σ) _ _ _ eoc_mem)) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ hst hsh
    have hs' : s0 = s := hs.symm
    subst hs'
    rw [evs_cons (ev_lvw' hA) evs_nil] at hvs
    cases hvs
    obtain ⟨c0, c1, rfl⟩ := wv2_of hsh
    obtain ⟨Γ1, p, p', hT1, hc1, -⟩ := dl_call (sg := eocSg) (t' := callEntryStateHOLFinite s0 callee) hH
      (Struct.trk_refl (PW := fun _ => True) hG0 hp0)
      hord0 hL0 rfl rfl rfl rfl hR (by simp [Good]) (not_abortive_ret _)
      (fun p hp => by rw [hp0] at hp; cases hp; exact hargs) (by rw [dlg_eoc_eq]; exact hreq)
      (fun g _ => by simp [eocSg]) hd hbe
    set u1 := setVarHOLFinite (nm "code") (wv [c0, c1]) { st with locals := s0.locals } with hu1
    have hT1' : Struct.Trk guestC HJ Γ s0 p0 (fun _ => True) Γ1 u1 :=
      Struct.trk_congr hH hT1 rfl rfl rfl rfl
    have hA1 : u1.locals.lookup (nm "addr") = some (.val (.word A)) :=
      (lk_set_ne _ _ (by decide)).trans hA
    have hC1 : u1.locals.lookup (nm "code") = some (wv [c0, c1]) := lk_set_self _ _ _
    exact dl_kv hord0 hL0 hT1' hA1 hC1
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ hst habn
    have hs' : s0 = s := hs.symm
    subst hs'
    rw [evs_cons (ev_lvw' hA) evs_nil] at hvs
    cases hvs
    intro r' hr' hna
    cases hr'
    obtain ⟨Γ1, p, p', hT1, hc1, -⟩ := dl_call (sg := eocSg) (t' := callEntryStateHOLFinite s0 callee) hH
      (Struct.trk_refl (PW := fun _ => True) hG0 hp0)
      hord0 hL0 rfl rfl rfl rfl hR (good_of_abn habn) hna
      (fun p hp => by rw [hp0] at hp; cases hp; exact hargs) (by rw [dlg_eoc_eq]; exact hreq)
      (fun g _ => by simp [eocSg]) hd hbe
    exact ⟨Γ1, Struct.trk_congr hH hT1 rfl rfl rfl rfl,
      fun a b c h => absurd h (Struct.abn_ne_ret habn _)⟩

/-- The body relation: a footprint-free `Trk` plus the post on the delegated block. -/
theorem dlg_body_spec :
    FunSpec σ guestCtx (nm "calculate_delegation_cost") (fun vs s r t => Good (some r) →
      ¬ Abortive r → ∀ Γ, G guestC HJ Γ s → (∃ p, ptrsOf s = some p ∧
        ArgsOK guestC Γ p dlgSg.params vs) → ReqOK dlgCs s Γ →
        ∃ p0 Γ1, ptrsOf s = some p0 ∧ Struct.Trk guestC HJ Γ s p0 (fun _ => True) Γ1 t ∧
          ∀ a b c, r = .returned (wv [a, b, c]) → a ≠ 0 → ∀ p', ptrsOf t = some p' →
            BufOK guestC Γ1 p' b.toNat 20) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_dlg hl
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hA
  have l0 : s0.locals.lookup (nm "addr") = some (.val (.word w)) := by rw [hloc]; exact hla
  intro s hs hp hg r' hr' hna Γ hG ⟨p0, hp0, hargs⟩ hreq
  have hs' : s0 = s := hp.symm
  subst hs'
  have H0 := dl_hoare hG hp0 hargs hreq l0 s0 hs rfl hg
  rw [hr'] at H0
  obtain ⟨Γ1, hT, hq⟩ := H0 r' rfl hna
  exact ⟨p0, Γ1, hp0, hT, hq⟩

end chain

/-- **`DlgHyp σ` is proved**: `calculate_delegation_cost`'s tab26 summary with the post `DlgQ`. -/
theorem dlgHyp_proved : DlgHyp σ := by
  have htab : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ))
      (nm "calculate_delegation_cost") dlgSg (fun _ s Γ => ReqOK dlgCs s Γ)
      (fun _ s Γ a => CapPW dlgCs s Γ a) (fun _ _ _ _ _ _ => True) :=
    tabJL_guestR (σ := σ) _ _ _ dlg_mem
  unfold DlgHyp SumSpecA
  refine FunSpec.mono (FunSpec.and htab dlg_body_spec) ?_
  intro vs s r t ⟨h1, h2⟩ hg hna Γ hG hargs hreq
  obtain ⟨Γ', p, p', hc, -⟩ := h1 hg hna Γ hG hargs hreq
  obtain ⟨p0, Γ1, hp0, hT, hq⟩ := h2 hg hna Γ hG hargs hreq
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, -, hpg1, -, -⟩ := hT
  have hpp : p = p0 := by have := hc.1; rw [hp0] at this; exact (Option.some.inj this).symm
  subst hpp
  have hpp' : p' = p1 := by have := hc.2.1; rw [hp1] at this; exact Option.some.inj this.symm
  subst hpp'
  refine ⟨Γ1, p, p', ⟨hc.1, hc.2.1, hm1, hx1, hnf1, hG1, hc.2.2.2.2.2.2.1, hc.2.2.2.2.2.2.2.1,
    fun h => by simp [dlgSg] at h, fun v _ i rt w hrt => by simp [dlgSg] at hrt⟩, ?_⟩
  exact hq

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.dlg_body_spec
#print axioms InitECandidate.Solver.MemSafe.Calls.dlgHyp_proved
