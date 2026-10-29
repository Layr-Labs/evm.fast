import InitECandidate.Proofs.BackendStages.Metadata.Data517
import InitECandidate.Proofs.BackendStages.Filtered517
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis517_eq : ffiLines Filtered517.lines = localFfis517 := by
  with_unfolding_all rfl
theorem ffiStep517 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis517) : LabToTarget.findFfiNames (Filtered517 :: rest) = suffixFfis517 := by
  rw [findFfiNames_section, localFfis517_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep517
end InitECandidate.Proofs.BackendStages.Metadata
