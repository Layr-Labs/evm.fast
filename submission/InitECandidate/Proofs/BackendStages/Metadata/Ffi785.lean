import InitECandidate.Proofs.BackendStages.Metadata.Data785
import InitECandidate.Proofs.BackendStages.Filtered785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis785_eq : ffiLines Filtered785.lines = localFfis785 := by
  with_unfolding_all rfl
theorem ffiStep785 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis785) : LabToTarget.findFfiNames (Filtered785 :: rest) = suffixFfis785 := by
  rw [findFfiNames_section, localFfis785_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep785
end InitECandidate.Proofs.BackendStages.Metadata
