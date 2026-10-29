import InitECandidate.Proofs.BackendStages.Metadata.Data405
import InitECandidate.Proofs.BackendStages.Filtered405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis405_eq : ffiLines Filtered405.lines = localFfis405 := by
  with_unfolding_all rfl
theorem ffiStep405 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis405) : LabToTarget.findFfiNames (Filtered405 :: rest) = suffixFfis405 := by
  rw [findFfiNames_section, localFfis405_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep405
end InitECandidate.Proofs.BackendStages.Metadata
