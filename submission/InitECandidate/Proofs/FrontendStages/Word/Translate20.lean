import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data20
import InitECandidate.Proofs.WordStages.Source84
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate20_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output20 =
    InitECandidate.Proofs.WordStages.source84 := by
  kernel_rfl
#print axioms translate20_eq
end InitECandidate.Proofs.FrontendStages.Word
