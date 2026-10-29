import InitECandidate.Proofs.BackendStages.Metadata.Data92
import InitECandidate.Proofs.BackendStages.Filtered92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis92_eq : ffiLines Filtered92.lines = localFfis92 := by
  with_unfolding_all rfl
theorem ffiStep92 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis92) : LabToTarget.findFfiNames (Filtered92 :: rest) = suffixFfis92 := by
  rw [findFfiNames_section, localFfis92_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep92
end InitECandidate.Proofs.BackendStages.Metadata
