import InitECandidate.Proofs.BackendStages.Metadata.Data379
import InitECandidate.Proofs.BackendStages.Filtered379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis379_eq : ffiLines Filtered379.lines = localFfis379 := by
  with_unfolding_all rfl
theorem ffiStep379 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis379) : LabToTarget.findFfiNames (Filtered379 :: rest) = suffixFfis379 := by
  rw [findFfiNames_section, localFfis379_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep379
end InitECandidate.Proofs.BackendStages.Metadata
