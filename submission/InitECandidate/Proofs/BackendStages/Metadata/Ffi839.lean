import InitECandidate.Proofs.BackendStages.Metadata.Data839
import InitECandidate.Proofs.BackendStages.Filtered839
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis839_eq : ffiLines Filtered839.lines = localFfis839 := by
  with_unfolding_all rfl
theorem ffiStep839 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis839) : LabToTarget.findFfiNames (Filtered839 :: rest) = suffixFfis839 := by
  rw [findFfiNames_section, localFfis839_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep839
end InitECandidate.Proofs.BackendStages.Metadata
