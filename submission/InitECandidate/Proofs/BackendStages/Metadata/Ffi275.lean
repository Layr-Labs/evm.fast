import InitECandidate.Proofs.BackendStages.Metadata.Data275
import InitECandidate.Proofs.BackendStages.Filtered275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis275_eq : ffiLines Filtered275.lines = localFfis275 := by
  with_unfolding_all rfl
theorem ffiStep275 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis275) : LabToTarget.findFfiNames (Filtered275 :: rest) = suffixFfis275 := by
  rw [findFfiNames_section, localFfis275_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep275
end InitECandidate.Proofs.BackendStages.Metadata
