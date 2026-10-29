import InitECandidate.Proofs.BackendStages.Metadata.Data797
import InitECandidate.Proofs.BackendStages.Filtered797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis797_eq : ffiLines Filtered797.lines = localFfis797 := by
  with_unfolding_all rfl
theorem ffiStep797 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis797) : LabToTarget.findFfiNames (Filtered797 :: rest) = suffixFfis797 := by
  rw [findFfiNames_section, localFfis797_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep797
end InitECandidate.Proofs.BackendStages.Metadata
