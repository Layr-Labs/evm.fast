import InitECandidate.Proofs.BackendStages.Metadata.Data649
import InitECandidate.Proofs.BackendStages.Filtered649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis649_eq : ffiLines Filtered649.lines = localFfis649 := by
  with_unfolding_all rfl
theorem ffiStep649 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis649) : LabToTarget.findFfiNames (Filtered649 :: rest) = suffixFfis649 := by
  rw [findFfiNames_section, localFfis649_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep649
end InitECandidate.Proofs.BackendStages.Metadata
