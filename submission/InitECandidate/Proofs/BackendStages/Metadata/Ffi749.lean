import InitECandidate.Proofs.BackendStages.Metadata.Data749
import InitECandidate.Proofs.BackendStages.Filtered749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis749_eq : ffiLines Filtered749.lines = localFfis749 := by
  with_unfolding_all rfl
theorem ffiStep749 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis749) : LabToTarget.findFfiNames (Filtered749 :: rest) = suffixFfis749 := by
  rw [findFfiNames_section, localFfis749_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep749
end InitECandidate.Proofs.BackendStages.Metadata
