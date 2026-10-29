import InitECandidate.Proofs.BackendStages.Metadata.Data640
import InitECandidate.Proofs.BackendStages.Filtered640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis640_eq : ffiLines Filtered640.lines = localFfis640 := by
  with_unfolding_all rfl
theorem ffiStep640 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis640) : LabToTarget.findFfiNames (Filtered640 :: rest) = suffixFfis640 := by
  rw [findFfiNames_section, localFfis640_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep640
end InitECandidate.Proofs.BackendStages.Metadata
