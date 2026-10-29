import InitECandidate.Proofs.BackendStages.Metadata.Data296
import InitECandidate.Proofs.BackendStages.Filtered296
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis296_eq : ffiLines Filtered296.lines = localFfis296 := by
  with_unfolding_all rfl
theorem ffiStep296 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis296) : LabToTarget.findFfiNames (Filtered296 :: rest) = suffixFfis296 := by
  rw [findFfiNames_section, localFfis296_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep296
end InitECandidate.Proofs.BackendStages.Metadata
