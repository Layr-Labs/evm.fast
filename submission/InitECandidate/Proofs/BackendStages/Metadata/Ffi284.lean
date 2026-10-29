import InitECandidate.Proofs.BackendStages.Metadata.Data284
import InitECandidate.Proofs.BackendStages.Filtered284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis284_eq : ffiLines Filtered284.lines = localFfis284 := by
  with_unfolding_all rfl
theorem ffiStep284 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis284) : LabToTarget.findFfiNames (Filtered284 :: rest) = suffixFfis284 := by
  rw [findFfiNames_section, localFfis284_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep284
end InitECandidate.Proofs.BackendStages.Metadata
