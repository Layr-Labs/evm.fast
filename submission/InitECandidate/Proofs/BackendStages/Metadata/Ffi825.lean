import InitECandidate.Proofs.BackendStages.Metadata.Data825
import InitECandidate.Proofs.BackendStages.Filtered825
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis825_eq : ffiLines Filtered825.lines = localFfis825 := by
  with_unfolding_all rfl
theorem ffiStep825 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis825) : LabToTarget.findFfiNames (Filtered825 :: rest) = suffixFfis825 := by
  rw [findFfiNames_section, localFfis825_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep825
end InitECandidate.Proofs.BackendStages.Metadata
