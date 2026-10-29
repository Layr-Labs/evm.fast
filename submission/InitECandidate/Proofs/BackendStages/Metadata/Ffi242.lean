import InitECandidate.Proofs.BackendStages.Metadata.Data242
import InitECandidate.Proofs.BackendStages.Filtered242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis242_eq : ffiLines Filtered242.lines = localFfis242 := by
  with_unfolding_all rfl
theorem ffiStep242 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis242) : LabToTarget.findFfiNames (Filtered242 :: rest) = suffixFfis242 := by
  rw [findFfiNames_section, localFfis242_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep242
end InitECandidate.Proofs.BackendStages.Metadata
