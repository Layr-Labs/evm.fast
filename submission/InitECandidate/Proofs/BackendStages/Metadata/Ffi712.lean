import InitECandidate.Proofs.BackendStages.Metadata.Data712
import InitECandidate.Proofs.BackendStages.Filtered712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis712_eq : ffiLines Filtered712.lines = localFfis712 := by
  with_unfolding_all rfl
theorem ffiStep712 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis712) : LabToTarget.findFfiNames (Filtered712 :: rest) = suffixFfis712 := by
  rw [findFfiNames_section, localFfis712_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep712
end InitECandidate.Proofs.BackendStages.Metadata
