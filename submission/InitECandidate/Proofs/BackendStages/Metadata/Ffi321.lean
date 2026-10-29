import InitECandidate.Proofs.BackendStages.Metadata.Data321
import InitECandidate.Proofs.BackendStages.Filtered321
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis321_eq : ffiLines Filtered321.lines = localFfis321 := by
  with_unfolding_all rfl
theorem ffiStep321 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis321) : LabToTarget.findFfiNames (Filtered321 :: rest) = suffixFfis321 := by
  rw [findFfiNames_section, localFfis321_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep321
end InitECandidate.Proofs.BackendStages.Metadata
