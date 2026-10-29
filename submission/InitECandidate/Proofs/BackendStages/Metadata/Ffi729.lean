import InitECandidate.Proofs.BackendStages.Metadata.Data729
import InitECandidate.Proofs.BackendStages.Filtered729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis729_eq : ffiLines Filtered729.lines = localFfis729 := by
  with_unfolding_all rfl
theorem ffiStep729 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis729) : LabToTarget.findFfiNames (Filtered729 :: rest) = suffixFfis729 := by
  rw [findFfiNames_section, localFfis729_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep729
end InitECandidate.Proofs.BackendStages.Metadata
