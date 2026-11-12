import InitECandidate.Solver.MemSafe.Calls.Kit3
import InitECandidate.Solver.MemSafe.Frames.BKeep2
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL handlers' Hoare kit, part 4 (frames14): `generic_call` and the tail

* **`KF1 Γ0 s0 u`**: the facts after `generic_call` (any chain, `Φ` strictly below the entry);
  `kf1_congr`, `kf1_of_kcall`, `qcall_of_kf1`;
* **`hq_tail`**: `if started == 0 { pc_add(1) }; return 0` from `KF1`;
* **`hq_gc`**: `started = generic_call(args)` from `KCall [] d` with `PreGC`'s side conditions
  (`gc_sumSpecT_guestRh`), ending in `KF1` (`d ≥ gas + 3`);
* `kcall_tabQ` (a tab26-shaped summary with a post), `hq_dlg` (`calculate_delegation_cost`, from
  `DlgHyp` + `dlg_val`: the code address joins the tracked blocks), `hq_eco` (`ext_code_of`, from
  `EcoHyp`: the code-length bound).
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

/-! ## The facts after `generic_call` -/

/-- Any chain with its extension, `JrNZ`, `Φ` strictly below the entry's. -/
def KF1 (Γ0 : Gam) (s0 : State σ) (u : State σ) : Prop :=
  JrNZ u ∧ (∃ Γ1 p1 fs', G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u ∧ ptrsOf u = some p1 ∧
    ChainL guestC tEV tCK Γ1 u fs' ∧ ChainE GP GR Γ1 u fs' ∧ KeepH guestC Γ0 Γ1 s0 u ∧
    RootK s0 u ∧ BKeep guestC Γ0 s0 u ∧ Ext Γ0 Γ1) ∧
    Phi u + 1 ≤ Phi s0

theorem kf1_congr {Γ0 : Gam} {s0 u t : State σ} (h : KF1 Γ0 s0 u) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KF1 Γ0 s0 t := by
  obtain ⟨hJ, ⟨Γ1, p1, fs', hG, hp, hch, hE, hKe, hRt, hBk, hEx⟩, hΦ⟩ := h
  exact ⟨jrNZ_congr hg hJ, ⟨Γ1, p1, fs', G_congr Hooks.frameCfg_guestHooksR.hooks hm hg hd hbe hG,
    (ptrsOf_congr hg).trans hp, chainL_congr hm hg hch, chainE_congr hm hg hE,
    keepH_congr rfl hg hKe, rootK_congr rfl rfl hm hg hRt, bkeep_congr rfl hm hBk, hEx⟩,
    by rw [phi_congrMG hm hg]; exact hΦ⟩

theorem kf1_of_kcall {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} [hs0 : Fact (ChainOf s0 fs)]
    {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (h : KCall Γ0 s0 p0 fs Bs d u) (hd : 1 ≤ d) :
    KF1 Γ0 s0 u := by
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, -⟩, hΦ, -⟩ := h
  exact ⟨hJ, ⟨Γ1, p1, fs, hrun.2.2.2.2.2.1, hrun.2.1, hch, hE, keepH_of_runT hrun,
    rootK_of_same hs0.out hch.chain, bkeep_of_runT hrun, hrun.2.2.2.1⟩, by omega⟩

theorem qcall_of_kf1 {Γ0 : Gam} {s0 t : State σ} (h : KF1 Γ0 s0 t) (r : PanSemResultExact 64) :
    QCall Γ0 s0 (some r) t := by
  intro r' hr' hna
  cases hr'
  obtain ⟨hJ, ⟨Γ1, p1, fs', hG, hp, hch, hE, hKe, hRt, hBk, -⟩, hΦ⟩ := h
  exact ⟨Γ1, hG, ⟨fun v hv => ⟨⟨fs', hch, hE⟩, by omega⟩, fun v hv => ⟨⟨fs', hch, hE⟩, by omega⟩⟩,
    fun _ _ => hJ, fun _ _ => hJ, fun _ _ => hKe, fun _ _ => hKe, fun _ _ => hRt, fun _ _ => hRt,
    fun _ _ => hBk, fun _ _ => hBk⟩

/-! ## `pc_add` and the tail -/

def pcSg : Sig := ⟨[.any], [], [], false⟩

theorem pc_mem : (nm "pc_add", pcSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem pc_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "pc_add") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

/-- `pc_add(n)` from `KF1`. -/
theorem kf1_pc {Γ0 : Gam} {s0 u : State σ} (h : KF1 Γ0 s0 u) {vs : List (ValueHOL 64)} (hlen : vs.length = 1)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) pcSg (fun _ s Γ => ReqOK [] s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) : KF1 Γ0 s0 st := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, fs', hG, hp, hch, hE, hKe, hRt, hBk, hEx⟩, hΦ⟩ := h
  obtain ⟨e', c', rest', hfs', -, -, -⟩ := hch.chain
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, -, -, -, -, -, -⟩ := kc_coreB hF hfs' (sg := pcSg)
    (gw := []) (fun g h => by simp [pcSg] at h) (by simp [pcSg]) (by simp [pcSg, jrOut_iff])
    (ks := []) (by decide) (by decide) (by decide) (runT_refl hG hp) hch hE hJ hR hfk hg hna
    (argsOK_any (by simp [pcSg]) (by rw [hlen]; rfl)) (fun c hc => by cases hc)
    (fun a _ ⟨c, hc, _⟩ => by cases hc) (Or.inl ⟨by decide, by decide⟩)
    (Or.inl ⟨by decide, by decide⟩)
  obtain ⟨z, hz, hordz, -⟩ := id hG
  obtain rfl : z = p1 := Option.some.inj (hz.symm.trans hp)
  exact ⟨hJ2, ⟨Γ2, p2, fs', hrun2.2.2.2.2.2.1, hrun2.2.1, hch2, hE2,
    hKe.trans (keepH_of_runT hrun2) hp hordz,
    rootK_trans hRt (rootK_of_same hch.chain hch2.chain) ⟨fs', hch.chain⟩,
    bkeep_trans hEx hBk (bkeep_of_runT hrun2), ext_trans hEx hrun2.2.2.2.1⟩, by omega⟩

def callTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "started")) (cw 0)) (callD (nm "pc_add") [cw 1]) .skip)
    (.return (cw 0))

/-- **The tail** `if started == 0 { pc_add(1) }; return 0` from `KF1`. -/
theorem hq_tail {Γ0 : Gam} {s0 u0 : State σ} (h : KF1 Γ0 s0 u0) :
    HoareG σ guestCtx (fun t => t = u0) callTail (QCall Γ0 s0) := by
  refine hoareG_seq (R := fun ro t => (ro = none ∧ KF1 Γ0 s0 t) ∨ (ro ≠ none ∧ QCall Γ0 s0 ro t))
    ?_ (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, by rw [ht]; exact h⟩)
    refine hoareG_callD (FunSpec.and (sumSpecA_relX (tabJL_guestR _ _ _ pc_mem)) pc_fp) ?_ ?_
    · intro s _ ⟨hs, _⟩ vs hvs callee v st ⟨hR, hfk⟩ _
      subst hs
      have hlen : vs.length = 1 := by rw [evs_len hvs]; rfl
      exact Or.inl ⟨rfl, kf1_congr (kf1_pc h hlen hR (hfk (by simp [Good]) (not_abortive_ret v))
        (by simp [Good]) (not_abortive_ret v)) rfl rfl rfl rfl⟩
    · intro s _ ⟨hs, _⟩ vs hvs callee r st ⟨hR, hfk⟩ _ habn
      subst hs
      have hlen : vs.length = 1 := by rw [evs_len hvs]; rfl
      refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
      cases hr'
      exact qcall_of_kf1 (Γ0 := Γ0) (kf1_congr (t := emptyLocalsHOLFinite st)
        (kf1_pc h hlen hR (hfk (good_of_abn habn) hna) (good_of_abn habn) hna) rfl rfl rfl rfl)
        r r rfl hna
  · refine hoareG_return fun t _ ht v _ => ?_
    rcases ht with ⟨-, hk⟩ | ⟨h', -⟩
    · exact qcall_of_kf1 (Γ0 := Γ0) (kf1_congr (t := emptyLocalsHOLFinite t) hk rfl rfl rfl rfl) _
    · exact absurd rfl h'

/-! ## `generic_call` -/

section gc
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- The join post of the two branches before the tail. -/
def QJ (Γ0 : Gam) (s0 : State σ) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none ∧ KF1 Γ0 s0 t) ∨ (ro ≠ none ∧ QCall Γ0 s0 ro t)

theorem postOK_qj (ha0 : act s0 = 1) : PostOK Γ0 s0 p0 fs (QJ Γ0 s0) := by
  refine ⟨fun ro t l h => ?_, fun r t Bs d habn hk => Or.inr ⟨by simp,
    (postOK_qc (p0 := p0) (fs := fs) ha0).abn r t Bs d habn hk⟩⟩
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact Or.inl ⟨h1, kf1_congr h2 rfl rfl rfl rfl⟩
  · exact Or.inr ⟨h1, qcall_loc h2 l⟩

/-- **`x = generic_call(args)`** from `KCall [] d` with `d ≥ gas + 3`. -/
theorem hq_gc (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) {x : MlS} {args : List (ExpHOL 64)}
    {d : Nat} {u0 : State σ} (hu : KC [] d u0)
    {gas res tgt ca tr st is isz os osz code cn dp nac : BitVec 64} {value : ValueHOL 64}
    (hargs : ∀ vs, evs u0 args = some vs → ∃ caller : BitVec 64,
      vs = gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac ∧
      ∀ (Γ1 : Gam) (p1 : Ptrs),
        RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
        ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
        BufOK guestC Γ1 p1 caller.toNat 20 ∧ BufOK guestC Γ1 p1 tgt.toNat 20)
    (hsp : (fld u0.memory e evSp).toNat < (fld u0.memory e evStackCap).toNat)
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld u0.memory e evMemLen).toNat)
    (hisz : isz.toNat < 2 ^ 32)
    (hcn : cn.toNat + 63 < 2 ^ 64)
    (hd : gas.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) (.call (some (some (.local, x), none)) (nm "generic_call") args)
      (QJ Γ0 s0) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, -⟩, hΦ0, -⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hspec := gc_sumSpecT_guestRh (σ := σ) hP (M := Phi u0 + gas.toNat + 2)
  -- the summary's facts, for any result
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r (stt : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ))
        (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGC (Phi u0 + gas.toNat + 2))
        (fun _ _ Γ a => ¬ KCell guestC Γ a) QGC vs (callEntryStateHOLFinite u0 callee) r stt →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' stt ∧ (∃ p', ptrsOf stt = some p') ∧
        JrNZ stt ∧ (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' stt ∧ Phi stt + 1 ≤ Phi s0) ∧
        (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' stt ∧
          Phi stt + 1 ≤ Phi s0) ∧ KeepH guestC Γ0 Γ' s0 stt ∧
        (∀ v, r = .returned v → RootK s0 stt) ∧ (∀ v, r = .exception nmEvmErr v → RootK s0 stt) ∧
        BKeep guestC Γ0 s0 stt ∧ Ext Γ0 Γ' := by
    intro vs hvs callee r stt hR hg hna
    obtain ⟨caller, rfl, hbuf⟩ := hargs vs hvs
    have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite u0 callee) :=
      (G_locFree hF.hooks u0 _ _).mpr hG1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some p1 := (ptrsOf_congr rfl).trans hp1
    obtain ⟨hb1, hb2⟩ := hbuf Γ1 p1 hrun hch hE
    have hpre : PreGC (Phi u0 + gas.toNat + 2)
        (gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac)
        (callEntryStateHOLFinite u0 callee) Γ1 :=
      ⟨gas, res, caller, tgt, ca, tr, st, is, isz, os, osz, code, cn, dp, nac, value, rfl, fs, e, c,
        rest, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch, hfs, hsp,
        hout, hisz, by have := phi_locFree.entry (σ := σ) u0 callee; omega, hcn, jrNZ_congr rfl hJ,
        chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE,
        fun p hp => by
          rw [hpe, Option.some.injEq] at hp
          subst hp
          exact ⟨hb1, hb2⟩⟩
    obtain ⟨Γ', q, q', hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe,
      argsOK_any (sgA_any 16 _) rfl⟩ hpre
    obtain rfl : q = p1 := Option.some.inj (hc.1.symm.trans hpe)
    have hΦe : Phi (callEntryStateHOLFinite u0 callee) = Phi u0 := phi_locFree.entry u0 callee
    obtain ⟨hq1, hq2⟩ := hQ gas rfl
    have hR0 : RootK s0 (callEntryStateHOLFinite u0 callee) :=
      rootK_congr (s := s0) (t := u0) rfl rfl rfl rfl (rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain)
    have hcc : ChainOf (callEntryStateHOLFinite u0 callee) fs :=
      (chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch).chain
    refine ⟨Γ', hc.2.2.2.2.2.1, ⟨q', hc.2.1⟩,
      jrNZ_sumCore (by decide) (by decide) hc (jrNZ_congr rfl hJ), fun v hv => ?_, fun v hv => ?_,
      keepH_of_runT_sumCore hrun rfl hc,
      fun v hv => rootK_trans hR0 (hq1 v hv).2.2 ⟨fs, hcc⟩,
      fun v hv => rootK_trans hR0 (hq2 v hv).2.2 ⟨fs, hcc⟩,
      ⟨bkeep_of_runT_sumCore hrun rfl hGe (argsOK_any (sgA_any 16 _) rfl) hc (fun _ h => h),
        ext_trans hrun.2.2.2.1 hc.2.2.2.1⟩⟩
    · obtain ⟨h1, h2, -⟩ := hq1 v hv
      exact ⟨h1, by omega⟩
    · obtain ⟨h1, h2, -⟩ := hq2 v hv
      exact ⟨h1, by omega⟩
  refine hoareG_callA hspec ?_ ?_
  · intro s _ hs vs hvs callee v stt hR _ _
    subst hs
    obtain ⟨Γ', hG', ⟨q', hq'⟩, hJ', hret, -, hKe, hrk, -, hbk, hex⟩ := key vs hvs callee _ stt hR (by simp [Good])
      (not_abortive_ret v)
    obtain ⟨⟨fs', hch', hE'⟩, hΦ'⟩ := hret v rfl
    refine Or.inl ⟨rfl, kf1_congr (u := stt) ⟨hJ', ⟨Γ', q', fs', hG', hq', hch', hE', hKe, hrk v rfl, hbk, hex⟩, hΦ'⟩
      rfl rfl rfl rfl⟩
  · intro s _ hs vs hvs callee r stt hR _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    cases hr'
    obtain ⟨Γ', hG', -, hJ', hret, hexc, hKe, hrk, hrke, hbk, -⟩ := key vs hvs callee r stt hR (good_of_abn habn) hna
    refine ⟨Γ', (G_locFree hF.hooks stt _ _).mpr hG', ⟨fun v hv => ?_, fun v hv => ?_⟩,
      fun _ _ => jrNZ_congr rfl hJ', fun _ _ => jrNZ_congr rfl hJ',
      fun _ _ => keepH_congr rfl rfl hKe, fun _ _ => keepH_congr rfl rfl hKe,
      fun v hv => rootK_congr (s := s0) (t := stt) rfl rfl rfl rfl (hrk v hv),
      fun v hv => rootK_congr (s := s0) (t := stt) rfl rfl rfl rfl (hrke v hv),
      fun _ _ => bkeep_congr rfl rfl hbk, fun _ _ => bkeep_congr rfl rfl hbk⟩
    · obtain ⟨h1, h2⟩ := hret v hv
      have hpe : Phi (emptyLocalsHOLFinite stt) = Phi stt := phi_locFree stt _ _
      exact ⟨chainX_locFree.loc stt _ |>.mpr h1, by omega⟩
    · obtain ⟨h1, h2⟩ := hexc v hv
      have hpe : Phi (emptyLocalsHOLFinite stt) = Phi stt := phi_locFree stt _ _
      exact ⟨chainX_locFree.loc stt _ |>.mpr h1, by omega⟩

end gc

/-! ## Tab26-shaped summaries with a post -/

section tabQ
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **A tab26-shaped summary with a post `Qs`** on `KCall`: as `kcall_tab`, and the post holds
for the new run typing. -/
theorem kcall_tabQ (hfs : fs = (e, c) :: rest) {E : GEnv} (hgw : ∀ g ∈ E.gw, g ∈ [Hooks.gJn])
    {f : MlS} {sg : Sig} {cs : List Cap} {n : Nat} (hok : PlainOKB E f sg cs n)
    {Qs : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Bs : List (BitVec 64)} {d : Nat} {u : State σ} (hu : KC Bs d u) {vs : List (ValueHOL 64)}
    (hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1 →
      ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
      (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ArgsOK guestC Γ1 p1 sg.params vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) Qs vs
      (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    JrNZ st ∧ (∃ Γ1 Γ2 p2, RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ2 st p0 p2 ∧
      ChainL guestC tEV tCK Γ2 st fs ∧ ChainE GP GR Γ2 st fs ∧
      (∀ b ∈ Bs, BufOK guestC Γ2 p2 b.toNat 20) ∧ Qs vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2) ∧
      Phi st + d ≤ Phi s0 ∧ (act st = act s0 ∨ Phi st + 1 ≤ Phi s0) ∧
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      fld st.memory e 112 = fld u.memory e 112 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hlen, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, hQ, hBuf, hkE, -, hX⟩ := kc_coreB hF hfs
    (fun g h => hgw g (hsgw g h)) ⟨hev, hcc⟩ hjo (ks := evKs cs)
    (fun k hk => (hks k hk).1)
    (fun j hj hjk => (hks j hjk).2 (ksBad_3 j hj))
    (fun k hk hkx => (hks k hk).2 (ksBad_X k hkx))
    hrun hch hE hJ hR hfk hg hna
    (hA Γ1 p1 hrun hch hE hB)
    (reqOK_cs hG1 hJ hevo hcs)
    (fun a _ hw => capPW_cs (vs := vs) hF ((G_locFree hF.hooks u _ _).mpr hG1) hcs
      (fun k hk => (hks k hk).1) hw)
    (Or.inl ⟨fun h => (hks 8 h).2 (by decide), fun h => (hks 24 h).2 (by decide)⟩)
    (Or.inl ⟨fun h => (hks 18 h).2 (by decide), fun h => (hks 27 h).2 (by decide)⟩)
  refine ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, fun b hb => hBuf _ _ (hB b hb), hQ⟩, by omega, ?_, hkE,
    hX 14 (by decide)⟩
  rw [hact2]; omega

/-- The running EV's address scratch `ev + 240` is a valid block of any `KCall` run typing. -/
theorem kcall_addr {Bs : List (BitVec 64)} (hfs : fs = (e, c) :: rest) {Γ1 : Gam} {p1 : Ptrs}
    {u : State σ} (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : BufOK guestC Γ1 p1 (e + BitVec.ofNat 64 240).toNat 20 :=
  addr_bufOK hfs hrun hch

def dlgE : GEnv := ⟨[], [nm "calculate_delegation_cost", nm "ext_code_of"], [Hooks.gJn]⟩

theorem dlgE_dlg : PlainOKB dlgE (nm "calculate_delegation_cost") dlgSg dlgCs 1 := by decide +kernel
theorem dlgE_eco : PlainOKB dlgE (nm "ext_code_of") eocSg eocCs 1 := by decide +kernel
theorem evKs_dlg : evKs dlgCs = [] := by decide +kernel
theorem evKs_eoc : evKs eocCs = [] := by decide +kernel

/-- **`var dl = calculate_delegation_cost(to); k`** (`to = ev + 240`): `dl = <a, b, c>` with
`a = 0 → b = to`, and `b` a tracked block afterwards. -/
theorem hq_dlg (hD : DlgHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {rn : MlS}
    {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat} {u0 : State σ} (hu : KC [] d u0)
    (hx : ev u0 x = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hk : ∀ (a b cc : BitVec 64) (st : State σ), KC [b] d st → (a = 0 → b = e + BitVec.ofNat 64 240) →
      (∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (wv [a, b, cc]) { st with locals := u0.locals })
        k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn (shK 3) (nm "calculate_delegation_cost") [x] k)
      QC := by
  have hvs0 : evs u0 [x] = some [.val (.word (e + BitVec.ofNat 64 240))] := evs_cons hx evs_nil
  have hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b ∈ ([] : List (BitVec 64)), BufOK guestC Γ1 p1 b.toNat 20) →
      ArgsOK guestC Γ1 p1 dlgSg.params [.val (.word (e + BitVec.ofNat 64 240))] := by
    intro Γ1 p1 hrun hch _ _
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [dlgSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
    · simp [dlgSg] at hpt
  refine hq_decCall (Q := QC) (FunSpec.and (FunSpec.and (sumSpecA_relX hD) dlg_fp)
      (dlg_val guestCtx_code)) (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨⟨hR, hfk⟩, _⟩ habn
    rw [hvs0] at hvs
    cases hvs
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, -⟩, hΦ2, hact2, -, -⟩ := kcall_tabQ hfs
        (fun g h => h) dlgE_dlg hu hA hR
        (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
      exact qcall_of_gk ha0 (d := 0)
        ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, hact2⟩ (by rw [rbd_abn habn]) r rfl hna
  · intro vs hvs callee v st ⟨⟨hR, hfk⟩, hV⟩ hsh
    rw [hvs0] at hvs
    cases hvs
    have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
    obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, hQ⟩, hΦ2, hact2, hkE, hkX⟩ := kcall_tabQ hfs
      (fun g h => h) dlgE_dlg hu hA hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    obtain ⟨a, b, cc, rfl, hab⟩ := hV hg v rfl
    have hab' : a = 0 → b = e + BitVec.ofNat 64 240 := fun h => by
      have := hab h
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at this
      exact this.symm
    refine hk a b cc st ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b' hb' => ?_⟩, hΦ2, hact2⟩ hab'
      (fun j hj => hkE j hj (by rw [evKs_dlg]; simp)) hkX
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hb'
    subst b'
    by_cases ha : a = 0
    · rw [hab' ha]; exact addr_bufOK hfs hrun2 hch2
    · exact hQ a b cc rfl ha p2 hrun2.2.1

/-- **`var code = ext_code_of(x); k`** with `x` a tracked block: `code = <c, n>`,
`n + 63 < 2^64`. -/
theorem hq_eco (hE0 : EcoHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {rn : MlS}
    {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat} {b : BitVec 64} {u0 : State σ} (hu : KC [b] d u0)
    (hx : ev u0 x = some (.val (.word b)))
    (hk : ∀ (cc n : BitVec 64) (st : State σ), KC [] d st → n.toNat + 63 < 2 ^ 64 →
      (∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (wv [cc, n]) { st with locals := u0.locals })
        k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn (shK 2) (nm "ext_code_of") [x] k) QC := by
  have hvs0 : evs u0 [x] = some [.val (.word b)] := evs_cons hx evs_nil
  have hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b' ∈ [b], BufOK guestC Γ1 p1 b'.toNat 20) →
      ArgsOK guestC Γ1 p1 eocSg.params [.val (.word b)] := by
    intro Γ1 p1 hrun hch hE hB
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [eocSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨_, rfl, hB b (by simp)⟩
    · simp [eocSg] at hpt
  refine hq_decCall (Q := QC) (FunSpec.and (sumSpecA_relX hE0) eoc_fp)
    (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨hR, hfk⟩ habn
    rw [hvs0] at hvs
    cases hvs
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, -⟩, hΦ2, hact2, -, -⟩ := kcall_tabQ hfs
        (fun g h => h) dlgE_eco hu hA hR (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
      exact qcall_of_gk ha0 (d := 0)
        ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, hact2⟩ (by rw [rbd_abn habn]) r rfl hna
  · intro vs hvs callee v st ⟨hR, hfk⟩ hsh
    rw [hvs0] at hvs
    cases hvs
    have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
    obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, hQ⟩, hΦ2, hact2, hkE, hkX⟩ := kcall_tabQ hfs
      (fun g h => h) dlgE_eco hu hA hR (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    obtain ⟨cc, n, rfl⟩ := wv2_of hsh
    exact hk cc n st ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b' hb' => by cases hb'⟩, hΦ2, hact2⟩
      (hQ cc n rfl) (fun j hj => hkE j hj (by rw [evKs_eoc]; simp)) hkX

end tabQ

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.qcall_of_kf1
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_tail
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_gc
#print axioms InitECandidate.Solver.MemSafe.Calls.postOK_qj
#print axioms InitECandidate.Solver.MemSafe.Calls.kcall_tabQ
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_dlg
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_eco
