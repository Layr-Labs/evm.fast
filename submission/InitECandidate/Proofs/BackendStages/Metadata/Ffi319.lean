import InitECandidate.Proofs.BackendStages.Metadata.Data319
import InitECandidate.Proofs.BackendStages.Filtered319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis319_eq : ffiLines Filtered319.lines = localFfis319 := by
  with_unfolding_all rfl
theorem ffiStep319 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis319) : LabToTarget.findFfiNames (Filtered319 :: rest) = suffixFfis319 := by
  rw [findFfiNames_section, localFfis319_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep319
end InitECandidate.Proofs.BackendStages.Metadata
