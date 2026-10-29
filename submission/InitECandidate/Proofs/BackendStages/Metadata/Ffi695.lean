import InitECandidate.Proofs.BackendStages.Metadata.Data695
import InitECandidate.Proofs.BackendStages.Filtered695
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis695_eq : ffiLines Filtered695.lines = localFfis695 := by
  with_unfolding_all rfl
theorem ffiStep695 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis695) : LabToTarget.findFfiNames (Filtered695 :: rest) = suffixFfis695 := by
  rw [findFfiNames_section, localFfis695_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep695
end InitECandidate.Proofs.BackendStages.Metadata
