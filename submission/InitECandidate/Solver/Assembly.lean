import InitECandidate.Solver.Assembly.PanToWord
import InitECandidate.Solver.Assembly.LabTarget
import InitECandidate.Solver.Assembly.Chain
import InitECandidate.Solver.Assembly.BaselinePrograms
import InitECandidate.Solver.Assembly.Baseline

/-!
# Clock-level assembly of the compiler chain: the native gap, parametrized

Main theorem (`Assembly/Baseline.lean`):

```
theorem native_halts_within_param (Bsrc Sc Sw Ss : Nat)
    (hcost : SourceCost.Cost Guest.HostMemory SourceCost.guestCtx
      (.call none (ofString "main") []) Bsrc)
    (hB : BaselineProgramBounds Sc Sw Ss)
    (input : Guest.InputBlob) (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events)
    (ms : riscv_state) (related : targetStateRel riscvTarget installedAsm ms) :
    ∃ n ≤ nativeStepBound Bsrc Sc Sw Ss, ∃ post ffi',
      evaluateTargetHOL baselineMachineConfig (sourceFfi input) n ms =
        (.halt outcome, post, ffi') ∧ ffi'.ioEvents = events
```

## The bound

`nativeStepBound B Sc Sw Ss =
   7 * ((2 * Ss + 3) * (2 * ((Sw + 2) * ((Sc + 2) * (B + 1) + 3) + 1) + 1) + 4 * Ss) + 7`

(monotone in `B`; leading term `28 * (2 Ss + 3) * (Sw + 2) * (Sc + 2) * B`). Per stage, from a
minimal source run of `k ≤ B` ticks (final clock `0`):

* Pan → Crep (`frontEnd_chainA`): clock `k + 1`;
* Crep → Loop (`crepToLoop_run_bounded`): `+ k'`, `k' ≤ (Sc + 1) (k + 1) + 3`, so the Loop and
  compiled Word (`frontEnd_chainB`) entry clock is `kw ≤ (Sc + 2) (k + 1) + 3`;
* Word → Stack (`entrySimulationB_makeInit`): `KS = kw + ck ≤ (Sw + 2) kw + 1`;
* stack sub-passes (`stackChain_entry_bounded`): `K3 = KS + e + 1`, `e ≤ KS + 1`;
* Stack → Lab (`stackCall_labHalt_bounded`): `Klab = K3 - 1 + ck2 ≤ (2 Ss + 3)(2 KS + 1) + 4 Ss`;
* Lab → RISC-V (`machineLab_halt_bounded`): at most `7 Klab + 7` steps.

## Hypotheses

* `hcost`: `main()` costs at most `Bsrc` clock ticks in the challenge context (the hypothesis
  of `SourceCost.sourceBehaviour_terminate_bounded`; `native_halts_within_param_of_table` reads
  it off a sound cost table, `Bsrc = 1 + Bm`).
* `BaselineProgramBounds Sc Sw Ss` (`Assembly/BaselinePrograms.lean`), on the baseline's
  certified compiled programs: `3 ≤ Sc`, `1 ≤ Sw`; `csize ≤ Sc` on every body of
  `crepCodeOf sourceDeclarations`; `wsize ≤ Sw` on every procedure of
  `BackendStages.Native.programs0` (the `word_to_word` output); `noA` on every procedure of
  `BackendStages.Native.stack` (the `word_to_stack` output) and `okP [storeConstsStubLocation]`
  on each except the constant-store stub; `psize ≤ Ss` on every procedure of its `stack_remove`
  image `FullMakeInitSemantics.code2 … BackendStages.Native.stack`.

Everything else is discharged as the baseline does (installation transport to `ms`, the
compiled artifact, its certified stack depth — hence the precise resource flag and no
stack-overflow branch — and all static source and installation facts); `LinesBounded 24` of the
target code is discharged by `LineBound`.

## Files

* `Assembly/PanToWord.lean`: Pan → compiled Word at the clock level (`panToWord_clock`, the
  clock-level `panToWordStateRelImpSemantics`), and the wrappers at the baseline chain's word
  state (`panToWordStageLab_clock`).
* `Assembly/LabTarget.lean`: Lab → RISC-V at the baseline chain's initial lab state
  (`semanticsCompile_halt_bounded`, `machineLab_halt_bounded`: alignment, `filter_skip` and
  `makeInit_stateRel` at the clock level).
* `Assembly/Chain.lean`: the whole chain under the premises of
  `pan_to_target_compile_semantics` (`panToTarget_halts_bounded`), `ProgramBounds`,
  `nativeStepBound`.
* `Assembly/BaselinePrograms.lean`: the baseline's pass outputs, `LinesBounded 24`,
  `BaselineProgramBounds` → `ProgramBounds`.
* `Assembly/Baseline.lean`: `native_halts_within_param` (+ `_of_table`, `_skeleton`,
  `native_halts_within_of_programBounds`).
-/

#print axioms InitECandidate.Solver.Assembly.panToWord_clock
#print axioms InitECandidate.Solver.Assembly.panToWordStageLab_clock
#print axioms InitECandidate.Solver.Assembly.semanticsCompile_halt_bounded
#print axioms InitECandidate.Solver.Assembly.machineLab_halt_bounded
#print axioms InitECandidate.Solver.Assembly.panToTarget_halts_bounded
#print axioms InitECandidate.Solver.Assembly.programBounds_baseline
#print axioms InitECandidate.Solver.Assembly.native_halts_within_param
#print axioms InitECandidate.Solver.Assembly.native_halts_within_param_of_table
#print axioms InitECandidate.Solver.Assembly.native_halts_within_skeleton
