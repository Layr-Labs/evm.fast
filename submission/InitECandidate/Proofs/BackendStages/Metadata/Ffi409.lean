import InitECandidate.Proofs.BackendStages.Metadata.Data409
import InitECandidate.Proofs.BackendStages.Filtered409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis409_eq : ffiLines Filtered409.lines = localFfis409 := by
  with_unfolding_all rfl
theorem ffiStep409 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis409) : LabToTarget.findFfiNames (Filtered409 :: rest) = suffixFfis409 := by
  rw [findFfiNames_section, localFfis409_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep409
end InitECandidate.Proofs.BackendStages.Metadata
