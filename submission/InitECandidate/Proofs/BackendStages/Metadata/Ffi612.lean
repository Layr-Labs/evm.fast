import InitECandidate.Proofs.BackendStages.Metadata.Data612
import InitECandidate.Proofs.BackendStages.Filtered612
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis612_eq : ffiLines Filtered612.lines = localFfis612 := by
  with_unfolding_all rfl
theorem ffiStep612 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis612) : LabToTarget.findFfiNames (Filtered612 :: rest) = suffixFfis612 := by
  rw [findFfiNames_section, localFfis612_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep612
end InitECandidate.Proofs.BackendStages.Metadata
