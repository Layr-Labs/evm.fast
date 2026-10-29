import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data86
import InitECandidate.Proofs.WordStages.Source150
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate86_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output86 =
    InitECandidate.Proofs.WordStages.source150 := by
  kernel_rfl
#print axioms translate86_eq
end InitECandidate.Proofs.FrontendStages.Word
