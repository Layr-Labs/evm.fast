import InitECandidate.Proofs.BackendStages.Metadata.Data780
import InitECandidate.Proofs.BackendStages.Padded780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep780 : walkShmemLines Padded780.lines 791092 beforeFfis780 beforeShmem780 = (791240, afterFfis780, afterShmem780) := by
  kernel_rfl
theorem shmemStep780 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded780 :: rest) 791092 beforeFfis780 beforeShmem780 = LabToTarget.getShmemInfo rest 791240 afterFfis780 afterShmem780 := by
  rw [getShmemInfo_section, walkStep780]
theorem symbolLength780 : LabToTarget.secLength Padded780.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep780
#print axioms symbolLength780
end InitECandidate.Proofs.BackendStages.Metadata
