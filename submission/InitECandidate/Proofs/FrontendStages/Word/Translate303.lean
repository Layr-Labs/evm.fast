import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data303
import InitECandidate.Proofs.WordStages.Source367
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate303_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output303 =
    InitECandidate.Proofs.WordStages.source367 := by
  kernel_rfl
#print axioms translate303_eq
end InitECandidate.Proofs.FrontendStages.Word
