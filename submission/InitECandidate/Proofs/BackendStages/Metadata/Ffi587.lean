import InitECandidate.Proofs.BackendStages.Metadata.Data587
import InitECandidate.Proofs.BackendStages.Filtered587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis587_eq : ffiLines Filtered587.lines = localFfis587 := by
  with_unfolding_all rfl
theorem ffiStep587 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis587) : LabToTarget.findFfiNames (Filtered587 :: rest) = suffixFfis587 := by
  rw [findFfiNames_section, localFfis587_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep587
end InitECandidate.Proofs.BackendStages.Metadata
