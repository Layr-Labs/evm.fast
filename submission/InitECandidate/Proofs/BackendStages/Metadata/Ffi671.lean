import InitECandidate.Proofs.BackendStages.Metadata.Data671
import InitECandidate.Proofs.BackendStages.Filtered671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis671_eq : ffiLines Filtered671.lines = localFfis671 := by
  with_unfolding_all rfl
theorem ffiStep671 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis671) : LabToTarget.findFfiNames (Filtered671 :: rest) = suffixFfis671 := by
  rw [findFfiNames_section, localFfis671_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep671
end InitECandidate.Proofs.BackendStages.Metadata
