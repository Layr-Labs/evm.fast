import InitECandidate.Proofs.BackendStages.Metadata.Data823
import InitECandidate.Proofs.BackendStages.Filtered823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis823_eq : ffiLines Filtered823.lines = localFfis823 := by
  with_unfolding_all rfl
theorem ffiStep823 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis823) : LabToTarget.findFfiNames (Filtered823 :: rest) = suffixFfis823 := by
  rw [findFfiNames_section, localFfis823_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep823
end InitECandidate.Proofs.BackendStages.Metadata
