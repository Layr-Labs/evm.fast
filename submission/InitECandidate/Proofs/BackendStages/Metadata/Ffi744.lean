import InitECandidate.Proofs.BackendStages.Metadata.Data744
import InitECandidate.Proofs.BackendStages.Filtered744
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis744_eq : ffiLines Filtered744.lines = localFfis744 := by
  with_unfolding_all rfl
theorem ffiStep744 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis744) : LabToTarget.findFfiNames (Filtered744 :: rest) = suffixFfis744 := by
  rw [findFfiNames_section, localFfis744_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep744
end InitECandidate.Proofs.BackendStages.Metadata
