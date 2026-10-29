import InitECandidate.Proofs.BackendStages.Metadata.Data870
import InitECandidate.Proofs.BackendStages.Filtered870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis870_eq : ffiLines Filtered870.lines = localFfis870 := by
  with_unfolding_all rfl
theorem ffiStep870 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis870) : LabToTarget.findFfiNames (Filtered870 :: rest) = suffixFfis870 := by
  rw [findFfiNames_section, localFfis870_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep870
end InitECandidate.Proofs.BackendStages.Metadata
