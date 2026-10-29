import InitECandidate.Proofs.BackendStages.Metadata.Data530
import InitECandidate.Proofs.BackendStages.Filtered530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis530_eq : ffiLines Filtered530.lines = localFfis530 := by
  with_unfolding_all rfl
theorem ffiStep530 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis530) : LabToTarget.findFfiNames (Filtered530 :: rest) = suffixFfis530 := by
  rw [findFfiNames_section, localFfis530_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep530
end InitECandidate.Proofs.BackendStages.Metadata
