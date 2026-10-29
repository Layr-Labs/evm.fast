import InitECandidate.Proofs.BackendStages.BytesChunkData112_127
import InitECandidate.Proofs.BackendStages.FinalChunk112_127
import InitECandidate.Proofs.BackendStages.Bytes112
import InitECandidate.Proofs.BackendStages.Bytes113
import InitECandidate.Proofs.BackendStages.Bytes114
import InitECandidate.Proofs.BackendStages.Bytes115
import InitECandidate.Proofs.BackendStages.Bytes116
import InitECandidate.Proofs.BackendStages.Bytes117
import InitECandidate.Proofs.BackendStages.Bytes118
import InitECandidate.Proofs.BackendStages.Bytes119
import InitECandidate.Proofs.BackendStages.Bytes120
import InitECandidate.Proofs.BackendStages.Bytes121
import InitECandidate.Proofs.BackendStages.Bytes122
import InitECandidate.Proofs.BackendStages.Bytes123
import InitECandidate.Proofs.BackendStages.Bytes124
import InitECandidate.Proofs.BackendStages.Bytes125
import InitECandidate.Proofs.BackendStages.Bytes126
import InitECandidate.Proofs.BackendStages.Bytes127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk112_127
theorem compiled_eq : LabToTarget.progToBytes FinalChunk112_127.padded = BytesChunkData112_127.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded112.lines.map LabToTarget.lineBytes).flatten, (Padded113.lines.map LabToTarget.lineBytes).flatten, (Padded114.lines.map LabToTarget.lineBytes).flatten, (Padded115.lines.map LabToTarget.lineBytes).flatten, (Padded116.lines.map LabToTarget.lineBytes).flatten, (Padded117.lines.map LabToTarget.lineBytes).flatten, (Padded118.lines.map LabToTarget.lineBytes).flatten, (Padded119.lines.map LabToTarget.lineBytes).flatten, (Padded120.lines.map LabToTarget.lineBytes).flatten, (Padded121.lines.map LabToTarget.lineBytes).flatten, (Padded122.lines.map LabToTarget.lineBytes).flatten, (Padded123.lines.map LabToTarget.lineBytes).flatten, (Padded124.lines.map LabToTarget.lineBytes).flatten, (Padded125.lines.map LabToTarget.lineBytes).flatten, (Padded126.lines.map LabToTarget.lineBytes).flatten, (Padded127.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData112_127.bytes
  rw [sectionBytes112_eq, sectionBytes113_eq, sectionBytes114_eq, sectionBytes115_eq, sectionBytes116_eq, sectionBytes117_eq, sectionBytes118_eq, sectionBytes119_eq, sectionBytes120_eq, sectionBytes121_eq, sectionBytes122_eq, sectionBytes123_eq, sectionBytes124_eq, sectionBytes125_eq, sectionBytes126_eq, sectionBytes127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk112_127
