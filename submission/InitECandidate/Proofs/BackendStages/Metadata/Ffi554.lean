import InitECandidate.Proofs.BackendStages.Metadata.Data554
import InitECandidate.Proofs.BackendStages.Filtered554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis554_eq : ffiLines Filtered554.lines = localFfis554 := by
  with_unfolding_all rfl
theorem ffiStep554 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis554) : LabToTarget.findFfiNames (Filtered554 :: rest) = suffixFfis554 := by
  rw [findFfiNames_section, localFfis554_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep554
end InitECandidate.Proofs.BackendStages.Metadata
