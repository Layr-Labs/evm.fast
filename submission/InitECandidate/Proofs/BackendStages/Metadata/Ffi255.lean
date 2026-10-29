import InitECandidate.Proofs.BackendStages.Metadata.Data255
import InitECandidate.Proofs.BackendStages.Filtered255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis255_eq : ffiLines Filtered255.lines = localFfis255 := by
  with_unfolding_all rfl
theorem ffiStep255 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis255) : LabToTarget.findFfiNames (Filtered255 :: rest) = suffixFfis255 := by
  rw [findFfiNames_section, localFfis255_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep255
end InitECandidate.Proofs.BackendStages.Metadata
