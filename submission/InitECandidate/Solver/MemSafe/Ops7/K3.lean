import InitECandidate.Solver.MemSafe.Ops7.K2
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

namespace InitECandidate.Solver.MemSafe.Ops7
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


end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_tail
