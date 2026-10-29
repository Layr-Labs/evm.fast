import InitECandidate.Proofs.BackendStages.Metadata.Data188
import InitECandidate.Proofs.BackendStages.Filtered188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis188_eq : ffiLines Filtered188.lines = localFfis188 := by
  with_unfolding_all rfl
theorem ffiStep188 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis188) : LabToTarget.findFfiNames (Filtered188 :: rest) = suffixFfis188 := by
  rw [findFfiNames_section, localFfis188_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep188
end InitECandidate.Proofs.BackendStages.Metadata
