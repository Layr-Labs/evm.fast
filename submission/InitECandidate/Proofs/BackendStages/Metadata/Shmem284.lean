import InitECandidate.Proofs.BackendStages.Metadata.Data284
import InitECandidate.Proofs.BackendStages.Padded284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep284 : walkShmemLines Padded284.lines 226892 beforeFfis284 beforeShmem284 = (227204, afterFfis284, afterShmem284) := by
  kernel_rfl
theorem shmemStep284 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded284 :: rest) 226892 beforeFfis284 beforeShmem284 = LabToTarget.getShmemInfo rest 227204 afterFfis284 afterShmem284 := by
  rw [getShmemInfo_section, walkStep284]
theorem symbolLength284 : LabToTarget.secLength Padded284.lines 0 = 312 := by
  kernel_rfl
#print axioms shmemStep284
#print axioms symbolLength284
end InitECandidate.Proofs.BackendStages.Metadata
