import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data253
import InitECandidate.Proofs.WordStages.Source317
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate253_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output253 =
    InitECandidate.Proofs.WordStages.source317 := by
  kernel_rfl
#print axioms translate253_eq
end InitECandidate.Proofs.FrontendStages.Word
