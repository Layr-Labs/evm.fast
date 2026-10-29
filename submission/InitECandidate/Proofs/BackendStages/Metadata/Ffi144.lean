import InitECandidate.Proofs.BackendStages.Metadata.Data144
import InitECandidate.Proofs.BackendStages.Filtered144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis144_eq : ffiLines Filtered144.lines = localFfis144 := by
  with_unfolding_all rfl
theorem ffiStep144 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis144) : LabToTarget.findFfiNames (Filtered144 :: rest) = suffixFfis144 := by
  rw [findFfiNames_section, localFfis144_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep144
end InitECandidate.Proofs.BackendStages.Metadata
