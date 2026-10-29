import InitECandidate.Proofs.BackendStages.Metadata.Data840
import InitECandidate.Proofs.BackendStages.Filtered840
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis840_eq : ffiLines Filtered840.lines = localFfis840 := by
  with_unfolding_all rfl
theorem ffiStep840 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis840) : LabToTarget.findFfiNames (Filtered840 :: rest) = suffixFfis840 := by
  rw [findFfiNames_section, localFfis840_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep840
end InitECandidate.Proofs.BackendStages.Metadata
