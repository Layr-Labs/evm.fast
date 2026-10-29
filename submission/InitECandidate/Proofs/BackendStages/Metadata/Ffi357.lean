import InitECandidate.Proofs.BackendStages.Metadata.Data357
import InitECandidate.Proofs.BackendStages.Filtered357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis357_eq : ffiLines Filtered357.lines = localFfis357 := by
  with_unfolding_all rfl
theorem ffiStep357 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis357) : LabToTarget.findFfiNames (Filtered357 :: rest) = suffixFfis357 := by
  rw [findFfiNames_section, localFfis357_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep357
end InitECandidate.Proofs.BackendStages.Metadata
