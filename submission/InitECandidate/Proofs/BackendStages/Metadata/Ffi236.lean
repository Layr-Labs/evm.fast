import InitECandidate.Proofs.BackendStages.Metadata.Data236
import InitECandidate.Proofs.BackendStages.Filtered236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis236_eq : ffiLines Filtered236.lines = localFfis236 := by
  with_unfolding_all rfl
theorem ffiStep236 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis236) : LabToTarget.findFfiNames (Filtered236 :: rest) = suffixFfis236 := by
  rw [findFfiNames_section, localFfis236_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep236
end InitECandidate.Proofs.BackendStages.Metadata
