import InitECandidate.Proofs.BackendStages.Metadata.Data773
import InitECandidate.Proofs.BackendStages.Filtered773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis773_eq : ffiLines Filtered773.lines = localFfis773 := by
  with_unfolding_all rfl
theorem ffiStep773 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis773) : LabToTarget.findFfiNames (Filtered773 :: rest) = suffixFfis773 := by
  rw [findFfiNames_section, localFfis773_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep773
end InitECandidate.Proofs.BackendStages.Metadata
