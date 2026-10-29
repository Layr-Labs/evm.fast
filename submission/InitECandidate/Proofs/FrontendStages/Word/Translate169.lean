import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data169
import InitECandidate.Proofs.WordStages.Source233
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate169_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output169 =
    InitECandidate.Proofs.WordStages.source233 := by
  kernel_rfl
#print axioms translate169_eq
end InitECandidate.Proofs.FrontendStages.Word
