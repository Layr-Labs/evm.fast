import InitECandidate.Proofs.BackendStages.Metadata.Data5
import InitECandidate.Proofs.BackendStages.Filtered5
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis5_eq : ffiLines Filtered5.lines = localFfis5 := by
  with_unfolding_all rfl
theorem ffiStep5 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis5) : LabToTarget.findFfiNames (Filtered5 :: rest) = suffixFfis5 := by
  rw [findFfiNames_section, localFfis5_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep5
end InitECandidate.Proofs.BackendStages.Metadata
