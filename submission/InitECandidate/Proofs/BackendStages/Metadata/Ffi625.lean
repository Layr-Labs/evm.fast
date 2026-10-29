import InitECandidate.Proofs.BackendStages.Metadata.Data625
import InitECandidate.Proofs.BackendStages.Filtered625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis625_eq : ffiLines Filtered625.lines = localFfis625 := by
  with_unfolding_all rfl
theorem ffiStep625 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis625) : LabToTarget.findFfiNames (Filtered625 :: rest) = suffixFfis625 := by
  rw [findFfiNames_section, localFfis625_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep625
end InitECandidate.Proofs.BackendStages.Metadata
