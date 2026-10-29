import InitECandidate.Proofs.BackendStages.Metadata.Data186
import InitECandidate.Proofs.BackendStages.Filtered186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis186_eq : ffiLines Filtered186.lines = localFfis186 := by
  with_unfolding_all rfl
theorem ffiStep186 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis186) : LabToTarget.findFfiNames (Filtered186 :: rest) = suffixFfis186 := by
  rw [findFfiNames_section, localFfis186_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep186
end InitECandidate.Proofs.BackendStages.Metadata
