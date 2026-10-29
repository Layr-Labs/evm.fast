import InitECandidate.Proofs.BackendStages.Metadata.Data679
import InitECandidate.Proofs.BackendStages.Filtered679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis679_eq : ffiLines Filtered679.lines = localFfis679 := by
  with_unfolding_all rfl
theorem ffiStep679 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis679) : LabToTarget.findFfiNames (Filtered679 :: rest) = suffixFfis679 := by
  rw [findFfiNames_section, localFfis679_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep679
end InitECandidate.Proofs.BackendStages.Metadata
