import InitECandidate.Proofs.BackendStages.Metadata.Data495
import InitECandidate.Proofs.BackendStages.Filtered495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis495_eq : ffiLines Filtered495.lines = localFfis495 := by
  with_unfolding_all rfl
theorem ffiStep495 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis495) : LabToTarget.findFfiNames (Filtered495 :: rest) = suffixFfis495 := by
  rw [findFfiNames_section, localFfis495_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep495
end InitECandidate.Proofs.BackendStages.Metadata
