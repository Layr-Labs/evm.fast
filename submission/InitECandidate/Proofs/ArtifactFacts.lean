import InitECandidate.Proofs.ArtifactComposition
import InitECandidate.Proofs.BackendStages.Artifact
import InitECandidate.Program

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE
open InitECandidate.Proofs
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target

/-- Compose the checked stages to certify code, bitmap data and metadata. -/
theorem baseline_compiler_artifact_eq :
    compileProgAsmFast baselineCompilerConfig riscvConfig sourceDeclarations =
      some (InitECandidate.nativeCode, InitECandidate.bitmaps,
        baselineConfigLiteralWithOracles) := by
  apply baseline_artifact_of_backend
  exact BackendStages.Artifact.fromStack_eq baselineCompilerConfig.wordToWordConf

/-- The submission's literal bytes and bitmap data are the compiler artifact. -/
theorem baseline_artifact_matches :
    ((compileProgAsmFast baselineCompilerConfig riscvConfig sourceDeclarations).map
      (fun artifact => (artifact.1, artifact.2.1))) =
        some (InitECandidate.nativeCode, InitECandidate.bitmaps) := by
  rw [baseline_compiler_artifact_eq]
  rfl

end InitE

#print axioms InitE.baseline_artifact_matches
#print axioms InitE.baseline_compiler_artifact_eq
