import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data273
import InitECandidate.Proofs.WordStages.Source337
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate273_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output273 =
    InitECandidate.Proofs.WordStages.source337 := by
  kernel_rfl
#print axioms translate273_eq
end InitECandidate.Proofs.FrontendStages.Word
