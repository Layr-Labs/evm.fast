import InitECandidate.Proofs.BackendStages.BytesChunkData480_495
import InitECandidate.Proofs.BackendStages.FinalChunk480_495
import InitECandidate.Proofs.BackendStages.Bytes480
import InitECandidate.Proofs.BackendStages.Bytes481
import InitECandidate.Proofs.BackendStages.Bytes482
import InitECandidate.Proofs.BackendStages.Bytes483
import InitECandidate.Proofs.BackendStages.Bytes484
import InitECandidate.Proofs.BackendStages.Bytes485
import InitECandidate.Proofs.BackendStages.Bytes486
import InitECandidate.Proofs.BackendStages.Bytes487
import InitECandidate.Proofs.BackendStages.Bytes488
import InitECandidate.Proofs.BackendStages.Bytes489
import InitECandidate.Proofs.BackendStages.Bytes490
import InitECandidate.Proofs.BackendStages.Bytes491
import InitECandidate.Proofs.BackendStages.Bytes492
import InitECandidate.Proofs.BackendStages.Bytes493
import InitECandidate.Proofs.BackendStages.Bytes494
import InitECandidate.Proofs.BackendStages.Bytes495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk480_495
theorem compiled_eq : LabToTarget.progToBytes FinalChunk480_495.padded = BytesChunkData480_495.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded480.lines.map LabToTarget.lineBytes).flatten, (Padded481.lines.map LabToTarget.lineBytes).flatten, (Padded482.lines.map LabToTarget.lineBytes).flatten, (Padded483.lines.map LabToTarget.lineBytes).flatten, (Padded484.lines.map LabToTarget.lineBytes).flatten, (Padded485.lines.map LabToTarget.lineBytes).flatten, (Padded486.lines.map LabToTarget.lineBytes).flatten, (Padded487.lines.map LabToTarget.lineBytes).flatten, (Padded488.lines.map LabToTarget.lineBytes).flatten, (Padded489.lines.map LabToTarget.lineBytes).flatten, (Padded490.lines.map LabToTarget.lineBytes).flatten, (Padded491.lines.map LabToTarget.lineBytes).flatten, (Padded492.lines.map LabToTarget.lineBytes).flatten, (Padded493.lines.map LabToTarget.lineBytes).flatten, (Padded494.lines.map LabToTarget.lineBytes).flatten, (Padded495.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData480_495.bytes
  rw [sectionBytes480_eq, sectionBytes481_eq, sectionBytes482_eq, sectionBytes483_eq, sectionBytes484_eq, sectionBytes485_eq, sectionBytes486_eq, sectionBytes487_eq, sectionBytes488_eq, sectionBytes489_eq, sectionBytes490_eq, sectionBytes491_eq, sectionBytes492_eq, sectionBytes493_eq, sectionBytes494_eq, sectionBytes495_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk480_495
