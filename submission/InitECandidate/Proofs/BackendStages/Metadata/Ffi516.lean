import InitECandidate.Proofs.BackendStages.Metadata.Data516
import InitECandidate.Proofs.BackendStages.Filtered516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis516_eq : ffiLines Filtered516.lines = localFfis516 := by
  with_unfolding_all rfl
theorem ffiStep516 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis516) : LabToTarget.findFfiNames (Filtered516 :: rest) = suffixFfis516 := by
  rw [findFfiNames_section, localFfis516_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep516
end InitECandidate.Proofs.BackendStages.Metadata
