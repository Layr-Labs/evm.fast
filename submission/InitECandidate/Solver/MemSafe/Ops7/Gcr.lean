import InitECandidate.Solver.MemSafe.Ops7.Kit
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `var started = generic_create(args); <tail>` on `KCall` (sonnet-create)

**`hq_gcr`**: from `KCall [ca] d` (`d ≥ 3`: the amount charged before), stack room and the
argument values `gcrArgs en ca ms mz`, the call `generic_create` (`gcr_sumSpecT_guestR`) ends in a
`KF1` state (any chain, `Φ` strictly below the handler's entry), and `callTail` closes the body.
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

section gcr
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem hq_gcr (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {ca ms mz : BitVec 64} {en : ValueHOL 64} {d : Nat} {u0 : State σ} (hu : KC [ca] d u0)
    (hargs : evs u0 args = some (gcrArgs en ca ms mz))
    (hsp : (fld u0.memory e evSp).toNat < (fld u0.memory e evStackCap).toNat) (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0)
      (.decCall (nm "started") .one (nm "generic_create") args callTail) (QCall Γ0 s0) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, -⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hspec := gcr_sumSpecT_guestR (σ := σ) hP (M := Phi u0 + 2)
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r (stt : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ))
        (sgA 4 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGCR (Phi u0 + 2))
        (fun _ _ Γ a => ¬ KCell guestC Γ a) QGCR vs (callEntryStateHOLFinite u0 callee) r stt →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' stt ∧ (∃ p', ptrsOf stt = some p') ∧
        JrNZ stt ∧ (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' stt ∧
          Phi stt + 1 ≤ Phi s0) ∧
        (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' stt ∧
          Phi stt + 1 ≤ Phi s0) ∧ KeepH guestC Γ0 Γ' s0 stt ∧
        (∀ v, r = .returned v → RootK s0 stt) ∧ (∀ v, r = .exception nmEvmErr v → RootK s0 stt) ∧
        BKeep guestC Γ0 s0 stt ∧ Ext Γ0 Γ' := by
    intro vs hvs callee r stt hR hg hna
    rw [hargs] at hvs
    cases hvs
    have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite u0 callee) :=
      (G_locFree hF.hooks u0 _ _).mpr hG1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some p1 := (ptrsOf_congr rfl).trans hp1
    have hpre : PreGCR (Phi u0 + 2) (gcrArgs en ca ms mz) (callEntryStateHOLFinite u0 callee) Γ1 :=
      ⟨en, ca, ms, mz, rfl, fs, e, c, rest,
        chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch, hfs,
        chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE, hsp,
        by have := phi_locFree.entry (σ := σ) u0 callee; omega, jrNZ_congr rfl hJ,
        fun p hp => by
          rw [hpe, Option.some.injEq] at hp
          subst hp
          exact hB ca (List.mem_singleton_self ca)⟩
    obtain ⟨Γ', q, q', hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe,
      argsOK_any (sgA_any 4 _) rfl⟩ hpre
    obtain rfl : q = p1 := Option.some.inj (hc.1.symm.trans hpe)
    have hΦe : Phi (callEntryStateHOLFinite u0 callee) = Phi u0 := phi_locFree.entry u0 callee
    obtain ⟨hq1, hq2⟩ := hQ
    have hR0 : RootK s0 (callEntryStateHOLFinite u0 callee) :=
      rootK_congr (s := s0) (t := u0) rfl rfl rfl rfl (rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain)
    have hcc : ChainOf (callEntryStateHOLFinite u0 callee) fs :=
      (chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch).chain
    refine ⟨Γ', hc.2.2.2.2.2.1, ⟨q', hc.2.1⟩,
      jrNZ_sumCore (by decide) (by decide) hc (jrNZ_congr rfl hJ), fun v hv => ?_, fun v hv => ?_,
      keepH_of_runT_sumCore hrun rfl hc,
      fun v hv => rootK_trans hR0 (hq1 v hv).2.2 ⟨fs, hcc⟩,
      fun v hv => rootK_trans hR0 (hq2 v hv).2.2 ⟨fs, hcc⟩,
      ⟨bkeep_of_runT_sumCore hrun rfl hGe (argsOK_any (sgA_any 4 _) rfl) hc (fun _ h => h),
        ext_trans hrun.2.2.2.1 hc.2.2.2.1⟩⟩
    · obtain ⟨h1, h2, -⟩ := hq1 v hv
      exact ⟨h1, by omega⟩
    · obtain ⟨h1, h2, -⟩ := hq2 v hv
      exact ⟨h1, by omega⟩
  refine hq_decCall (Q := QC) hspec (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r stt hR habn r' hr' hna
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
  · intro vs hvs callee v stt hR hsh
    obtain ⟨Γ', hG', ⟨q', hq'⟩, hJ', hret, -, hKe, hrk, -, hbk, hex⟩ := key vs hvs callee _ stt hR (by simp [Good])
      (not_abortive_ret v)
    obtain ⟨⟨fs', hch', hE'⟩, hΦ'⟩ := hret v rfl
    exact hq_tail (Γ0 := Γ0) (kf1_congr (u := stt) ⟨hJ', ⟨Γ', q', fs', hG', hq', hch', hE', hKe, hrk v rfl, hbk, hex⟩, hΦ'⟩
      rfl rfl rfl rfl)

end gcr

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_gcr
