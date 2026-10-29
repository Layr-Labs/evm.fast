import InitECandidate.Proofs.BackendStages.Metadata.Data380
import InitECandidate.Proofs.BackendStages.Filtered380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis380_eq : ffiLines Filtered380.lines = localFfis380 := by
  with_unfolding_all rfl
theorem ffiStep380 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis380) : LabToTarget.findFfiNames (Filtered380 :: rest) = suffixFfis380 := by
  rw [findFfiNames_section, localFfis380_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep380
end InitECandidate.Proofs.BackendStages.Metadata
