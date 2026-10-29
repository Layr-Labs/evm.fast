import InitECandidate.Proofs.BackendStages.Metadata.Data423
import InitECandidate.Proofs.BackendStages.Filtered423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis423_eq : ffiLines Filtered423.lines = localFfis423 := by
  with_unfolding_all rfl
theorem ffiStep423 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis423) : LabToTarget.findFfiNames (Filtered423 :: rest) = suffixFfis423 := by
  rw [findFfiNames_section, localFfis423_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep423
end InitECandidate.Proofs.BackendStages.Metadata
