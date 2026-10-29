import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data652
import InitECandidate.Proofs.WordStages.Source716
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate652_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output652 =
    InitECandidate.Proofs.WordStages.source716 := by
  kernel_rfl
#print axioms translate652_eq
end InitECandidate.Proofs.FrontendStages.Word
