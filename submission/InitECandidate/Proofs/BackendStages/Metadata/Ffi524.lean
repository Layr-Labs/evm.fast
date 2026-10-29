import InitECandidate.Proofs.BackendStages.Metadata.Data524
import InitECandidate.Proofs.BackendStages.Filtered524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis524_eq : ffiLines Filtered524.lines = localFfis524 := by
  with_unfolding_all rfl
theorem ffiStep524 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis524) : LabToTarget.findFfiNames (Filtered524 :: rest) = suffixFfis524 := by
  rw [findFfiNames_section, localFfis524_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep524
end InitECandidate.Proofs.BackendStages.Metadata
