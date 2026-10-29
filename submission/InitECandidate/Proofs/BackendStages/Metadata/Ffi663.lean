import InitECandidate.Proofs.BackendStages.Metadata.Data663
import InitECandidate.Proofs.BackendStages.Filtered663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis663_eq : ffiLines Filtered663.lines = localFfis663 := by
  with_unfolding_all rfl
theorem ffiStep663 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis663) : LabToTarget.findFfiNames (Filtered663 :: rest) = suffixFfis663 := by
  rw [findFfiNames_section, localFfis663_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep663
end InitECandidate.Proofs.BackendStages.Metadata
