import InitECandidate.Proofs.BackendStages.Metadata.Data828
import InitECandidate.Proofs.BackendStages.Filtered828
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis828_eq : ffiLines Filtered828.lines = localFfis828 := by
  with_unfolding_all rfl
theorem ffiStep828 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis828) : LabToTarget.findFfiNames (Filtered828 :: rest) = suffixFfis828 := by
  rw [findFfiNames_section, localFfis828_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep828
end InitECandidate.Proofs.BackendStages.Metadata
