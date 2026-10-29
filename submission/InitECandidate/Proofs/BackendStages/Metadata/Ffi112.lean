import InitECandidate.Proofs.BackendStages.Metadata.Data112
import InitECandidate.Proofs.BackendStages.Filtered112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis112_eq : ffiLines Filtered112.lines = localFfis112 := by
  with_unfolding_all rfl
theorem ffiStep112 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis112) : LabToTarget.findFfiNames (Filtered112 :: rest) = suffixFfis112 := by
  rw [findFfiNames_section, localFfis112_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep112
end InitECandidate.Proofs.BackendStages.Metadata
