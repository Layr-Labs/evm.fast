import InitECandidate.Proofs.BackendStages.Metadata.Data613
import InitECandidate.Proofs.BackendStages.Filtered613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis613_eq : ffiLines Filtered613.lines = localFfis613 := by
  with_unfolding_all rfl
theorem ffiStep613 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis613) : LabToTarget.findFfiNames (Filtered613 :: rest) = suffixFfis613 := by
  rw [findFfiNames_section, localFfis613_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep613
end InitECandidate.Proofs.BackendStages.Metadata
