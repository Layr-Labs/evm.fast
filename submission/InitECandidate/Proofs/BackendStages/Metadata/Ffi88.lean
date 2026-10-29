import InitECandidate.Proofs.BackendStages.Metadata.Data88
import InitECandidate.Proofs.BackendStages.Filtered88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis88_eq : ffiLines Filtered88.lines = localFfis88 := by
  with_unfolding_all rfl
theorem ffiStep88 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis88) : LabToTarget.findFfiNames (Filtered88 :: rest) = suffixFfis88 := by
  rw [findFfiNames_section, localFfis88_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep88
end InitECandidate.Proofs.BackendStages.Metadata
