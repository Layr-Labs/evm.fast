import InitECandidate.Solver.LineBound.Padded
import InitECandidate.Proofs.BackendStages.Artifact
import InitECandidate.Solver.Compiler.LabToTarget

/-!
# `LinesBounded 24` for the baseline's concrete target code

The baseline's compiler chain reaches lab → target with the lab program
`Sections.program` (the `StackToLab.compile` output, `Sections.compile_eq`). Flapjack's
`semanticsCompileLemmaPrime` (`Flapjack/Compiler/Backend/LabToTarget/SemanticsCompile.lean`)
unfolds `LabToTarget.compile` to

  `removeLabels c.initClock mc.target.config 0 .ln (findFfiNames (filterSkip code))
     (filterSkip code) = some (code2, labs)`

and feeds that `code2` to `makeInit_initOk` / `semanticsMakeInit`. For the baseline
(`code = Sections.program`, `mc.target.config = riscvConfig`, `c.initClock = 5`) the baseline
proves (privately, in `BackendStages/Artifact.lean`) that this `removeLabels` call returns
`some (Final.padded0, Target.labelsFinal)`. Here:

* `padded0_linesBounded : LinesBounded 24 Final.padded0` (`LineBound/Padded.lean`): one
  kernel-checked Boolean evaluation per baseline `PaddedN` shard (`LineBound/Chunk*.lean`),
  composed along the baseline's `Final.padded_k` chain;
* `removeLabels_eq`: the baseline's `removeLabels` composition, re-derived from its public
  stage facts, for every positive clock;
* `linesBounded_of_removeLabels`: any `code2` produced by that `removeLabels` call (the
  hypothesis shape of `makeInit_labHalt_target_bounded` / `semanticsCompileLemmaPrime`) is
  `Final.padded0` and satisfies `LinesBounded 24 code2`;
* `riscv_labHalt_target_bounded_24_baseline`: `riscv_labHalt_target_bounded_24` with the
  `LinesBounded 24 code2` hypothesis discharged by that `removeLabels` equation.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.LineBound

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabSem
open InitECandidate.Proofs.BackendStages InitECandidate.Proofs.BackendStages.TargetChecks
open InitECandidate.Solver.Compiler.LabToTarget

/-- The stable label-removal pass of the baseline (as in `BackendStages/Artifact.lean`),
at any clock. -/
theorem removeLabelsLoop_stable_eq (clock : Nat) :
    LabToTarget.removeLabelsLoop clock riscvConfig 0 .ln Target.ffis Phase0.program =
      some (Final.padded0, Target.labelsFinal) :=
  InitECandidate.Proofs.BackendComputation.removeLabelsLoop_of_stages
    clock 0 riscvConfig .ln Target.labels1 Target.labelsFinal Target.ffis
    Phase0.program Phase1.program Final.aligned0 Final.final0 Final.padded0
    Phase1.labels_eq Phase1.encode_eq Final.alignment0_eq FinalLabels.compute_eq
    Final.rewrite0_eq Final.padding0_eq Final.valid0 ZeroLabels.valid

/-- The baseline's label-removal loop (one unstable pass, then the stable pass). -/
theorem removeLabelsLoop_eq (clock : Nat) :
    LabToTarget.removeLabelsLoop (clock + 1) riscvConfig 0 .ln Target.ffis Initial.program =
      some (Final.padded0, Target.labelsFinal) :=
  InitECandidate.Proofs.BackendComputation.removeLabelsLoop_of_retry
    clock 0 riscvConfig .ln Target.labels0 Target.ffis Initial.program Phase0.program
    (some (Final.padded0, Target.labelsFinal)) Phase0.labels_eq Phase0.encode_eq
    (removeLabelsLoop_stable_eq clock)

/-- The baseline's `removeLabels` call on the filtered lab program returns `Final.padded0`
(for the baseline clock `initClock = 5`, and any other positive clock). -/
theorem removeLabels_eq (clock : Nat) :
    LabToTarget.removeLabels (clock + 1) riscvConfig 0 .ln Target.ffis Filtered.program =
      some (Final.padded0, Target.labelsFinal) := by
  unfold LabToTarget.removeLabels
  rw [Encoded.compile_eq, Initial.origin_eq]
  exact removeLabelsLoop_eq clock

/-- The `removeLabels` call of Flapjack's `LabToTarget.compile` correctness proof
(`semanticsCompileLemmaPrime`, `ffiNames = none`, `pos = 0`, `labels = .ln`) on the
baseline lab program `Sections.program`: its target code is `Final.padded0`, hence has lines
of at most 24 bytes. -/
theorem linesBounded_of_removeLabels {clock : Nat} (hclock : 0 < clock)
    {code2 : LabProgHOL 64} {labs : Spt (Spt Nat)}
    (h : LabToTarget.removeLabels clock riscvConfig 0 .ln
      (LabToTarget.findFfiNames (LabFilter.filterSkip Sections.program))
      (LabFilter.filterSkip Sections.program) = some (code2, labs)) :
    code2 = Final.padded0 ∧ labs = Target.labelsFinal ∧ LinesBounded 24 code2 := by
  obtain ⟨k, rfl⟩ : ∃ k, clock = k + 1 := ⟨clock - 1, by omega⟩
  rw [Filtered.compile_eq, Metadata.ffi_eq, removeLabels_eq k] at h
  cases h
  exact ⟨rfl, rfl, padded0_linesBounded⟩

/-- Specialization to the baseline configuration's own clock
(`RiscVConfig.pancakeRiscVBackendConfig.labConf.initClock = 5`). -/
theorem linesBounded_of_removeLabels_baseline {code2 : LabProgHOL 64} {labs : Spt (Spt Nat)}
    (h : LabToTarget.removeLabels RiscVConfig.pancakeRiscVBackendConfig.labConf.initClock
      riscvConfig 0 .ln
      (LabToTarget.findFfiNames (LabFilter.filterSkip Sections.program))
      (LabFilter.filterSkip Sections.program) = some (code2, labs)) :
    LinesBounded 24 code2 :=
  (linesBounded_of_removeLabels (clock := 5) (by decide) h).2.2

end InitECandidate.Solver.LineBound

namespace InitECandidate.Solver.LineBound.Corollary

open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.LabProps
open InitECandidate.Solver.Compiler.LabToTarget

/-- `riscv_labHalt_target_bounded_24` for the baseline's target code: the line-length
hypothesis is replaced by the baseline `removeLabels` equation producing `code2`. -/
theorem riscv_labHalt_target_bounded_24_baseline {F : Type}
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (s : LabSem.State 64 Config F) (code2 : LabProgHOL 64) (labs : Spt (Spt Nat))
    (t1 : AsmState 64)
    (hrel : stateRel (mc, code2, labs, p) s t1 ms) (htie : oracleTie mc ms s)
    (hni : noInstall s.code)
    (hrem : LabToTarget.removeLabels RiscVConfig.pancakeRiscVBackendConfig.labConf.initClock
      riscvConfig 0 .ln
      (LabToTarget.findFfiNames
        (LabFilter.filterSkip InitECandidate.Proofs.BackendStages.Sections.program))
      (LabFilter.filterSkip InitECandidate.Proofs.BackendStages.Sections.program) =
        some (code2, labs))
    (clock : Nat) (outcome : HolOutcome) (s' : LabSem.State 64 Config F)
    (hev : evaluate { s with clock := clock } = (.halt outcome, s')) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * (clock - s'.clock) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc s.ffi N' ms = (.halt outcome, ms', s'.ffi) :=
  riscv_labHalt_target_bounded_24 mc target p ms s code2 labs t1 hrel htie hni
    (InitECandidate.Solver.LineBound.linesBounded_of_removeLabels_baseline hrem)
    clock outcome s' hev

end InitECandidate.Solver.LineBound.Corollary

#print axioms InitECandidate.Solver.LineBound.padded0_linesBounded
#print axioms InitECandidate.Solver.LineBound.removeLabels_eq
#print axioms InitECandidate.Solver.LineBound.linesBounded_of_removeLabels
#print axioms InitECandidate.Solver.LineBound.linesBounded_of_removeLabels_baseline
#print axioms InitECandidate.Solver.LineBound.Corollary.riscv_labHalt_target_bounded_24_baseline
