import InitECandidate.Proofs.BackendStages.Metadata.Data130
import InitECandidate.Proofs.BackendStages.Filtered130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis130_eq : ffiLines Filtered130.lines = localFfis130 := by
  with_unfolding_all rfl
theorem ffiStep130 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis130) : LabToTarget.findFfiNames (Filtered130 :: rest) = suffixFfis130 := by
  rw [findFfiNames_section, localFfis130_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep130
end InitECandidate.Proofs.BackendStages.Metadata
