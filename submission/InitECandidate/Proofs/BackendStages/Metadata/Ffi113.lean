import InitECandidate.Proofs.BackendStages.Metadata.Data113
import InitECandidate.Proofs.BackendStages.Filtered113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis113_eq : ffiLines Filtered113.lines = localFfis113 := by
  with_unfolding_all rfl
theorem ffiStep113 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis113) : LabToTarget.findFfiNames (Filtered113 :: rest) = suffixFfis113 := by
  rw [findFfiNames_section, localFfis113_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep113
end InitECandidate.Proofs.BackendStages.Metadata
