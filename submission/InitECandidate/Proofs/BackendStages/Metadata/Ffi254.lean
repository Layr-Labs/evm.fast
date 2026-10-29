import InitECandidate.Proofs.BackendStages.Metadata.Data254
import InitECandidate.Proofs.BackendStages.Filtered254
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis254_eq : ffiLines Filtered254.lines = localFfis254 := by
  with_unfolding_all rfl
theorem ffiStep254 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis254) : LabToTarget.findFfiNames (Filtered254 :: rest) = suffixFfis254 := by
  rw [findFfiNames_section, localFfis254_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep254
end InitECandidate.Proofs.BackendStages.Metadata
