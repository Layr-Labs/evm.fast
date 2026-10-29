import InitECandidate.Proofs.BackendStages.Metadata.Data137
import InitECandidate.Proofs.BackendStages.Filtered137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis137_eq : ffiLines Filtered137.lines = localFfis137 := by
  with_unfolding_all rfl
theorem ffiStep137 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis137) : LabToTarget.findFfiNames (Filtered137 :: rest) = suffixFfis137 := by
  rw [findFfiNames_section, localFfis137_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep137
end InitECandidate.Proofs.BackendStages.Metadata
