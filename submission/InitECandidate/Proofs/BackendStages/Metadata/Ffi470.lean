import InitECandidate.Proofs.BackendStages.Metadata.Data470
import InitECandidate.Proofs.BackendStages.Filtered470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis470_eq : ffiLines Filtered470.lines = localFfis470 := by
  with_unfolding_all rfl
theorem ffiStep470 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis470) : LabToTarget.findFfiNames (Filtered470 :: rest) = suffixFfis470 := by
  rw [findFfiNames_section, localFfis470_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep470
end InitECandidate.Proofs.BackendStages.Metadata
