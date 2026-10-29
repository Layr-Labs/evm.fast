import InitECandidate.Proofs.BackendStages.Metadata.Data450
import InitECandidate.Proofs.BackendStages.Filtered450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis450_eq : ffiLines Filtered450.lines = localFfis450 := by
  with_unfolding_all rfl
theorem ffiStep450 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis450) : LabToTarget.findFfiNames (Filtered450 :: rest) = suffixFfis450 := by
  rw [findFfiNames_section, localFfis450_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep450
end InitECandidate.Proofs.BackendStages.Metadata
