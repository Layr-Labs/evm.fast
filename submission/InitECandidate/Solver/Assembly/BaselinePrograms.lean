import InitECandidate.Solver.Assembly.Chain
import InitECandidate.Proofs.ArtifactComposition
import InitECandidate.Solver.LineBound

/-!
# The baseline's compiled programs, for `ProgramBounds`

`ProgramBounds` quantifies over the outputs of the deterministic passes. For the baseline
(`baselineCompilerConfig`, `riscvConfig`, `sourceDeclarations`) these are the certified
constants of the baseline's compiler computation (`ArtifactComposition.lean`):

* `baseline_wordToWord_eq`: the `word_to_word` output is `BackendStages.Native.programs0`
  (`FrontendStages.frontend_eq`, `WordBackend.compileWith_eq`, `StackAgreement.outputs_eq`,
  `Native.programs_eq`, and `compileWith regAllocExecutable = compile`);
* `BackendStages.Native.native_eq`: the `word_to_stack` output stack program is
  `BackendStages.Native.stack`;
* `baseline_lines`: the `removeLabels` target code has lines of at most 24 bytes
  (`Sections.compile_eq` and `LineBound.linesBounded_of_removeLabels_baseline`).

`BaselineProgramBounds Sc Sw Ss` states the remaining side conditions on these constants, and
`programBounds_baseline` turns it into `ProgramBounds baselineCompilerConfig riscvConfig
sourceDeclarations Sc Sw Ss`.
-/

namespace InitECandidate.Solver.Assembly

open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target
open InitE InitECandidate.Proofs
open InitECandidate.Solver.Compiler.CrepToLoop (csize)
open InitECandidate.Solver.Compiler.WordToStack (wsize)
open InitECandidate.Solver.Compiler.StackPasses (noA okP)
open InitECandidate.Solver.Compiler.Flatten (psize)

set_option autoImplicit false

/-- The baseline's `word_to_word` output. -/
theorem baseline_wordToWord_eq :
    WordToWord.compile baselineCompilerConfig.wordToWordConf riscvConfig
      (panToWordCompileProgHOL riscvConfig.isa sourceDeclarations) =
        ([], BackendStages.Native.programs0) := by
  have hra : RegAlloc.regAllocExecutable = RegAlloc.regAlloc := by
    funext a c l m t f s
    exact RegAlloc.regAllocExecutable_eq a c l m t f s
  rw [← WordToWord.compileWith_eq_compile RegAlloc.regAllocExecutable hra,
    FrontendStages.frontend_eq]
  change WordToWord.compileWith RegAlloc.regAllocExecutable WordBackend.config
    riscvConfig WordBackend.inputs = ([], BackendStages.Native.programs0)
  have hp : BackendStages.Native.programs0 = StackAnalysis.outputs :=
    BackendStages.Native.programs_eq
  rw [WordBackend.compileWith_eq, WordBackend.StackAgreement.outputs_eq, hp]

/-- The baseline's `word_to_word` and `word_to_stack` outputs. -/
theorem baseline_programs_eq {col : List (Option (Spt Nat))}
    {wprog : List (Nat × Nat × WordLangProgHOL (BitVec 64))} {bitmaps : List (BitVec 64)}
    {wconf : WordToStack.Native.Config} {fs : List Nat} {p : List (Nat × StackLang.HolProg 64)}
    (h1 : WordToWord.compile baselineCompilerConfig.wordToWordConf riscvConfig
      (panToWordCompileProgHOL riscvConfig.isa sourceDeclarations) = (col, wprog))
    (h2 : WordToStack.Native.compileNative riscvConfig false wprog = (bitmaps, wconf, fs, p)) :
    wprog = BackendStages.Native.programs0 ∧ p = BackendStages.Native.stack := by
  rw [baseline_wordToWord_eq] at h1
  simp only [Prod.mk.injEq] at h1
  obtain ⟨-, rfl⟩ := h1
  rw [BackendStages.Native.native_eq] at h2
  simp only [Prod.mk.injEq] at h2
  exact ⟨rfl, h2.2.2.2.symm⟩

/-- `LinesBounded 24` for the baseline's target code. -/
theorem baseline_lines : ∀ code2 labs,
    LabToTarget.removeLabels baselineCompilerConfig.labConf.initClock riscvConfig 0 .ln
      (labFfis baselineCompilerConfig.labConf
        (StackToLab.compile baselineCompilerConfig.stackConf baselineCompilerConfig.dataConf
          (chainMaxHeap baselineCompilerConfig) (chainSp riscvConfig) riscvConfig.addrOffset
          BackendStages.Native.stack))
      (LabFilter.filterSkip
        (StackToLab.compile baselineCompilerConfig.stackConf baselineCompilerConfig.dataConf
          (chainMaxHeap baselineCompilerConfig) (chainSp riscvConfig) riscvConfig.addrOffset
          BackendStages.Native.stack)) = some (code2, labs) →
    InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 code2 := by
  intro code2 labs h
  change LabToTarget.removeLabels RiscVConfig.pancakeRiscVBackendConfig.labConf.initClock
      riscvConfig 0 .ln
      (labFfis RiscVConfig.pancakeRiscVBackendConfig.labConf
        (StackToLab.compile RiscVConfig.pancakeRiscVBackendConfig.stackConf
          RiscVConfig.pancakeRiscVBackendConfig.dataConf
          (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
          (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset
          BackendStages.Native.stack))
      (LabFilter.filterSkip
        (StackToLab.compile RiscVConfig.pancakeRiscVBackendConfig.stackConf
          RiscVConfig.pancakeRiscVBackendConfig.dataConf
          (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
          (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset
          BackendStages.Native.stack)) = some (code2, labs) at h
  rw [BackendStages.Sections.compile_eq] at h
  exact InitECandidate.Solver.LineBound.linesBounded_of_removeLabels_baseline h

/-- **The remaining program side conditions, on the baseline's certified programs**:
`csize` of the Crep program, `wsize` of `BackendStages.Native.programs0` (the `word_to_word`
output), `noA` / `okP` of `BackendStages.Native.stack` (the `word_to_stack` output) and `psize`
of its `stack_remove` image. -/
structure BaselineProgramBounds (Sc Sw Ss : Nat) : Prop where
  sc_ge : 3 ≤ Sc
  sw_ge : 1 ≤ Sw
  crep : ∀ e ∈ crepCodeOf sourceDeclarations, csize e.2.2 ≤ Sc
  word : ∀ e ∈ BackendStages.Native.programs0, wsize e.2.2 ≤ Sw
  noA : ∀ np ∈ BackendStages.Native.stack, noA np.2 = true
  okP : ∀ np ∈ BackendStages.Native.stack, np.1 ≠ storeConstsStubLocation →
    okP [storeConstsStubLocation] np.2 = true
  stack : ∀ np ∈ StackToLab.Proofs.FullMakeInitSemantics.code2
      RiscVConfig.pancakeRiscVBackendConfig.stackConf
      RiscVConfig.pancakeRiscVBackendConfig.dataConf
      (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
      (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset
      BackendStages.Native.stack, psize np.2 ≤ Ss

theorem programBounds_baseline {Sc Sw Ss : Nat} (h : BaselineProgramBounds Sc Sw Ss) :
    ProgramBounds baselineCompilerConfig riscvConfig sourceDeclarations Sc Sw Ss := by
  refine ⟨h.sc_ge, h.sw_ge, h.crep, ?_, ?_⟩
  · intro col wprog hw
    rw [baseline_wordToWord_eq] at hw
    simp only [Prod.mk.injEq] at hw
    obtain ⟨-, rfl⟩ := hw
    exact h.word
  · intro col wprog bitmaps wconf fs p h1 h2
    obtain ⟨-, rfl⟩ := baseline_programs_eq h1 h2
    exact ⟨h.noA, h.okP, h.stack, baseline_lines⟩

end InitECandidate.Solver.Assembly

#print axioms InitECandidate.Solver.Assembly.baseline_wordToWord_eq
#print axioms InitECandidate.Solver.Assembly.baseline_lines
#print axioms InitECandidate.Solver.Assembly.programBounds_baseline
