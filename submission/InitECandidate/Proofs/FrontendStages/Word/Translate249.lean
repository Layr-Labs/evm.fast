import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data249
import InitECandidate.Proofs.WordStages.Source313
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate249_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output249 =
    InitECandidate.Proofs.WordStages.source313 := by
  kernel_rfl
#print axioms translate249_eq
end InitECandidate.Proofs.FrontendStages.Word
