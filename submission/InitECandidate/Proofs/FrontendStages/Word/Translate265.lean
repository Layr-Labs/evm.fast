import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data265
import InitECandidate.Proofs.WordStages.Source329
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate265_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output265 =
    InitECandidate.Proofs.WordStages.source329 := by
  kernel_rfl
#print axioms translate265_eq
end InitECandidate.Proofs.FrontendStages.Word
