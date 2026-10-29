import InitECandidate.Proofs.BackendStages.Metadata.Data676
import InitECandidate.Proofs.BackendStages.Filtered676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis676_eq : ffiLines Filtered676.lines = localFfis676 := by
  with_unfolding_all rfl
theorem ffiStep676 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis676) : LabToTarget.findFfiNames (Filtered676 :: rest) = suffixFfis676 := by
  rw [findFfiNames_section, localFfis676_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep676
end InitECandidate.Proofs.BackendStages.Metadata
