import InitECandidate.Proofs.BackendStages.Metadata.Data413
import InitECandidate.Proofs.BackendStages.Filtered413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis413_eq : ffiLines Filtered413.lines = localFfis413 := by
  with_unfolding_all rfl
theorem ffiStep413 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis413) : LabToTarget.findFfiNames (Filtered413 :: rest) = suffixFfis413 := by
  rw [findFfiNames_section, localFfis413_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep413
end InitECandidate.Proofs.BackendStages.Metadata
