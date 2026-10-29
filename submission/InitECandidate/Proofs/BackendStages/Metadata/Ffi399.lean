import InitECandidate.Proofs.BackendStages.Metadata.Data399
import InitECandidate.Proofs.BackendStages.Filtered399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis399_eq : ffiLines Filtered399.lines = localFfis399 := by
  with_unfolding_all rfl
theorem ffiStep399 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis399) : LabToTarget.findFfiNames (Filtered399 :: rest) = suffixFfis399 := by
  rw [findFfiNames_section, localFfis399_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep399
end InitECandidate.Proofs.BackendStages.Metadata
