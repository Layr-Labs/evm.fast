import InitECandidate.Proofs.BackendStages.Metadata.Data858
import InitECandidate.Proofs.BackendStages.Filtered858
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis858_eq : ffiLines Filtered858.lines = localFfis858 := by
  with_unfolding_all rfl
theorem ffiStep858 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis858) : LabToTarget.findFfiNames (Filtered858 :: rest) = suffixFfis858 := by
  rw [findFfiNames_section, localFfis858_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep858
end InitECandidate.Proofs.BackendStages.Metadata
