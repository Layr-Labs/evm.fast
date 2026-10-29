import InitECandidate.Proofs.BackendStages.Metadata.Data496
import InitECandidate.Proofs.BackendStages.Filtered496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis496_eq : ffiLines Filtered496.lines = localFfis496 := by
  with_unfolding_all rfl
theorem ffiStep496 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis496) : LabToTarget.findFfiNames (Filtered496 :: rest) = suffixFfis496 := by
  rw [findFfiNames_section, localFfis496_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep496
end InitECandidate.Proofs.BackendStages.Metadata
