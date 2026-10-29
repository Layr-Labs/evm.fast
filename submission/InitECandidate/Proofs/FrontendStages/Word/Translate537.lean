import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data537
import InitECandidate.Proofs.WordStages.Source601
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate537_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output537 =
    InitECandidate.Proofs.WordStages.source601 := by
  kernel_rfl
#print axioms translate537_eq
end InitECandidate.Proofs.FrontendStages.Word
