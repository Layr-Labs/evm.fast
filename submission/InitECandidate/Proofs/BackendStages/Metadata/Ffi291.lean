import InitECandidate.Proofs.BackendStages.Metadata.Data291
import InitECandidate.Proofs.BackendStages.Filtered291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis291_eq : ffiLines Filtered291.lines = localFfis291 := by
  with_unfolding_all rfl
theorem ffiStep291 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis291) : LabToTarget.findFfiNames (Filtered291 :: rest) = suffixFfis291 := by
  rw [findFfiNames_section, localFfis291_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep291
end InitECandidate.Proofs.BackendStages.Metadata
