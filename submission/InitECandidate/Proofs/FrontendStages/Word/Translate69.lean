import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data69
import InitECandidate.Proofs.WordStages.Source133
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate53
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate69_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output69 =
    InitECandidate.Proofs.WordStages.source133 := by
  kernel_rfl
#print axioms translate69_eq
end InitECandidate.Proofs.FrontendStages.Word
