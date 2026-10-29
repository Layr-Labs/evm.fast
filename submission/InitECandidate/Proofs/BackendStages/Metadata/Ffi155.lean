import InitECandidate.Proofs.BackendStages.Metadata.Data155
import InitECandidate.Proofs.BackendStages.Filtered155
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis155_eq : ffiLines Filtered155.lines = localFfis155 := by
  with_unfolding_all rfl
theorem ffiStep155 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis155) : LabToTarget.findFfiNames (Filtered155 :: rest) = suffixFfis155 := by
  rw [findFfiNames_section, localFfis155_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep155
end InitECandidate.Proofs.BackendStages.Metadata
