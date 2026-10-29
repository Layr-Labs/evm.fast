import InitECandidate.Proofs.BackendStages.Metadata.Data594
import InitECandidate.Proofs.BackendStages.Filtered594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis594_eq : ffiLines Filtered594.lines = localFfis594 := by
  with_unfolding_all rfl
theorem ffiStep594 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis594) : LabToTarget.findFfiNames (Filtered594 :: rest) = suffixFfis594 := by
  rw [findFfiNames_section, localFfis594_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep594
end InitECandidate.Proofs.BackendStages.Metadata
