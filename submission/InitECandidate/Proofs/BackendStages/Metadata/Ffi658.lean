import InitECandidate.Proofs.BackendStages.Metadata.Data658
import InitECandidate.Proofs.BackendStages.Filtered658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis658_eq : ffiLines Filtered658.lines = localFfis658 := by
  with_unfolding_all rfl
theorem ffiStep658 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis658) : LabToTarget.findFfiNames (Filtered658 :: rest) = suffixFfis658 := by
  rw [findFfiNames_section, localFfis658_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep658
end InitECandidate.Proofs.BackendStages.Metadata
