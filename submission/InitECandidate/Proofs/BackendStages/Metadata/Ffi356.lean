import InitECandidate.Proofs.BackendStages.Metadata.Data356
import InitECandidate.Proofs.BackendStages.Filtered356
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis356_eq : ffiLines Filtered356.lines = localFfis356 := by
  with_unfolding_all rfl
theorem ffiStep356 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis356) : LabToTarget.findFfiNames (Filtered356 :: rest) = suffixFfis356 := by
  rw [findFfiNames_section, localFfis356_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep356
end InitECandidate.Proofs.BackendStages.Metadata
