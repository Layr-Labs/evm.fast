import InitECandidate.Proofs.BackendStages.Metadata.Data515
import InitECandidate.Proofs.BackendStages.Filtered515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis515_eq : ffiLines Filtered515.lines = localFfis515 := by
  with_unfolding_all rfl
theorem ffiStep515 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis515) : LabToTarget.findFfiNames (Filtered515 :: rest) = suffixFfis515 := by
  rw [findFfiNames_section, localFfis515_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep515
end InitECandidate.Proofs.BackendStages.Metadata
