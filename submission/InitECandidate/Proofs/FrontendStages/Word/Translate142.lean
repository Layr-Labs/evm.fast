import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data142
import InitECandidate.Proofs.WordStages.Source206
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate142_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output142 =
    InitECandidate.Proofs.WordStages.source206 := by
  kernel_rfl
#print axioms translate142_eq
end InitECandidate.Proofs.FrontendStages.Word
