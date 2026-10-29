import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data734
import InitECandidate.Proofs.WordStages.Source798
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate734_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output734 =
    InitECandidate.Proofs.WordStages.source798 := by
  kernel_rfl
#print axioms translate734_eq
end InitECandidate.Proofs.FrontendStages.Word
