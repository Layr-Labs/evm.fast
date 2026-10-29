import InitE.SourceFacts
import InitECandidate.Proofs.CheckedCompilerConfig
import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileProgMaxAsmWith

namespace InitE
open Flapjack Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target

/-- An AST compiler output records the fixed declarations and their artifact
under the validated baseline allocation tape. -/
theorem compiledSourceDeclarations_eq (out : RiscV.NativeSource.Output)
    (h : out.declarations = sourceDeclarations ∧
      out.artifact = compileProgAsmFast baselineCompilerConfig riscvConfig sourceDeclarations) :
    out.declarations = sourceDeclarations := h.1

end InitE
