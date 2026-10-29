import InitECandidate.Proofs.BackendStages.Metadata.Data754
import InitECandidate.Proofs.BackendStages.Filtered754
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis754_eq : ffiLines Filtered754.lines = localFfis754 := by
  with_unfolding_all rfl
theorem ffiStep754 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis754) : LabToTarget.findFfiNames (Filtered754 :: rest) = suffixFfis754 := by
  rw [findFfiNames_section, localFfis754_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep754
end InitECandidate.Proofs.BackendStages.Metadata
