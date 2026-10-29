import InitECandidate.Proofs.BackendStages.Metadata.Data363
import InitECandidate.Proofs.BackendStages.Filtered363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis363_eq : ffiLines Filtered363.lines = localFfis363 := by
  with_unfolding_all rfl
theorem ffiStep363 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis363) : LabToTarget.findFfiNames (Filtered363 :: rest) = suffixFfis363 := by
  rw [findFfiNames_section, localFfis363_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep363
end InitECandidate.Proofs.BackendStages.Metadata
