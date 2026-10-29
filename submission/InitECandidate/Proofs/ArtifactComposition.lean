import InitECandidate.Proofs.CompilerArtifactComputation
import InitECandidate.Proofs.CheckedCompilerConfig
import InitECandidate.Proofs.FrontendStages.Pass5
import InitECandidate.Proofs.WordBackend.StackAgreement
import InitECandidate.Proofs.BackendStages.Native

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.Proofs.PanToTarget

/-- Compose the checked source and optimizer with native lowering. The final
backend certificate supplies the exact bytes and output configuration. -/
theorem baseline_artifact_of_backend
    (artifact : Option (List (BitVec 8) × List (BitVec 64) × Backend.Config))
    (backend_eq : Backend.fromStack riscvConfig baselineCompilerConfig .ln
      BackendStages.Native.stack BackendStages.Native.bitmaps = artifact) :
    compileProgAsmFast baselineCompilerConfig riscvConfig sourceDeclarations = artifact := by
  have programs_eq : BackendStages.Native.programs0 = StackAnalysis.outputs :=
    BackendStages.Native.programs_eq
  have optimizer_eq : WordToWord.compileWith RegAlloc.regAllocExecutable
      baselineCompilerConfig.wordToWordConf riscvConfig FrontendStages.pass5 =
        ([], BackendStages.Native.programs0) := by
    change WordToWord.compileWith RegAlloc.regAllocExecutable WordBackend.config
      riscvConfig WordBackend.inputs = ([], BackendStages.Native.programs0)
    rw [WordBackend.compileWith_eq, WordBackend.StackAgreement.outputs_eq, programs_eq]
  exact CompilerArtifactComputation.artifact_of_stages RegAlloc.regAllocExecutable
    baselineCompilerConfig riscvConfig sourceDeclarations FrontendStages.pass5
    BackendStages.Native.programs0 [] BackendStages.Native.bitmaps
    BackendStages.Native.wordConfig (0 :: BackendStages.Native.frames0)
    BackendStages.Native.stack artifact FrontendStages.frontend_eq optimizer_eq
    BackendStages.Native.native_eq backend_eq

#print axioms baseline_artifact_of_backend
end InitE
