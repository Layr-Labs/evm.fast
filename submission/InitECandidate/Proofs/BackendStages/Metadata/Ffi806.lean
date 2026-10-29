import InitECandidate.Proofs.BackendStages.Metadata.Data806
import InitECandidate.Proofs.BackendStages.Filtered806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis806_eq : ffiLines Filtered806.lines = localFfis806 := by
  with_unfolding_all rfl
theorem ffiStep806 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis806) : LabToTarget.findFfiNames (Filtered806 :: rest) = suffixFfis806 := by
  rw [findFfiNames_section, localFfis806_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep806
end InitECandidate.Proofs.BackendStages.Metadata
