import InitECandidate.Proofs.BackendStages.Metadata.Data728
import InitECandidate.Proofs.BackendStages.Filtered728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis728_eq : ffiLines Filtered728.lines = localFfis728 := by
  with_unfolding_all rfl
theorem ffiStep728 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis728) : LabToTarget.findFfiNames (Filtered728 :: rest) = suffixFfis728 := by
  rw [findFfiNames_section, localFfis728_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep728
end InitECandidate.Proofs.BackendStages.Metadata
