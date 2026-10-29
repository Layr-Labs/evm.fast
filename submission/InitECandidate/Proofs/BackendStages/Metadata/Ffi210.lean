import InitECandidate.Proofs.BackendStages.Metadata.Data210
import InitECandidate.Proofs.BackendStages.Filtered210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis210_eq : ffiLines Filtered210.lines = localFfis210 := by
  with_unfolding_all rfl
theorem ffiStep210 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis210) : LabToTarget.findFfiNames (Filtered210 :: rest) = suffixFfis210 := by
  rw [findFfiNames_section, localFfis210_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep210
end InitECandidate.Proofs.BackendStages.Metadata
