import InitECandidate.Proofs.BackendStages.Metadata.Data477
import InitECandidate.Proofs.BackendStages.Filtered477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis477_eq : ffiLines Filtered477.lines = localFfis477 := by
  with_unfolding_all rfl
theorem ffiStep477 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis477) : LabToTarget.findFfiNames (Filtered477 :: rest) = suffixFfis477 := by
  rw [findFfiNames_section, localFfis477_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep477
end InitECandidate.Proofs.BackendStages.Metadata
