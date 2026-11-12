import InitECandidate.Solver.Assembly.BaselinePrograms
import InitECandidate.Proofs.NativeBaseline
import InitECandidate.Solver.SourceCost.SourceBound
import InitE.Observations
import Guest.GasLimit

/-!
# The native gap of the skeleton, parametrized: `native_halts_within_param`

From the installed native entry state `ms` (`targetStateRel riscvTarget installedAsm ms`), for
every input whose source behaviour is `.terminate outcome events`, the baseline machine halts
with `.halt outcome` and the source events within `nativeStepBound Bsrc Sc Sw Ss` steps, where

* `Bsrc` bounds the clock of `main` (`SourceCost.Cost … guestCtx (main()) Bsrc`, the hypothesis
  of `SourceCost.sourceBehaviour_terminate_bounded`; the minimal terminating run of `main`
  consumes at most `Bsrc` ticks);
* `Sc`, `Sw`, `Ss` are the code-size bounds of `BaselineProgramBounds` on the baseline's
  certified compiled programs (`csize` of the Crep program, `wsize` of
  `BackendStages.Native.programs0`, `psize` of the `stack_remove` image of
  `BackendStages.Native.stack`), together with `noA` / `okP` on `BackendStages.Native.stack`,
  `3 ≤ Sc`, `1 ≤ Sw` (`LinesBounded 24` is discharged, `BaselinePrograms.lean`);

and (`Chain.lean`)

  `nativeStepBound B Sc Sw Ss =
     7 * ((2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (B + 1) + 3) + 1) + 1) + 4 * Ss) + 7`.

Every other premise of the compiler chain is discharged exactly as the baseline does
(`NativeBaseline.lean`, `BaselineCertificate.lean`, `BaselineCorrectness.lean`,
`OracleBaselineCorrectness.lean`, `CompilerOracles.lean`): installation transport to `ms`,
the compiled artifact and its certified stack depth (giving the precise resource flag, hence no
stack-overflow `Halt`), the static source facts and the installation facts.
-/

namespace InitECandidate.Solver.Assembly

open Flapjack Flapjack.Pancake.PanLang Flapjack.Basis.Pure.MlString Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Backend.RiscVConfig
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.PanToTarget (mainFirstHOL semanticsDecls_mainFirstHOL)
open InitE InitECandidate.Proofs
open InitECandidate.Solver.Compiler.FrontEnd (panDeclsInit panRun semanticsDecls_eq_panDeclsInit
  panDeclsInit_mainFirstHOL pan_min_clock)
open InitECandidate.Solver.SourceCost (Cost guestCtx InCtx)

set_option autoImplicit false

/-- The native gap from the source clock bound `Bsrc` of `main` in the challenge context and
the program side conditions `ProgramBounds` of the baseline compiler's outputs (quantified over
the pass outputs). -/
theorem native_halts_within_of_programBounds_src (Bsrc Sc Sw Ss : Nat)
    (hB : ProgramBounds baselineCompilerConfig riscvConfig sourceDeclarations Sc Sw Ss)
    (input : Guest.InputBlob)
    (hsrc : ∀ s0, panDeclsInit (sourceInitialState input) (Guest.Software.guestAst.map declToHOL) =
      some s0 → SourceCost.SrcBoundAt s0 (ofString "main") Bsrc)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events := by
  -- the installation at `ms` (`baseline_installation_transport`)
  have installed := baseline_installation_transport input ms related (baseline_installed input)
  obtain ⟨hmc, hart, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
    haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hinstalled, hlimits⟩ := installed
  -- the compiled artifact and its stack depth (`baseline_behaviour_eq`)
  obtain ⟨depth, hdepth, hbound⟩ := sourceLogicalStackBound_bounded
  have hcomp : compileProgMaxAsmExecutable (oracleCompilerConfig WordBackend.oracles) riscvConfig
      sourceDeclarations =
        (some (InitECandidate.nativeCode, InitECandidate.bitmaps, baselineConfig), some depth) := by
    apply Prod.ext
    · have ha := hart
      rw [baseline_ast_compilation.2, compileProgAsmFast_eq_fst] at ha
      exact ha
    · exact hdepth
  have hconfig : baselineMachineConfig.target.config = riscvConfig := by rw [hmc.1]; rfl
  rw [← hconfig, compileProgMaxAsmExecutable_eq] at hcomp
  -- the precise resource flag (`oracle_baseline_behaviour_eq`)
  have hprecise : optionLt (some depth)
      (some (readLimits baselineMachineConfig.target.config (oracleCompilerConfig WordBackend.oracles)
        baselineMachineConfig ms).1) = true := by
    change optionLt (some depth)
      (some (readLimits baselineMachineConfig.target.config pancakeRiscVBackendConfig
        baselineMachineConfig ms).1) = true
    rw [hlimits]
    simpa only [optionLt, decide_eq_true_eq] using
      (Nat.lt_of_le_of_lt hbound oracle_stack_bound_fits)
  -- the configuration premises (`panToTargetCompileSemanticsOraclesRiscV`)
  have hcfg := oracleBackendConfigOk WordBackend.oracles
  rw [← hconfig] at hcfg
  have hinit := oracleMachineInitOk WordBackend.oracles baselineMachineConfig hmc
  rw [← hconfig] at hinit
  -- non-`Fail` (`panToTargetCompileSemanticsOraclesRiscVSource`)
  have hsem := semanticsDecls_mainFirstHOL (sourceInitialState input) (ofString "main")
    (Guest.Software.guestAst.map declToHOL) sourceHasMain
  have nonfail : PanSemStateFiniteExact.semanticsDecls (sourceInitialState input)
      (ofString "main") sourceDeclarations ≠ .fail := by
    show PanSemStateFiniteExact.semanticsDecls (sourceInitialState input) (ofString "main")
      (mainFirstHOL (Guest.Software.guestAst.map declToHOL)) ≠ .fail
    rw [hsem]
    show sourceBehaviour input ≠ .fail
    rw [source]
    intro h
    cases h
  -- the clock-level compiler chain
  obtain ⟨s0, hs0, hchain⟩ := panToTarget_halts_bounded (oracleCompilerConfig WordBackend.oracles)
    baselineMachineConfig hmc.1 sourceDeclarations InitECandidate.nativeCode InitECandidate.bitmaps
    baselineConfig (some depth) (sourceInitialState input) (sourceFfi input) ms globalsWords
    baselineHeapLen baselineAdj2 baselineAdj4 3788 0 (ofString "main") Sc Sw Ss
    (by rw [hconfig]; exact hB) hprecise
    ⟨hcomp, sourceGoodCode, sourceDistinctParams, sourceDistinctFunctions,
      rfl, rfl, rfl, sourceExceptionBound, rfl, hcfg, riscvMachineConfigOk _ hmc, hinit,
      by rw [hconfig]; decide, hpositive,
      by simpa only [sourceDeclarations, globalsWords] using sourceGlobalsSize.symm,
      hsplit, hbase, source_globals_allocatable input,
      hlen, htop, hglobals, hdomain, haligned, hadj2, hadj4, hleft, hright, hmax,
      oracleHeapLimit_lt WordBackend.oracles, rfl, hendian, trivial, hinstalled, rfl, nonfail⟩
  -- the source run: post-declaration state `s0`, in the challenge context
  have hdecls : panDeclsInit (sourceInitialState input) (Guest.Software.guestAst.map declToHOL) =
      some s0 := by
    rw [← panDeclsInit_mainFirstHOL _ _ sourceHasMain]
    exact hs0
  have hsem0 : sourceBehaviour input = PanSemStateFiniteExact.semantics s0 (ofString "main") := by
    unfold sourceBehaviour
    rw [semanticsDecls_eq_panDeclsInit, hdecls]
  rw [hsem0] at source
  -- a run of `main` consuming at most `Bsrc` ticks, made minimal (final clock `0`)
  obtain ⟨k, t, r, hrun, -, hev, hk, hout⟩ :=
    SourceCost.semantics_terminate_bounded_at (hsrc s0 hdecls) source
  have hout' : SrcOutcome r outcome := by
    rcases hout with ⟨e, rfl, rfl⟩ | ⟨v, rfl, rfl⟩ <;> rfl
  have hmin := pan_min_clock (.call none (ofString "main") []) s0 k r t hrun
    (SrcOutcome.terminates hout').2
  obtain ⟨N, ms', hN, htgt⟩ := hchain (k - t.clock) r { t with clock := 0 } outcome hmin hout' rfl
  exact ⟨N, le_trans hN (nativeStepBound_mono (by omega)), ms', _, htgt, by rw [hev]⟩

/-- The post-declaration state of the source run lies in the challenge context. -/
theorem inCtx_of_panDeclsInit (input : Guest.InputBlob)
    {s0 : PanSemStateFiniteExact 64 Guest.HostMemory}
    (hdecls : panDeclsInit (sourceInitialState input) (Guest.Software.guestAst.map declToHOL) =
      some s0) : InCtx s0 guestCtx := by
  unfold panDeclsInit at hdecls
  split at hdecls
  · cases hdecls
  · rename_i st _
    have hd := SourceCost.guestDecls_domains input st s0 hdecls
    exact SourceCost.inCtx_guestCtx (SourceCost.guestDecls_code_lookup input st s0 hdecls)
      hd.1 hd.2

theorem native_halts_within_of_programBounds (Bsrc Sc Sw Ss : Nat)
    (hcost : Cost Guest.HostMemory guestCtx (.call none (ofString "main") []) Bsrc)
    (hB : ProgramBounds baselineCompilerConfig riscvConfig sourceDeclarations Sc Sw Ss)
    (input : Guest.InputBlob) (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events :=
  native_halts_within_of_programBounds_src Bsrc Sc Sw Ss hB input
    (fun _ hdecls => SourceCost.srcBoundAt_of_cost (inCtx_of_panDeclsInit input hdecls) hcost)
    outcome events source ms related

/-- `native_halts_within_param` from a clock bound for `main` at the post-declaration states
(e.g. a conditional cost of `main` whose precondition those states satisfy). -/
theorem native_halts_within_param_src (Bsrc Sc Sw Ss : Nat)
    (hB : BaselineProgramBounds Sc Sw Ss) (input : Guest.InputBlob)
    (hsrc : ∀ s0, panDeclsInit (sourceInitialState input) (Guest.Software.guestAst.map declToHOL) =
      some s0 → SourceCost.SrcBoundAt s0 (ofString "main") Bsrc)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events :=
  native_halts_within_of_programBounds_src Bsrc Sc Sw Ss (programBounds_baseline hB) input hsrc
    outcome events source ms related

/-- **The native gap, parametrized.** Hypotheses: the source clock bound `Bsrc` of `main` in
the challenge context (`hcost`), and the program side conditions `BaselineProgramBounds Sc Sw Ss`
on the baseline's certified compiled programs (`csize ≤ Sc` on the Crep program, `wsize ≤ Sw` on
`BackendStages.Native.programs0`, `noA` / `okP` on `BackendStages.Native.stack`, `psize ≤ Ss` on
its `stack_remove` image, `3 ≤ Sc`, `1 ≤ Sw`). From the installed native entry `ms`, the
baseline machine halts with the source outcome and events within
`nativeStepBound Bsrc Sc Sw Ss =
  7 * ((2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (Bsrc + 1) + 3) + 1) + 1) + 4 * Ss) + 7`
steps. -/
theorem native_halts_within_param (Bsrc Sc Sw Ss : Nat)
    (hcost : Cost Guest.HostMemory guestCtx (.call none (ofString "main") []) Bsrc)
    (hB : BaselineProgramBounds Sc Sw Ss)
    (input : Guest.InputBlob) (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events :=
  native_halts_within_of_programBounds Bsrc Sc Sw Ss hcost (programBounds_baseline hB) input
    outcome events source ms related

/-- `native_halts_within_param` with the clock bound of `main` read off a sound cost table for
`guestCtx` (as `SourceCost.sourceBehaviour_terminate_bounded_of_table`): `Bsrc = 1 + Bm`. -/
theorem native_halts_within_param_of_table (Bm Sc Sw Ss : Nat) {st : SourceCost.TblState}
    (hst : SourceCost.StateSound Guest.HostMemory guestCtx st)
    (hm : st.1.lookup (ofString "main") = some Bm)
    (hB : BaselineProgramBounds Sc Sw Ss)
    (input : Guest.InputBlob) (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound (1 + Bm) Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events :=
  native_halts_within_param (1 + Bm + 0) Sc Sw Ss
    (SourceCost.cost_call_of_table hst hm []) hB input outcome events source ms related

/-- `native_halts_within_param` in the exact shape of `Skeleton.native_halts_within` (with
`nativeBound := nativeStepBound Bsrc Sc Sw Ss`; the gas and coverage premises are not needed). -/
theorem native_halts_within_skeleton (Bsrc Sc Sw Ss : Nat)
    (hcost : Cost Guest.HostMemory guestCtx (.call none (ofString "main") []) Bsrc)
    (hB : BaselineProgramBounds Sc Sw Ss)
    (input : Guest.InputBlob)
    (_gas : Guest.GasLimit.declaredGasLimit input ≤ 200000000)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (_source : sourceBehaviour input = .terminate outcome events)
    (_covered : coveredOutcome outcome)
    (ms : riscv_state) (_related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events :=
  native_halts_within_param Bsrc Sc Sw Ss hcost hB input outcome events _source ms _related

end InitECandidate.Solver.Assembly

#print axioms InitECandidate.Solver.Assembly.native_halts_within_of_programBounds
#print axioms InitECandidate.Solver.Assembly.native_halts_within_param
#print axioms InitECandidate.Solver.Assembly.native_halts_within_param_of_table
#print axioms InitECandidate.Solver.Assembly.native_halts_within_skeleton
