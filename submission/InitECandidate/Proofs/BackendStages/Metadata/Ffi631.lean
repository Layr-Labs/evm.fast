import InitECandidate.Proofs.BackendStages.Metadata.Data631
import InitECandidate.Proofs.BackendStages.Filtered631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis631_eq : ffiLines Filtered631.lines = localFfis631 := by
  with_unfolding_all rfl
theorem ffiStep631 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis631) : LabToTarget.findFfiNames (Filtered631 :: rest) = suffixFfis631 := by
  rw [findFfiNames_section, localFfis631_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep631
end InitECandidate.Proofs.BackendStages.Metadata
