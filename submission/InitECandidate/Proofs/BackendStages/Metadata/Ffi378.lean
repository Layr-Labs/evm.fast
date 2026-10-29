import InitECandidate.Proofs.BackendStages.Metadata.Data378
import InitECandidate.Proofs.BackendStages.Filtered378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis378_eq : ffiLines Filtered378.lines = localFfis378 := by
  with_unfolding_all rfl
theorem ffiStep378 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis378) : LabToTarget.findFfiNames (Filtered378 :: rest) = suffixFfis378 := by
  rw [findFfiNames_section, localFfis378_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep378
end InitECandidate.Proofs.BackendStages.Metadata
