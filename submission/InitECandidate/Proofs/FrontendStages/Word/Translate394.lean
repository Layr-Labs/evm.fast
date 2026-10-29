import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data394
import InitECandidate.Proofs.WordStages.Source458
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate394_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output394 =
    InitECandidate.Proofs.WordStages.source458 := by
  kernel_rfl
#print axioms translate394_eq
end InitECandidate.Proofs.FrontendStages.Word
