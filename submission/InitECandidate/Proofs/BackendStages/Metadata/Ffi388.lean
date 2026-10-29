import InitECandidate.Proofs.BackendStages.Metadata.Data388
import InitECandidate.Proofs.BackendStages.Filtered388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis388_eq : ffiLines Filtered388.lines = localFfis388 := by
  with_unfolding_all rfl
theorem ffiStep388 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis388) : LabToTarget.findFfiNames (Filtered388 :: rest) = suffixFfis388 := by
  rw [findFfiNames_section, localFfis388_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep388
end InitECandidate.Proofs.BackendStages.Metadata
