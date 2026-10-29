import InitECandidate.Proofs.BackendStages.Metadata.Data860
import InitECandidate.Proofs.BackendStages.Filtered860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis860_eq : ffiLines Filtered860.lines = localFfis860 := by
  with_unfolding_all rfl
theorem ffiStep860 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis860) : LabToTarget.findFfiNames (Filtered860 :: rest) = suffixFfis860 := by
  rw [findFfiNames_section, localFfis860_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep860
end InitECandidate.Proofs.BackendStages.Metadata
