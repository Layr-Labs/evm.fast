import InitECandidate.Proofs.BackendStages.Metadata.Data725
import InitECandidate.Proofs.BackendStages.Filtered725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis725_eq : ffiLines Filtered725.lines = localFfis725 := by
  with_unfolding_all rfl
theorem ffiStep725 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis725) : LabToTarget.findFfiNames (Filtered725 :: rest) = suffixFfis725 := by
  rw [findFfiNames_section, localFfis725_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep725
end InitECandidate.Proofs.BackendStages.Metadata
