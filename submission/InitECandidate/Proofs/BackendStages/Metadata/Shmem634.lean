import InitECandidate.Proofs.BackendStages.Metadata.Data634
import InitECandidate.Proofs.BackendStages.Padded634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep634 : walkShmemLines Padded634.lines 529316 beforeFfis634 beforeShmem634 = (531736, afterFfis634, afterShmem634) := by
  kernel_rfl
theorem shmemStep634 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded634 :: rest) 529316 beforeFfis634 beforeShmem634 = LabToTarget.getShmemInfo rest 531736 afterFfis634 afterShmem634 := by
  rw [getShmemInfo_section, walkStep634]
theorem symbolLength634 : LabToTarget.secLength Padded634.lines 0 = 2420 := by
  kernel_rfl
#print axioms shmemStep634
#print axioms symbolLength634
end InitECandidate.Proofs.BackendStages.Metadata
