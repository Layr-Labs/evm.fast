import InitECandidate.Proofs.BackendStages.Metadata.Data479
import InitECandidate.Proofs.BackendStages.Filtered479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis479_eq : ffiLines Filtered479.lines = localFfis479 := by
  with_unfolding_all rfl
theorem ffiStep479 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis479) : LabToTarget.findFfiNames (Filtered479 :: rest) = suffixFfis479 := by
  rw [findFfiNames_section, localFfis479_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep479
end InitECandidate.Proofs.BackendStages.Metadata
