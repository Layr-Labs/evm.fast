import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data564
import InitECandidate.Proofs.WordStages.Source628
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate564_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output564 =
    InitECandidate.Proofs.WordStages.source628 := by
  kernel_rfl
#print axioms translate564_eq
end InitECandidate.Proofs.FrontendStages.Word
