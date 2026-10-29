import InitECandidate.Proofs.BackendStages.Metadata.Data563
import InitECandidate.Proofs.BackendStages.Filtered563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis563_eq : ffiLines Filtered563.lines = localFfis563 := by
  with_unfolding_all rfl
theorem ffiStep563 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis563) : LabToTarget.findFfiNames (Filtered563 :: rest) = suffixFfis563 := by
  rw [findFfiNames_section, localFfis563_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep563
end InitECandidate.Proofs.BackendStages.Metadata
