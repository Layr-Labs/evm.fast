import InitECandidate.Proofs.BackendStages.Metadata.Data216
import InitECandidate.Proofs.BackendStages.Filtered216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis216_eq : ffiLines Filtered216.lines = localFfis216 := by
  with_unfolding_all rfl
theorem ffiStep216 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis216) : LabToTarget.findFfiNames (Filtered216 :: rest) = suffixFfis216 := by
  rw [findFfiNames_section, localFfis216_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep216
end InitECandidate.Proofs.BackendStages.Metadata
