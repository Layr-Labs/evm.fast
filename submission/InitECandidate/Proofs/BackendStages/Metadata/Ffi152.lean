import InitECandidate.Proofs.BackendStages.Metadata.Data152
import InitECandidate.Proofs.BackendStages.Filtered152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis152_eq : ffiLines Filtered152.lines = localFfis152 := by
  with_unfolding_all rfl
theorem ffiStep152 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis152) : LabToTarget.findFfiNames (Filtered152 :: rest) = suffixFfis152 := by
  rw [findFfiNames_section, localFfis152_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep152
end InitECandidate.Proofs.BackendStages.Metadata
