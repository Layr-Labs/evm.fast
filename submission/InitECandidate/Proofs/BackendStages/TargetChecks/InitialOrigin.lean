import InitECandidate.Proofs.BackendStages.Encoded
import InitECandidate.Proofs.BackendStages.TargetChecks.Phase0
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk0
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk1
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk2
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk3
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk4
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk5
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk6
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk7
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk8
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk9
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk10
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk11
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk12
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk13
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk14
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk15
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk16
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk17
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk18
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk19
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk20
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk21
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk22
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk23
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk24
import InitECandidate.Proofs.BackendStages.TargetChecks.OriginChunk25
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Initial.origin_eq : InitECandidate.Proofs.BackendStages.Encoded.program = Initial.program := by
  change (OriginChunk0.input ++ (OriginChunk1.input ++ (OriginChunk2.input ++ (OriginChunk3.input ++ (OriginChunk4.input ++ (OriginChunk5.input ++ (OriginChunk6.input ++ (OriginChunk7.input ++ (OriginChunk8.input ++ (OriginChunk9.input ++ (OriginChunk10.input ++ (OriginChunk11.input ++ (OriginChunk12.input ++ (OriginChunk13.input ++ (OriginChunk14.input ++ (OriginChunk15.input ++ (OriginChunk16.input ++ (OriginChunk17.input ++ (OriginChunk18.input ++ (OriginChunk19.input ++ (OriginChunk20.input ++ (OriginChunk21.input ++ (OriginChunk22.input ++ (OriginChunk23.input ++ (OriginChunk24.input ++ (OriginChunk25.input ++ [])))))))))))))))))))))))))) = (OriginChunk0.output ++ (OriginChunk1.output ++ (OriginChunk2.output ++ (OriginChunk3.output ++ (OriginChunk4.output ++ (OriginChunk5.output ++ (OriginChunk6.output ++ (OriginChunk7.output ++ (OriginChunk8.output ++ (OriginChunk9.output ++ (OriginChunk10.output ++ (OriginChunk11.output ++ (OriginChunk12.output ++ (OriginChunk13.output ++ (OriginChunk14.output ++ (OriginChunk15.output ++ (OriginChunk16.output ++ (OriginChunk17.output ++ (OriginChunk18.output ++ (OriginChunk19.output ++ (OriginChunk20.output ++ (OriginChunk21.output ++ (OriginChunk22.output ++ (OriginChunk23.output ++ (OriginChunk24.output ++ (OriginChunk25.output ++ []))))))))))))))))))))))))))
  rw [OriginChunk0.origin_eq, OriginChunk1.origin_eq, OriginChunk2.origin_eq, OriginChunk3.origin_eq, OriginChunk4.origin_eq, OriginChunk5.origin_eq, OriginChunk6.origin_eq, OriginChunk7.origin_eq, OriginChunk8.origin_eq, OriginChunk9.origin_eq, OriginChunk10.origin_eq, OriginChunk11.origin_eq, OriginChunk12.origin_eq, OriginChunk13.origin_eq, OriginChunk14.origin_eq, OriginChunk15.origin_eq, OriginChunk16.origin_eq, OriginChunk17.origin_eq, OriginChunk18.origin_eq, OriginChunk19.origin_eq, OriginChunk20.origin_eq, OriginChunk21.origin_eq, OriginChunk22.origin_eq, OriginChunk23.origin_eq, OriginChunk24.origin_eq, OriginChunk25.origin_eq]
#print axioms Initial.origin_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
