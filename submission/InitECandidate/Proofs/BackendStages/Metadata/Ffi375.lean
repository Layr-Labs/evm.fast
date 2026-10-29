import InitECandidate.Proofs.BackendStages.Metadata.Data375
import InitECandidate.Proofs.BackendStages.Filtered375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis375_eq : ffiLines Filtered375.lines = localFfis375 := by
  with_unfolding_all rfl
theorem ffiStep375 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis375) : LabToTarget.findFfiNames (Filtered375 :: rest) = suffixFfis375 := by
  rw [findFfiNames_section, localFfis375_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep375
end InitECandidate.Proofs.BackendStages.Metadata
