import InitECandidate.Proofs.BackendStages.Metadata.Data837
import InitECandidate.Proofs.BackendStages.Filtered837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis837_eq : ffiLines Filtered837.lines = localFfis837 := by
  with_unfolding_all rfl
theorem ffiStep837 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis837) : LabToTarget.findFfiNames (Filtered837 :: rest) = suffixFfis837 := by
  rw [findFfiNames_section, localFfis837_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep837
end InitECandidate.Proofs.BackendStages.Metadata
