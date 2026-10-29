import InitECandidate.Proofs.BackendStages.Metadata.Data382
import InitECandidate.Proofs.BackendStages.Filtered382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis382_eq : ffiLines Filtered382.lines = localFfis382 := by
  with_unfolding_all rfl
theorem ffiStep382 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis382) : LabToTarget.findFfiNames (Filtered382 :: rest) = suffixFfis382 := by
  rw [findFfiNames_section, localFfis382_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep382
end InitECandidate.Proofs.BackendStages.Metadata
