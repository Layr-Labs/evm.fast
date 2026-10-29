import InitECandidate.Proofs.BackendStages.Metadata.Data715
import InitECandidate.Proofs.BackendStages.Filtered715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis715_eq : ffiLines Filtered715.lines = localFfis715 := by
  with_unfolding_all rfl
theorem ffiStep715 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis715) : LabToTarget.findFfiNames (Filtered715 :: rest) = suffixFfis715 := by
  rw [findFfiNames_section, localFfis715_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep715
end InitECandidate.Proofs.BackendStages.Metadata
