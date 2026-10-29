import InitECandidate.Proofs.BackendStages.Metadata.Data738
import InitECandidate.Proofs.BackendStages.Filtered738
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis738_eq : ffiLines Filtered738.lines = localFfis738 := by
  with_unfolding_all rfl
theorem ffiStep738 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis738) : LabToTarget.findFfiNames (Filtered738 :: rest) = suffixFfis738 := by
  rw [findFfiNames_section, localFfis738_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep738
end InitECandidate.Proofs.BackendStages.Metadata
