import InitECandidate.Proofs.BackendStages.Metadata.Data354
import InitECandidate.Proofs.BackendStages.Filtered354
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis354_eq : ffiLines Filtered354.lines = localFfis354 := by
  with_unfolding_all rfl
theorem ffiStep354 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis354) : LabToTarget.findFfiNames (Filtered354 :: rest) = suffixFfis354 := by
  rw [findFfiNames_section, localFfis354_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep354
end InitECandidate.Proofs.BackendStages.Metadata
