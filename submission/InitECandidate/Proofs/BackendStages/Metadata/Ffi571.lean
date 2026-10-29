import InitECandidate.Proofs.BackendStages.Metadata.Data571
import InitECandidate.Proofs.BackendStages.Filtered571
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis571_eq : ffiLines Filtered571.lines = localFfis571 := by
  with_unfolding_all rfl
theorem ffiStep571 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis571) : LabToTarget.findFfiNames (Filtered571 :: rest) = suffixFfis571 := by
  rw [findFfiNames_section, localFfis571_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep571
end InitECandidate.Proofs.BackendStages.Metadata
