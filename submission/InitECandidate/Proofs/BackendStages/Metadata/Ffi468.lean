import InitECandidate.Proofs.BackendStages.Metadata.Data468
import InitECandidate.Proofs.BackendStages.Filtered468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis468_eq : ffiLines Filtered468.lines = localFfis468 := by
  with_unfolding_all rfl
theorem ffiStep468 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis468) : LabToTarget.findFfiNames (Filtered468 :: rest) = suffixFfis468 := by
  rw [findFfiNames_section, localFfis468_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep468
end InitECandidate.Proofs.BackendStages.Metadata
