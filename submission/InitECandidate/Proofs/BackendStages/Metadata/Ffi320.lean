import InitECandidate.Proofs.BackendStages.Metadata.Data320
import InitECandidate.Proofs.BackendStages.Filtered320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis320_eq : ffiLines Filtered320.lines = localFfis320 := by
  with_unfolding_all rfl
theorem ffiStep320 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis320) : LabToTarget.findFfiNames (Filtered320 :: rest) = suffixFfis320 := by
  rw [findFfiNames_section, localFfis320_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep320
end InitECandidate.Proofs.BackendStages.Metadata
