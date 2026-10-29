import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data416
import InitECandidate.Proofs.WordStages.Source480
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate416_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output416 =
    InitECandidate.Proofs.WordStages.source480 := by
  kernel_rfl
#print axioms translate416_eq
end InitECandidate.Proofs.FrontendStages.Word
