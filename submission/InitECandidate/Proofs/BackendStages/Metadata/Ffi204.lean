import InitECandidate.Proofs.BackendStages.Metadata.Data204
import InitECandidate.Proofs.BackendStages.Filtered204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis204_eq : ffiLines Filtered204.lines = localFfis204 := by
  with_unfolding_all rfl
theorem ffiStep204 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis204) : LabToTarget.findFfiNames (Filtered204 :: rest) = suffixFfis204 := by
  rw [findFfiNames_section, localFfis204_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep204
end InitECandidate.Proofs.BackendStages.Metadata
