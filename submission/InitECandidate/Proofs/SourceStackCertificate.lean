import InitECandidate.Proofs.SourceStackStages
import InitECandidate.Proofs.CompilerOracles
import InitECandidate.Proofs.WordBackend.StackAgreement

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.Proofs.PanToTarget

/-- The fixed guest has a finite stack bound under its checked allocation tape.
The exact bound is deliberately left opaque; the ranked upper bound suffices. -/
theorem sourceLogicalStackBound_bounded :
    StackAnalysis.bounded
      (compileProgMaxAsmExecutable (oracleCompilerConfig WordBackend.oracles)
        riscvConfig sourceDeclarations).2 7480 := by
  apply sourceLogicalStack_bounded_of_word_stage
  change WordToWord.compileWith RegAlloc.regAllocExecutable WordBackend.config
    riscvConfig WordBackend.inputs = ([], StackAnalysis.outputs)
  rw [← WordBackend.StackAgreement.outputs_eq]
  exact WordBackend.compileWith_eq

#print axioms sourceLogicalStackBound_bounded
end InitE
