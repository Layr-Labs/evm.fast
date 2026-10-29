import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data63
import InitECandidate.Proofs.WordStages.Source127
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate47
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate63_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output63 =
    InitECandidate.Proofs.WordStages.source127 := by
  kernel_rfl
#print axioms translate63_eq
end InitECandidate.Proofs.FrontendStages.Word
