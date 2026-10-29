import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data178
import InitECandidate.Proofs.WordStages.Source242
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate178_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output178 =
    InitECandidate.Proofs.WordStages.source242 := by
  kernel_rfl
#print axioms translate178_eq
end InitECandidate.Proofs.FrontendStages.Word
