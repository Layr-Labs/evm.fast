import InitECandidate.Proofs.BackendStages.Metadata.Data225
import InitECandidate.Proofs.BackendStages.Filtered225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis225_eq : ffiLines Filtered225.lines = localFfis225 := by
  with_unfolding_all rfl
theorem ffiStep225 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis225) : LabToTarget.findFfiNames (Filtered225 :: rest) = suffixFfis225 := by
  rw [findFfiNames_section, localFfis225_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep225
end InitECandidate.Proofs.BackendStages.Metadata
