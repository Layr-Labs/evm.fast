import InitECandidate.Proofs.BackendStages.Metadata.Data669
import InitECandidate.Proofs.BackendStages.Filtered669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis669_eq : ffiLines Filtered669.lines = localFfis669 := by
  with_unfolding_all rfl
theorem ffiStep669 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis669) : LabToTarget.findFfiNames (Filtered669 :: rest) = suffixFfis669 := by
  rw [findFfiNames_section, localFfis669_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep669
end InitECandidate.Proofs.BackendStages.Metadata
