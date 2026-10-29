import InitECandidate.Proofs.BackendStages.Metadata.Data182
import InitECandidate.Proofs.BackendStages.Filtered182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis182_eq : ffiLines Filtered182.lines = localFfis182 := by
  with_unfolding_all rfl
theorem ffiStep182 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis182) : LabToTarget.findFfiNames (Filtered182 :: rest) = suffixFfis182 := by
  rw [findFfiNames_section, localFfis182_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep182
end InitECandidate.Proofs.BackendStages.Metadata
