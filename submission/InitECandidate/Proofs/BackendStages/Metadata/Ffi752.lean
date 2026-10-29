import InitECandidate.Proofs.BackendStages.Metadata.Data752
import InitECandidate.Proofs.BackendStages.Filtered752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis752_eq : ffiLines Filtered752.lines = localFfis752 := by
  with_unfolding_all rfl
theorem ffiStep752 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis752) : LabToTarget.findFfiNames (Filtered752 :: rest) = suffixFfis752 := by
  rw [findFfiNames_section, localFfis752_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep752
end InitECandidate.Proofs.BackendStages.Metadata
