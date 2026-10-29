import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data492
import InitECandidate.Proofs.WordStages.Source556
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate492_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output492 =
    InitECandidate.Proofs.WordStages.source556 := by
  kernel_rfl
#print axioms translate492_eq
end InitECandidate.Proofs.FrontendStages.Word
