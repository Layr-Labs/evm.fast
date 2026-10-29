import InitECandidate.Proofs.BackendStages.Metadata.Data369
import InitECandidate.Proofs.BackendStages.Filtered369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis369_eq : ffiLines Filtered369.lines = localFfis369 := by
  with_unfolding_all rfl
theorem ffiStep369 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis369) : LabToTarget.findFfiNames (Filtered369 :: rest) = suffixFfis369 := by
  rw [findFfiNames_section, localFfis369_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep369
end InitECandidate.Proofs.BackendStages.Metadata
