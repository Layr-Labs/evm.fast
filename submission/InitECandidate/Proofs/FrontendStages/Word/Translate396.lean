import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data396
import InitECandidate.Proofs.WordStages.Source460
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate396_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output396 =
    InitECandidate.Proofs.WordStages.source460 := by
  kernel_rfl
#print axioms translate396_eq
end InitECandidate.Proofs.FrontendStages.Word
