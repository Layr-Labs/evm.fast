import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data149
import InitECandidate.Proofs.WordStages.Source213
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate149_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output149 =
    InitECandidate.Proofs.WordStages.source213 := by
  kernel_rfl
#print axioms translate149_eq
end InitECandidate.Proofs.FrontendStages.Word
