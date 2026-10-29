import InitECandidate.Proofs.BackendStages.Metadata.Data759
import InitECandidate.Proofs.BackendStages.Filtered759
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis759_eq : ffiLines Filtered759.lines = localFfis759 := by
  with_unfolding_all rfl
theorem ffiStep759 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis759) : LabToTarget.findFfiNames (Filtered759 :: rest) = suffixFfis759 := by
  rw [findFfiNames_section, localFfis759_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep759
end InitECandidate.Proofs.BackendStages.Metadata
