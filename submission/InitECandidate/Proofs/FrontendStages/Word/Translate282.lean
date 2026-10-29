import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data282
import InitECandidate.Proofs.WordStages.Source346
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate282_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output282 =
    InitECandidate.Proofs.WordStages.source346 := by
  kernel_rfl
#print axioms translate282_eq
end InitECandidate.Proofs.FrontendStages.Word
