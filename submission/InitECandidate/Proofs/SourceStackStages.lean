import InitECandidate.Proofs.FrontendStages.Pass5
import InitECandidate.Proofs.StackAnalysis.Closed
import InitECandidate.Proofs.StackDepthComputation

/-! Link the ranked stack certificate to the compiler evaluator through an exact
word-optimizer stage. Allocation proposals remain subject to kernel checks. -/
namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.Proofs.PanToTarget

/-- Any certified optimizer stage producing these literals inherits the checked
source stack bound. The bound need not be evaluated to its exact numeral. -/
theorem sourceDepth_bounded_of_word_stage (config : Backend.Config)
    (compiled : WordToWord.compileWith RegAlloc.regAllocExecutable
      config.wordToWordConf riscvConfig FrontendStages.pass5 =
        ([], StackAnalysis.outputs)) :
    StackAnalysis.bounded
      (compileProgMaxAsmDepthExecutable config riscvConfig sourceDeclarations).2 7480 := by
  have stage : WordToWord.compileWith RegAlloc.regAllocExecutable config.wordToWordConf
      riscvConfig (panToWordCompileProgHOL riscvConfig.isa sourceDeclarations) =
        ([], StackAnalysis.outputs) := by
    rw [FrontendStages.frontend_eq]
    exact compiled
  rw [StackDepthComputation.depth_eq_of_word_compile config sourceDeclarations
    StackAnalysis.outputs stage]
  exact StackAnalysis.depth_bounded

/-- Transfer the bound to the evaluator used by compiler correctness. -/
theorem sourceLogicalStack_bounded_of_word_stage (config : Backend.Config)
    (compiled : WordToWord.compileWith RegAlloc.regAllocExecutable
      config.wordToWordConf riscvConfig FrontendStages.pass5 =
        ([], StackAnalysis.outputs)) :
    StackAnalysis.bounded
      (compileProgMaxAsmExecutable config riscvConfig sourceDeclarations).2 7480 := by
  rw [← compileProgMaxAsmFast_eq, ← compileProgMaxAsmDepthExecutable_eq]
  exact sourceDepth_bounded_of_word_stage config compiled

#print axioms sourceDepth_bounded_of_word_stage
#print axioms sourceLogicalStack_bounded_of_word_stage
end InitE
