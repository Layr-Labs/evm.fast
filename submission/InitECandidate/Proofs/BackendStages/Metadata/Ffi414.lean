import InitECandidate.Proofs.BackendStages.Metadata.Data414
import InitECandidate.Proofs.BackendStages.Filtered414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis414_eq : ffiLines Filtered414.lines = localFfis414 := by
  with_unfolding_all rfl
theorem ffiStep414 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis414) : LabToTarget.findFfiNames (Filtered414 :: rest) = suffixFfis414 := by
  rw [findFfiNames_section, localFfis414_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep414
end InitECandidate.Proofs.BackendStages.Metadata
