import InitECandidate.Proofs.BackendStages.Metadata.Data803
import InitECandidate.Proofs.BackendStages.Filtered803
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis803_eq : ffiLines Filtered803.lines = localFfis803 := by
  with_unfolding_all rfl
theorem ffiStep803 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis803) : LabToTarget.findFfiNames (Filtered803 :: rest) = suffixFfis803 := by
  rw [findFfiNames_section, localFfis803_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep803
end InitECandidate.Proofs.BackendStages.Metadata
