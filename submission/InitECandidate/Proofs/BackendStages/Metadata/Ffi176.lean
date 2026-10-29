import InitECandidate.Proofs.BackendStages.Metadata.Data176
import InitECandidate.Proofs.BackendStages.Filtered176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis176_eq : ffiLines Filtered176.lines = localFfis176 := by
  with_unfolding_all rfl
theorem ffiStep176 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis176) : LabToTarget.findFfiNames (Filtered176 :: rest) = suffixFfis176 := by
  rw [findFfiNames_section, localFfis176_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep176
end InitECandidate.Proofs.BackendStages.Metadata
