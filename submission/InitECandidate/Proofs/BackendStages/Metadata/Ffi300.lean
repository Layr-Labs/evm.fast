import InitECandidate.Proofs.BackendStages.Metadata.Data300
import InitECandidate.Proofs.BackendStages.Filtered300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis300_eq : ffiLines Filtered300.lines = localFfis300 := by
  with_unfolding_all rfl
theorem ffiStep300 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis300) : LabToTarget.findFfiNames (Filtered300 :: rest) = suffixFfis300 := by
  rw [findFfiNames_section, localFfis300_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep300
end InitECandidate.Proofs.BackendStages.Metadata
