import InitECandidate.Proofs.BackendStages.Metadata.Data101
import InitECandidate.Proofs.BackendStages.Filtered101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis101_eq : ffiLines Filtered101.lines = localFfis101 := by
  with_unfolding_all rfl
theorem ffiStep101 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis101) : LabToTarget.findFfiNames (Filtered101 :: rest) = suffixFfis101 := by
  rw [findFfiNames_section, localFfis101_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep101
end InitECandidate.Proofs.BackendStages.Metadata
