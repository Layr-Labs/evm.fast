import InitECandidate.Proofs.BackendStages.Metadata.Data561
import InitECandidate.Proofs.BackendStages.Filtered561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis561_eq : ffiLines Filtered561.lines = localFfis561 := by
  with_unfolding_all rfl
theorem ffiStep561 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis561) : LabToTarget.findFfiNames (Filtered561 :: rest) = suffixFfis561 := by
  rw [findFfiNames_section, localFfis561_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep561
end InitECandidate.Proofs.BackendStages.Metadata
