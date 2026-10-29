import InitECandidate.Proofs.BackendStages.Metadata.Data106
import InitECandidate.Proofs.BackendStages.Filtered106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis106_eq : ffiLines Filtered106.lines = localFfis106 := by
  with_unfolding_all rfl
theorem ffiStep106 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis106) : LabToTarget.findFfiNames (Filtered106 :: rest) = suffixFfis106 := by
  rw [findFfiNames_section, localFfis106_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep106
end InitECandidate.Proofs.BackendStages.Metadata
