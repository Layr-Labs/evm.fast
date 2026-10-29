import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data248
import InitECandidate.Proofs.WordStages.Source312
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate248_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output248 =
    InitECandidate.Proofs.WordStages.source312 := by
  kernel_rfl
#print axioms translate248_eq
end InitECandidate.Proofs.FrontendStages.Word
