import InitECandidate.Proofs.BackendStages.Metadata.Data447
import InitECandidate.Proofs.BackendStages.Filtered447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis447_eq : ffiLines Filtered447.lines = localFfis447 := by
  with_unfolding_all rfl
theorem ffiStep447 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis447) : LabToTarget.findFfiNames (Filtered447 :: rest) = suffixFfis447 := by
  rw [findFfiNames_section, localFfis447_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep447
end InitECandidate.Proofs.BackendStages.Metadata
