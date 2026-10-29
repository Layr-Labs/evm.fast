import InitECandidate.Proofs.BackendStages.Metadata.Data386
import InitECandidate.Proofs.BackendStages.Filtered386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis386_eq : ffiLines Filtered386.lines = localFfis386 := by
  with_unfolding_all rfl
theorem ffiStep386 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis386) : LabToTarget.findFfiNames (Filtered386 :: rest) = suffixFfis386 := by
  rw [findFfiNames_section, localFfis386_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep386
end InitECandidate.Proofs.BackendStages.Metadata
