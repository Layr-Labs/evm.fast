import InitECandidate.Proofs.BackendStages.Metadata.Data393
import InitECandidate.Proofs.BackendStages.Filtered393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis393_eq : ffiLines Filtered393.lines = localFfis393 := by
  with_unfolding_all rfl
theorem ffiStep393 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis393) : LabToTarget.findFfiNames (Filtered393 :: rest) = suffixFfis393 := by
  rw [findFfiNames_section, localFfis393_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep393
end InitECandidate.Proofs.BackendStages.Metadata
