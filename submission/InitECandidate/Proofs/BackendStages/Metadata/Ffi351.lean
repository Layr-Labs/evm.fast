import InitECandidate.Proofs.BackendStages.Metadata.Data351
import InitECandidate.Proofs.BackendStages.Filtered351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis351_eq : ffiLines Filtered351.lines = localFfis351 := by
  with_unfolding_all rfl
theorem ffiStep351 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis351) : LabToTarget.findFfiNames (Filtered351 :: rest) = suffixFfis351 := by
  rw [findFfiNames_section, localFfis351_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep351
end InitECandidate.Proofs.BackendStages.Metadata
