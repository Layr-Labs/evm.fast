import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data232
import InitECandidate.Proofs.WordStages.Source296
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate232_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output232 =
    InitECandidate.Proofs.WordStages.source296 := by
  kernel_rfl
#print axioms translate232_eq
end InitECandidate.Proofs.FrontendStages.Word
