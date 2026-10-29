import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge250
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge251
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge252
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge253
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge254
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge255
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge256
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge257
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge258
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge259
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge260
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge261
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge262
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge263
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge264
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge265
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge266
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge267
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge268
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge269
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge270
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge271
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge272
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge273
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge274
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge275
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge276
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge277
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge278
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge279
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge280
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge281
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk6
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded250, InitECandidate.Proofs.BackendStages.Encoded251, InitECandidate.Proofs.BackendStages.Encoded252, InitECandidate.Proofs.BackendStages.Encoded253, InitECandidate.Proofs.BackendStages.Encoded254, InitECandidate.Proofs.BackendStages.Encoded255, InitECandidate.Proofs.BackendStages.Encoded256, InitECandidate.Proofs.BackendStages.Encoded257, InitECandidate.Proofs.BackendStages.Encoded258, InitECandidate.Proofs.BackendStages.Encoded259, InitECandidate.Proofs.BackendStages.Encoded260, InitECandidate.Proofs.BackendStages.Encoded261, InitECandidate.Proofs.BackendStages.Encoded262, InitECandidate.Proofs.BackendStages.Encoded263, InitECandidate.Proofs.BackendStages.Encoded264, InitECandidate.Proofs.BackendStages.Encoded265, InitECandidate.Proofs.BackendStages.Encoded266, InitECandidate.Proofs.BackendStages.Encoded267, InitECandidate.Proofs.BackendStages.Encoded268, InitECandidate.Proofs.BackendStages.Encoded269, InitECandidate.Proofs.BackendStages.Encoded270, InitECandidate.Proofs.BackendStages.Encoded271, InitECandidate.Proofs.BackendStages.Encoded272, InitECandidate.Proofs.BackendStages.Encoded273, InitECandidate.Proofs.BackendStages.Encoded274, InitECandidate.Proofs.BackendStages.Encoded275, InitECandidate.Proofs.BackendStages.Encoded276, InitECandidate.Proofs.BackendStages.Encoded277, InitECandidate.Proofs.BackendStages.Encoded278, InitECandidate.Proofs.BackendStages.Encoded279, InitECandidate.Proofs.BackendStages.Encoded280, InitECandidate.Proofs.BackendStages.Encoded281]
def output : LabSem.LabProgHOL 64 := [Initial250, Initial251, Initial252, Initial253, Initial254, Initial255, Initial256, Initial257, Initial258, Initial259, Initial260, Initial261, Initial262, Initial263, Initial264, Initial265, Initial266, Initial267, Initial268, Initial269, Initial270, Initial271, Initial272, Initial273, Initial274, Initial275, Initial276, Initial277, Initial278, Initial279, Initial280, Initial281]
theorem origin_eq : input = output := by
  simp only [input, output, Initial250_eq, Initial251_eq, Initial252_eq, Initial253_eq, Initial254_eq, Initial255_eq, Initial256_eq, Initial257_eq, Initial258_eq, Initial259_eq, Initial260_eq, Initial261_eq, Initial262_eq, Initial263_eq, Initial264_eq, Initial265_eq, Initial266_eq, Initial267_eq, Initial268_eq, Initial269_eq, Initial270_eq, Initial271_eq, Initial272_eq, Initial273_eq, Initial274_eq, Initial275_eq, Initial276_eq, Initial277_eq, Initial278_eq, Initial279_eq, Initial280_eq, Initial281_eq]
#print axioms origin_eq
end OriginChunk6
end InitECandidate.Proofs.BackendStages.TargetChecks
