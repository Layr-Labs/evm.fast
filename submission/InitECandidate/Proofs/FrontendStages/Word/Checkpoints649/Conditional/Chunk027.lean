import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Data.Chunk027
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
theorem node10368_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10364 (713, 4) = (output10368, (713, 4)) := by
  rw [output10368_def]
  kernel_rfl

theorem node10369_conditional
    (child10368 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10364 (713, 4) = (output10368, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10365 (713, 4) = (output10369, (713, 4)) := by
  rw [output10369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10368

theorem node10370_conditional
    (child10369 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10365 (713, 4) = (output10369, (713, 4)))
    (child179 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_175 (713, 4) = (output179, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10366 (713, 4) = (output10370, (713, 4)) := by
  rw [output10370_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10369 child179

theorem node10371_conditional
    (child10370 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10366 (713, 4) = (output10370, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10367 (713, 4) = (output10371, (713, 4)) := by
  rw [output10371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10370

theorem node10372_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10371 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10367 (713, 4) = (output10371, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10368 (713, 4) = (output10372, (713, 4)) := by
  rw [output10372_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10371

theorem node10373_conditional
    (child10372 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10368 (713, 4) = (output10372, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10369 (713, 4) = (output10373, (713, 4)) := by
  rw [output10373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10372

theorem node10374_conditional
    (child10367 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10363 (713, 2) = (output10367, (713, 4)))
    (child10373 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10369 (713, 4) = (output10373, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10370 (713, 2) = (output10374, (713, 4)) := by
  rw [output10374_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10367 child10373

theorem node10375_conditional
    (child10374 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10370 (713, 2) = (output10374, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10371 (713, 2) = (output10375, (713, 4)) := by
  rw [output10375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10374

theorem node10376_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10372 (713, 4) = (output10376, (713, 4)) := by
  rw [output10376_def]
  kernel_rfl

theorem node10377_conditional
    (child10376 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10372 (713, 4) = (output10376, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10373 (713, 4) = (output10377, (713, 4)) := by
  rw [output10377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10376

theorem node10378_conditional
    (child10377 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10373 (713, 4) = (output10377, (713, 4)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_189 (713, 4) = (output193, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10374 (713, 4) = (output10378, (713, 4)) := by
  rw [output10378_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10377 child193

theorem node10379_conditional
    (child10378 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10374 (713, 4) = (output10378, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10375 (713, 4) = (output10379, (713, 4)) := by
  rw [output10379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10378

theorem node10380_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10379 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10375 (713, 4) = (output10379, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10376 (713, 4) = (output10380, (713, 4)) := by
  rw [output10380_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10379

theorem node10381_conditional
    (child10380 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10376 (713, 4) = (output10380, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10377 (713, 4) = (output10381, (713, 4)) := by
  rw [output10381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10380

theorem node10382_conditional
    (child10375 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10371 (713, 2) = (output10375, (713, 4)))
    (child10381 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10377 (713, 4) = (output10381, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10378 (713, 2) = (output10382, (713, 4)) := by
  rw [output10382_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10375 child10381

theorem node10383_conditional
    (child10382 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10378 (713, 2) = (output10382, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10379 (713, 2) = (output10383, (713, 4)) := by
  rw [output10383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10382

theorem node10384_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10380 (713, 4) = (output10384, (713, 4)) := by
  rw [output10384_def]
  kernel_rfl

theorem node10385_conditional
    (child10384 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10380 (713, 4) = (output10384, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10381 (713, 4) = (output10385, (713, 4)) := by
  rw [output10385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10384

theorem node10386_conditional
    (child10385 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10381 (713, 4) = (output10385, (713, 4)))
    (child207 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_203 (713, 4) = (output207, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10382 (713, 4) = (output10386, (713, 4)) := by
  rw [output10386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10385 child207

theorem node10387_conditional
    (child10386 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10382 (713, 4) = (output10386, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10383 (713, 4) = (output10387, (713, 4)) := by
  rw [output10387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10386

theorem node10388_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10387 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10383 (713, 4) = (output10387, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10384 (713, 4) = (output10388, (713, 4)) := by
  rw [output10388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10387

theorem node10389_conditional
    (child10388 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10384 (713, 4) = (output10388, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10385 (713, 4) = (output10389, (713, 4)) := by
  rw [output10389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10388

theorem node10390_conditional
    (child10383 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10379 (713, 2) = (output10383, (713, 4)))
    (child10389 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10385 (713, 4) = (output10389, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10386 (713, 2) = (output10390, (713, 4)) := by
  rw [output10390_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10383 child10389

theorem node10391_conditional
    (child10390 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10386 (713, 2) = (output10390, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10387 (713, 2) = (output10391, (713, 4)) := by
  rw [output10391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10390

theorem node10392_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10388 (713, 4) = (output10392, (713, 4)) := by
  rw [output10392_def]
  kernel_rfl

theorem node10393_conditional
    (child10392 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10388 (713, 4) = (output10392, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10389 (713, 4) = (output10393, (713, 4)) := by
  rw [output10393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10392

theorem node10394_conditional
    (child10393 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10389 (713, 4) = (output10393, (713, 4)))
    (child221 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_217 (713, 4) = (output221, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10390 (713, 4) = (output10394, (713, 4)) := by
  rw [output10394_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10393 child221

theorem node10395_conditional
    (child10394 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10390 (713, 4) = (output10394, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10391 (713, 4) = (output10395, (713, 4)) := by
  rw [output10395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10394

theorem node10396_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10395 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10391 (713, 4) = (output10395, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10392 (713, 4) = (output10396, (713, 4)) := by
  rw [output10396_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10395

theorem node10397_conditional
    (child10396 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10392 (713, 4) = (output10396, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10393 (713, 4) = (output10397, (713, 4)) := by
  rw [output10397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10396

theorem node10398_conditional
    (child10391 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10387 (713, 2) = (output10391, (713, 4)))
    (child10397 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10393 (713, 4) = (output10397, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10394 (713, 2) = (output10398, (713, 4)) := by
  rw [output10398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10391 child10397

theorem node10399_conditional
    (child10398 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10394 (713, 2) = (output10398, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10395 (713, 2) = (output10399, (713, 4)) := by
  rw [output10399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10398

theorem node10400_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10396 (713, 4) = (output10400, (713, 4)) := by
  rw [output10400_def]
  kernel_rfl

theorem node10401_conditional
    (child10400 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10396 (713, 4) = (output10400, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10397 (713, 4) = (output10401, (713, 4)) := by
  rw [output10401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10400

theorem node10402_conditional
    (child10401 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10397 (713, 4) = (output10401, (713, 4)))
    (child10353 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10349 (713, 4) = (output10353, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10398 (713, 4) = (output10402, (713, 4)) := by
  rw [output10402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10401 child10353

theorem node10403_conditional
    (child10402 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10398 (713, 4) = (output10402, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10399 (713, 4) = (output10403, (713, 4)) := by
  rw [output10403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10402

theorem node10404_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10403 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10399 (713, 4) = (output10403, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10400 (713, 4) = (output10404, (713, 4)) := by
  rw [output10404_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10403

theorem node10405_conditional
    (child10404 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10400 (713, 4) = (output10404, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10401 (713, 4) = (output10405, (713, 4)) := by
  rw [output10405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10404

theorem node10406_conditional
    (child10399 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10395 (713, 2) = (output10399, (713, 4)))
    (child10405 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10401 (713, 4) = (output10405, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10402 (713, 2) = (output10406, (713, 4)) := by
  rw [output10406_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10399 child10405

theorem node10407_conditional
    (child10406 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10402 (713, 2) = (output10406, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10403 (713, 2) = (output10407, (713, 4)) := by
  rw [output10407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10406

theorem node10408_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10404 (713, 4) = (output10408, (713, 4)) := by
  rw [output10408_def]
  kernel_rfl

theorem node10409_conditional
    (child10408 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10404 (713, 4) = (output10408, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10405 (713, 4) = (output10409, (713, 4)) := by
  rw [output10409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10408

theorem node10410_conditional
    (child10409 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10405 (713, 4) = (output10409, (713, 4)))
    (child165 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_161 (713, 4) = (output165, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10406 (713, 4) = (output10410, (713, 4)) := by
  rw [output10410_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10409 child165

theorem node10411_conditional
    (child10410 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10406 (713, 4) = (output10410, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10407 (713, 4) = (output10411, (713, 4)) := by
  rw [output10411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10410

theorem node10412_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10411 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10407 (713, 4) = (output10411, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10408 (713, 4) = (output10412, (713, 4)) := by
  rw [output10412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10411

theorem node10413_conditional
    (child10412 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10408 (713, 4) = (output10412, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10409 (713, 4) = (output10413, (713, 4)) := by
  rw [output10413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10412

theorem node10414_conditional
    (child10407 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10403 (713, 2) = (output10407, (713, 4)))
    (child10413 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10409 (713, 4) = (output10413, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10410 (713, 2) = (output10414, (713, 4)) := by
  rw [output10414_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10407 child10413

theorem node10415_conditional
    (child10414 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10410 (713, 2) = (output10414, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10411 (713, 2) = (output10415, (713, 4)) := by
  rw [output10415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10414

theorem node10416_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10412 (713, 4) = (output10416, (713, 4)) := by
  rw [output10416_def]
  kernel_rfl

theorem node10417_conditional
    (child10416 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10412 (713, 4) = (output10416, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10413 (713, 4) = (output10417, (713, 4)) := by
  rw [output10417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10416

theorem node10418_conditional
    (child10417 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10413 (713, 4) = (output10417, (713, 4)))
    (child179 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_175 (713, 4) = (output179, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10414 (713, 4) = (output10418, (713, 4)) := by
  rw [output10418_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10417 child179

theorem node10419_conditional
    (child10418 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10414 (713, 4) = (output10418, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10415 (713, 4) = (output10419, (713, 4)) := by
  rw [output10419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10418

theorem node10420_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10419 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10415 (713, 4) = (output10419, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10416 (713, 4) = (output10420, (713, 4)) := by
  rw [output10420_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10419

theorem node10421_conditional
    (child10420 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10416 (713, 4) = (output10420, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10417 (713, 4) = (output10421, (713, 4)) := by
  rw [output10421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10420

theorem node10422_conditional
    (child10415 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10411 (713, 2) = (output10415, (713, 4)))
    (child10421 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10417 (713, 4) = (output10421, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10418 (713, 2) = (output10422, (713, 4)) := by
  rw [output10422_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10415 child10421

theorem node10423_conditional
    (child10422 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10418 (713, 2) = (output10422, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10419 (713, 2) = (output10423, (713, 4)) := by
  rw [output10423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10422

theorem node10424_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10420 (713, 4) = (output10424, (713, 4)) := by
  rw [output10424_def]
  kernel_rfl

theorem node10425_conditional
    (child10424 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10420 (713, 4) = (output10424, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10421 (713, 4) = (output10425, (713, 4)) := by
  rw [output10425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10424

theorem node10426_conditional
    (child10425 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10421 (713, 4) = (output10425, (713, 4)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_189 (713, 4) = (output193, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10422 (713, 4) = (output10426, (713, 4)) := by
  rw [output10426_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10425 child193

theorem node10427_conditional
    (child10426 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10422 (713, 4) = (output10426, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10423 (713, 4) = (output10427, (713, 4)) := by
  rw [output10427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10426

theorem node10428_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10427 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10423 (713, 4) = (output10427, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10424 (713, 4) = (output10428, (713, 4)) := by
  rw [output10428_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10427

theorem node10429_conditional
    (child10428 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10424 (713, 4) = (output10428, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10425 (713, 4) = (output10429, (713, 4)) := by
  rw [output10429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10428

theorem node10430_conditional
    (child10423 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10419 (713, 2) = (output10423, (713, 4)))
    (child10429 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10425 (713, 4) = (output10429, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10426 (713, 2) = (output10430, (713, 4)) := by
  rw [output10430_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10423 child10429

theorem node10431_conditional
    (child10430 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10426 (713, 2) = (output10430, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10427 (713, 2) = (output10431, (713, 4)) := by
  rw [output10431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10430

theorem node10432_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10428 (713, 4) = (output10432, (713, 4)) := by
  rw [output10432_def]
  kernel_rfl

theorem node10433_conditional
    (child10432 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10428 (713, 4) = (output10432, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10429 (713, 4) = (output10433, (713, 4)) := by
  rw [output10433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10432

theorem node10434_conditional
    (child10433 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10429 (713, 4) = (output10433, (713, 4)))
    (child207 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_203 (713, 4) = (output207, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10430 (713, 4) = (output10434, (713, 4)) := by
  rw [output10434_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10433 child207

theorem node10435_conditional
    (child10434 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10430 (713, 4) = (output10434, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10431 (713, 4) = (output10435, (713, 4)) := by
  rw [output10435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10434

theorem node10436_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10435 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10431 (713, 4) = (output10435, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10432 (713, 4) = (output10436, (713, 4)) := by
  rw [output10436_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10435

theorem node10437_conditional
    (child10436 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10432 (713, 4) = (output10436, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10433 (713, 4) = (output10437, (713, 4)) := by
  rw [output10437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10436

theorem node10438_conditional
    (child10431 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10427 (713, 2) = (output10431, (713, 4)))
    (child10437 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10433 (713, 4) = (output10437, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10434 (713, 2) = (output10438, (713, 4)) := by
  rw [output10438_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10431 child10437

theorem node10439_conditional
    (child10438 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10434 (713, 2) = (output10438, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10435 (713, 2) = (output10439, (713, 4)) := by
  rw [output10439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10438

theorem node10440_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10436 (713, 4) = (output10440, (713, 4)) := by
  rw [output10440_def]
  kernel_rfl

theorem node10441_conditional
    (child10440 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10436 (713, 4) = (output10440, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10437 (713, 4) = (output10441, (713, 4)) := by
  rw [output10441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10440

theorem node10442_conditional
    (child10441 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10437 (713, 4) = (output10441, (713, 4)))
    (child221 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_217 (713, 4) = (output221, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10438 (713, 4) = (output10442, (713, 4)) := by
  rw [output10442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10441 child221

theorem node10443_conditional
    (child10442 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10438 (713, 4) = (output10442, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10439 (713, 4) = (output10443, (713, 4)) := by
  rw [output10443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10442

theorem node10444_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10443 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10439 (713, 4) = (output10443, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10440 (713, 4) = (output10444, (713, 4)) := by
  rw [output10444_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10443

theorem node10445_conditional
    (child10444 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10440 (713, 4) = (output10444, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10441 (713, 4) = (output10445, (713, 4)) := by
  rw [output10445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10444

theorem node10446_conditional
    (child10439 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10435 (713, 2) = (output10439, (713, 4)))
    (child10445 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10441 (713, 4) = (output10445, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10442 (713, 2) = (output10446, (713, 4)) := by
  rw [output10446_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10439 child10445

theorem node10447_conditional
    (child10446 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10442 (713, 2) = (output10446, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10443 (713, 2) = (output10447, (713, 4)) := by
  rw [output10447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10446

theorem node10448_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10444 (713, 4) = (output10448, (713, 4)) := by
  rw [output10448_def]
  kernel_rfl

theorem node10449_conditional
    (child10448 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10444 (713, 4) = (output10448, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10445 (713, 4) = (output10449, (713, 4)) := by
  rw [output10449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10448

theorem node10450_conditional
    (child10449 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10445 (713, 4) = (output10449, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10446 (713, 4) = (output10450, (713, 4)) := by
  rw [output10450_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10449 child105

theorem node10451_conditional
    (child10450 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10446 (713, 4) = (output10450, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10447 (713, 4) = (output10451, (713, 4)) := by
  rw [output10451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10450

theorem node10452_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10451 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10447 (713, 4) = (output10451, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10448 (713, 4) = (output10452, (713, 4)) := by
  rw [output10452_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10451

theorem node10453_conditional
    (child10452 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10448 (713, 4) = (output10452, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10449 (713, 4) = (output10453, (713, 4)) := by
  rw [output10453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10452

theorem node10454_conditional
    (child10447 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10443 (713, 2) = (output10447, (713, 4)))
    (child10453 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10449 (713, 4) = (output10453, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10450 (713, 2) = (output10454, (713, 4)) := by
  rw [output10454_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10447 child10453

theorem node10455_conditional
    (child10454 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10450 (713, 2) = (output10454, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10451 (713, 2) = (output10455, (713, 4)) := by
  rw [output10455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10454

theorem node10456_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10452 (713, 4) = (output10456, (713, 4)) := by
  rw [output10456_def]
  kernel_rfl

theorem node10457_conditional
    (child10456 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10452 (713, 4) = (output10456, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10453 (713, 4) = (output10457, (713, 4)) := by
  rw [output10457_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10456

theorem node10458_conditional
    (child10457 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10453 (713, 4) = (output10457, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10454 (713, 4) = (output10458, (713, 4)) := by
  rw [output10458_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10457 child105

theorem node10459_conditional
    (child10458 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10454 (713, 4) = (output10458, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10455 (713, 4) = (output10459, (713, 4)) := by
  rw [output10459_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10458

theorem node10460_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10459 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10455 (713, 4) = (output10459, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10456 (713, 4) = (output10460, (713, 4)) := by
  rw [output10460_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10459

theorem node10461_conditional
    (child10460 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10456 (713, 4) = (output10460, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10457 (713, 4) = (output10461, (713, 4)) := by
  rw [output10461_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10460

theorem node10462_conditional
    (child10455 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10451 (713, 2) = (output10455, (713, 4)))
    (child10461 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10457 (713, 4) = (output10461, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10458 (713, 2) = (output10462, (713, 4)) := by
  rw [output10462_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10455 child10461

theorem node10463_conditional
    (child10462 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10458 (713, 2) = (output10462, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10459 (713, 2) = (output10463, (713, 4)) := by
  rw [output10463_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10462

theorem node10464_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10460 (713, 4) = (output10464, (713, 4)) := by
  rw [output10464_def]
  kernel_rfl

theorem node10465_conditional
    (child10464 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10460 (713, 4) = (output10464, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10461 (713, 4) = (output10465, (713, 4)) := by
  rw [output10465_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10464

theorem node10466_conditional
    (child10465 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10461 (713, 4) = (output10465, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10462 (713, 4) = (output10466, (713, 4)) := by
  rw [output10466_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10465 child105

theorem node10467_conditional
    (child10466 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10462 (713, 4) = (output10466, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10463 (713, 4) = (output10467, (713, 4)) := by
  rw [output10467_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10466

theorem node10468_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10467 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10463 (713, 4) = (output10467, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10464 (713, 4) = (output10468, (713, 4)) := by
  rw [output10468_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10467

theorem node10469_conditional
    (child10468 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10464 (713, 4) = (output10468, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10465 (713, 4) = (output10469, (713, 4)) := by
  rw [output10469_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10468

theorem node10470_conditional
    (child10463 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10459 (713, 2) = (output10463, (713, 4)))
    (child10469 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10465 (713, 4) = (output10469, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10466 (713, 2) = (output10470, (713, 4)) := by
  rw [output10470_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10463 child10469

theorem node10471_conditional
    (child10470 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10466 (713, 2) = (output10470, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10467 (713, 2) = (output10471, (713, 4)) := by
  rw [output10471_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10470

theorem node10472_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10468 (713, 4) = (output10472, (713, 4)) := by
  rw [output10472_def]
  kernel_rfl

theorem node10473_conditional
    (child10472 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10468 (713, 4) = (output10472, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10469 (713, 4) = (output10473, (713, 4)) := by
  rw [output10473_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10472

theorem node10474_conditional
    (child10473 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10469 (713, 4) = (output10473, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10470 (713, 4) = (output10474, (713, 4)) := by
  rw [output10474_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10473 child105

theorem node10475_conditional
    (child10474 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10470 (713, 4) = (output10474, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10471 (713, 4) = (output10475, (713, 4)) := by
  rw [output10475_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10474

theorem node10476_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10475 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10471 (713, 4) = (output10475, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10472 (713, 4) = (output10476, (713, 4)) := by
  rw [output10476_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10475

theorem node10477_conditional
    (child10476 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10472 (713, 4) = (output10476, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10473 (713, 4) = (output10477, (713, 4)) := by
  rw [output10477_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10476

theorem node10478_conditional
    (child10471 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10467 (713, 2) = (output10471, (713, 4)))
    (child10477 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10473 (713, 4) = (output10477, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10474 (713, 2) = (output10478, (713, 4)) := by
  rw [output10478_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10471 child10477

theorem node10479_conditional
    (child10478 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10474 (713, 2) = (output10478, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10475 (713, 2) = (output10479, (713, 4)) := by
  rw [output10479_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10478

theorem node10480_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10476 (713, 4) = (output10480, (713, 4)) := by
  rw [output10480_def]
  kernel_rfl

theorem node10481_conditional
    (child10480 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10476 (713, 4) = (output10480, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10477 (713, 4) = (output10481, (713, 4)) := by
  rw [output10481_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10480

theorem node10482_conditional
    (child10481 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10477 (713, 4) = (output10481, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10478 (713, 4) = (output10482, (713, 4)) := by
  rw [output10482_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10481 child105

theorem node10483_conditional
    (child10482 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10478 (713, 4) = (output10482, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10479 (713, 4) = (output10483, (713, 4)) := by
  rw [output10483_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10482

theorem node10484_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10483 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10479 (713, 4) = (output10483, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10480 (713, 4) = (output10484, (713, 4)) := by
  rw [output10484_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10483

theorem node10485_conditional
    (child10484 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10480 (713, 4) = (output10484, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10481 (713, 4) = (output10485, (713, 4)) := by
  rw [output10485_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10484

theorem node10486_conditional
    (child10479 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10475 (713, 2) = (output10479, (713, 4)))
    (child10485 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10481 (713, 4) = (output10485, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10482 (713, 2) = (output10486, (713, 4)) := by
  rw [output10486_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10479 child10485

theorem node10487_conditional
    (child10486 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10482 (713, 2) = (output10486, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10483 (713, 2) = (output10487, (713, 4)) := by
  rw [output10487_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10486

theorem node10488_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10484 (713, 4) = (output10488, (713, 4)) := by
  rw [output10488_def]
  kernel_rfl

theorem node10489_conditional
    (child10488 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10484 (713, 4) = (output10488, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10485 (713, 4) = (output10489, (713, 4)) := by
  rw [output10489_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10488

theorem node10490_conditional
    (child10489 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10485 (713, 4) = (output10489, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10486 (713, 4) = (output10490, (713, 4)) := by
  rw [output10490_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10489 child105

theorem node10491_conditional
    (child10490 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10486 (713, 4) = (output10490, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10487 (713, 4) = (output10491, (713, 4)) := by
  rw [output10491_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10490

theorem node10492_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10491 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10487 (713, 4) = (output10491, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10488 (713, 4) = (output10492, (713, 4)) := by
  rw [output10492_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10491

theorem node10493_conditional
    (child10492 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10488 (713, 4) = (output10492, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10489 (713, 4) = (output10493, (713, 4)) := by
  rw [output10493_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10492

theorem node10494_conditional
    (child10487 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10483 (713, 2) = (output10487, (713, 4)))
    (child10493 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10489 (713, 4) = (output10493, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10490 (713, 2) = (output10494, (713, 4)) := by
  rw [output10494_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10487 child10493

theorem node10495_conditional
    (child10494 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10490 (713, 2) = (output10494, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10491 (713, 2) = (output10495, (713, 4)) := by
  rw [output10495_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10494

theorem node10496_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10492 (713, 4) = (output10496, (713, 4)) := by
  rw [output10496_def]
  kernel_rfl

theorem node10497_conditional
    (child10496 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10492 (713, 4) = (output10496, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10493 (713, 4) = (output10497, (713, 4)) := by
  rw [output10497_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10496

theorem node10498_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10494 (713, 4) = (output10498, (713, 4)) := by
  rw [output10498_def]
  kernel_rfl

theorem node10499_conditional
    (child10498 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10494 (713, 4) = (output10498, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10495 (713, 4) = (output10499, (713, 4)) := by
  rw [output10499_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10498

theorem node10500_conditional
    (child10499 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10495 (713, 4) = (output10499, (713, 4)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_85 (713, 4) = (output87, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10496 (713, 4) = (output10500, (713, 4)) := by
  rw [output10500_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10499 child87

theorem node10501_conditional
    (child10500 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10496 (713, 4) = (output10500, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10497 (713, 4) = (output10501, (713, 4)) := by
  rw [output10501_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10500

theorem node10502_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10501 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10497 (713, 4) = (output10501, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10498 (713, 4) = (output10502, (713, 4)) := by
  rw [output10502_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10501

theorem node10503_conditional
    (child10502 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10498 (713, 4) = (output10502, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10499 (713, 4) = (output10503, (713, 4)) := by
  rw [output10503_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10502

theorem node10504_conditional
    (child10497 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10493 (713, 4) = (output10497, (713, 4)))
    (child10503 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10499 (713, 4) = (output10503, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10500 (713, 4) = (output10504, (713, 4)) := by
  rw [output10504_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10497 child10503

theorem node10505_conditional
    (child10504 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10500 (713, 4) = (output10504, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10501 (713, 4) = (output10505, (713, 4)) := by
  rw [output10505_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10504

theorem node10506_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10505 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10501 (713, 4) = (output10505, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10502 (713, 4) = (output10506, (713, 4)) := by
  rw [output10506_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10505

theorem node10507_conditional
    (child10506 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10502 (713, 4) = (output10506, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10503 (713, 4) = (output10507, (713, 4)) := by
  rw [output10507_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10506

theorem node10508_conditional
    (child10495 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10491 (713, 2) = (output10495, (713, 4)))
    (child10507 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10503 (713, 4) = (output10507, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10504 (713, 2) = (output10508, (713, 4)) := by
  rw [output10508_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10495 child10507

theorem node10509_conditional
    (child10508 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10504 (713, 2) = (output10508, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10505 (713, 2) = (output10509, (713, 4)) := by
  rw [output10509_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10508

theorem node10510_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10506 (713, 4) = (output10510, (713, 4)) := by
  rw [output10510_def]
  kernel_rfl

theorem node10511_conditional
    (child10510 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10506 (713, 4) = (output10510, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10507 (713, 4) = (output10511, (713, 4)) := by
  rw [output10511_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10510

theorem node10512_conditional
    (child10511 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10507 (713, 4) = (output10511, (713, 4)))
    (child165 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_161 (713, 4) = (output165, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10508 (713, 4) = (output10512, (713, 4)) := by
  rw [output10512_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10511 child165

theorem node10513_conditional
    (child10512 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10508 (713, 4) = (output10512, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10509 (713, 4) = (output10513, (713, 4)) := by
  rw [output10513_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10512

theorem node10514_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10513 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10509 (713, 4) = (output10513, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10510 (713, 4) = (output10514, (713, 4)) := by
  rw [output10514_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10513

theorem node10515_conditional
    (child10514 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10510 (713, 4) = (output10514, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10511 (713, 4) = (output10515, (713, 4)) := by
  rw [output10515_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10514

theorem node10516_conditional
    (child10509 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10505 (713, 2) = (output10509, (713, 4)))
    (child10515 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10511 (713, 4) = (output10515, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10512 (713, 2) = (output10516, (713, 4)) := by
  rw [output10516_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10509 child10515

theorem node10517_conditional
    (child10516 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10512 (713, 2) = (output10516, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10513 (713, 2) = (output10517, (713, 4)) := by
  rw [output10517_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10516

theorem node10518_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10514 (713, 4) = (output10518, (713, 4)) := by
  rw [output10518_def]
  kernel_rfl

theorem node10519_conditional
    (child10518 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10514 (713, 4) = (output10518, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10515 (713, 4) = (output10519, (713, 4)) := by
  rw [output10519_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10518

theorem node10520_conditional
    (child10519 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10515 (713, 4) = (output10519, (713, 4)))
    (child179 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_175 (713, 4) = (output179, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10516 (713, 4) = (output10520, (713, 4)) := by
  rw [output10520_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10519 child179

theorem node10521_conditional
    (child10520 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10516 (713, 4) = (output10520, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10517 (713, 4) = (output10521, (713, 4)) := by
  rw [output10521_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10520

theorem node10522_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10521 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10517 (713, 4) = (output10521, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10518 (713, 4) = (output10522, (713, 4)) := by
  rw [output10522_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10521

theorem node10523_conditional
    (child10522 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10518 (713, 4) = (output10522, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10519 (713, 4) = (output10523, (713, 4)) := by
  rw [output10523_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10522

theorem node10524_conditional
    (child10517 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10513 (713, 2) = (output10517, (713, 4)))
    (child10523 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10519 (713, 4) = (output10523, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10520 (713, 2) = (output10524, (713, 4)) := by
  rw [output10524_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10517 child10523

theorem node10525_conditional
    (child10524 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10520 (713, 2) = (output10524, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10521 (713, 2) = (output10525, (713, 4)) := by
  rw [output10525_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10524

theorem node10526_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10522 (713, 4) = (output10526, (713, 4)) := by
  rw [output10526_def]
  kernel_rfl

theorem node10527_conditional
    (child10526 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10522 (713, 4) = (output10526, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10523 (713, 4) = (output10527, (713, 4)) := by
  rw [output10527_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10526

theorem node10528_conditional
    (child10527 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10523 (713, 4) = (output10527, (713, 4)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_189 (713, 4) = (output193, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10524 (713, 4) = (output10528, (713, 4)) := by
  rw [output10528_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10527 child193

theorem node10529_conditional
    (child10528 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10524 (713, 4) = (output10528, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10525 (713, 4) = (output10529, (713, 4)) := by
  rw [output10529_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10528

theorem node10530_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10529 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10525 (713, 4) = (output10529, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10526 (713, 4) = (output10530, (713, 4)) := by
  rw [output10530_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10529

theorem node10531_conditional
    (child10530 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10526 (713, 4) = (output10530, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10527 (713, 4) = (output10531, (713, 4)) := by
  rw [output10531_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10530

theorem node10532_conditional
    (child10525 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10521 (713, 2) = (output10525, (713, 4)))
    (child10531 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10527 (713, 4) = (output10531, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10528 (713, 2) = (output10532, (713, 4)) := by
  rw [output10532_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10525 child10531

theorem node10533_conditional
    (child10532 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10528 (713, 2) = (output10532, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10529 (713, 2) = (output10533, (713, 4)) := by
  rw [output10533_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10532

theorem node10534_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10530 (713, 4) = (output10534, (713, 4)) := by
  rw [output10534_def]
  kernel_rfl

theorem node10535_conditional
    (child10534 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10530 (713, 4) = (output10534, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10531 (713, 4) = (output10535, (713, 4)) := by
  rw [output10535_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10534

theorem node10536_conditional
    (child10535 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10531 (713, 4) = (output10535, (713, 4)))
    (child207 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_203 (713, 4) = (output207, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10532 (713, 4) = (output10536, (713, 4)) := by
  rw [output10536_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10535 child207

theorem node10537_conditional
    (child10536 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10532 (713, 4) = (output10536, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10533 (713, 4) = (output10537, (713, 4)) := by
  rw [output10537_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10536

theorem node10538_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10537 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10533 (713, 4) = (output10537, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10534 (713, 4) = (output10538, (713, 4)) := by
  rw [output10538_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10537

theorem node10539_conditional
    (child10538 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10534 (713, 4) = (output10538, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10535 (713, 4) = (output10539, (713, 4)) := by
  rw [output10539_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10538

theorem node10540_conditional
    (child10533 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10529 (713, 2) = (output10533, (713, 4)))
    (child10539 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10535 (713, 4) = (output10539, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10536 (713, 2) = (output10540, (713, 4)) := by
  rw [output10540_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10533 child10539

theorem node10541_conditional
    (child10540 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10536 (713, 2) = (output10540, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10537 (713, 2) = (output10541, (713, 4)) := by
  rw [output10541_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10540

theorem node10542_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10538 (713, 4) = (output10542, (713, 4)) := by
  rw [output10542_def]
  kernel_rfl

theorem node10543_conditional
    (child10542 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10538 (713, 4) = (output10542, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10539 (713, 4) = (output10543, (713, 4)) := by
  rw [output10543_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10542

theorem node10544_conditional
    (child10543 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10539 (713, 4) = (output10543, (713, 4)))
    (child221 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_217 (713, 4) = (output221, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10540 (713, 4) = (output10544, (713, 4)) := by
  rw [output10544_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10543 child221

theorem node10545_conditional
    (child10544 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10540 (713, 4) = (output10544, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10541 (713, 4) = (output10545, (713, 4)) := by
  rw [output10545_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10544

theorem node10546_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10545 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10541 (713, 4) = (output10545, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10542 (713, 4) = (output10546, (713, 4)) := by
  rw [output10546_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10545

theorem node10547_conditional
    (child10546 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10542 (713, 4) = (output10546, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10543 (713, 4) = (output10547, (713, 4)) := by
  rw [output10547_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10546

theorem node10548_conditional
    (child10541 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10537 (713, 2) = (output10541, (713, 4)))
    (child10547 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10543 (713, 4) = (output10547, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10544 (713, 2) = (output10548, (713, 4)) := by
  rw [output10548_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10541 child10547

theorem node10549_conditional
    (child10548 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10544 (713, 2) = (output10548, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10545 (713, 2) = (output10549, (713, 4)) := by
  rw [output10549_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10548

theorem node10550_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10546 (713, 4) = (output10550, (713, 4)) := by
  rw [output10550_def]
  kernel_rfl

theorem node10551_conditional
    (child10550 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10546 (713, 4) = (output10550, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10547 (713, 4) = (output10551, (713, 4)) := by
  rw [output10551_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10550

theorem node10552_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10548 (713, 4) = (output10552, (713, 4)) := by
  rw [output10552_def]
  kernel_rfl

theorem node10553_conditional
    (child10552 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10548 (713, 4) = (output10552, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10549 (713, 4) = (output10553, (713, 4)) := by
  rw [output10553_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10552

theorem node10554_conditional
    (child10553 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10549 (713, 4) = (output10553, (713, 4)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_85 (713, 4) = (output87, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10550 (713, 4) = (output10554, (713, 4)) := by
  rw [output10554_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10553 child87

theorem node10555_conditional
    (child10554 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10550 (713, 4) = (output10554, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10551 (713, 4) = (output10555, (713, 4)) := by
  rw [output10555_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10554

theorem node10556_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10555 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10551 (713, 4) = (output10555, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10552 (713, 4) = (output10556, (713, 4)) := by
  rw [output10556_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10555

theorem node10557_conditional
    (child10556 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10552 (713, 4) = (output10556, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10553 (713, 4) = (output10557, (713, 4)) := by
  rw [output10557_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10556

theorem node10558_conditional
    (child10551 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10547 (713, 4) = (output10551, (713, 4)))
    (child10557 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10553 (713, 4) = (output10557, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10554 (713, 4) = (output10558, (713, 4)) := by
  rw [output10558_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10551 child10557

theorem node10559_conditional
    (child10558 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10554 (713, 4) = (output10558, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10555 (713, 4) = (output10559, (713, 4)) := by
  rw [output10559_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10558

theorem node10560_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10559 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10555 (713, 4) = (output10559, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10556 (713, 4) = (output10560, (713, 4)) := by
  rw [output10560_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10559

theorem node10561_conditional
    (child10560 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10556 (713, 4) = (output10560, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10557 (713, 4) = (output10561, (713, 4)) := by
  rw [output10561_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10560

theorem node10562_conditional
    (child10549 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10545 (713, 2) = (output10549, (713, 4)))
    (child10561 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10557 (713, 4) = (output10561, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10558 (713, 2) = (output10562, (713, 4)) := by
  rw [output10562_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10549 child10561

theorem node10563_conditional
    (child10562 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10558 (713, 2) = (output10562, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10559 (713, 2) = (output10563, (713, 4)) := by
  rw [output10563_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10562

theorem node10564_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10560 (713, 4) = (output10564, (713, 4)) := by
  rw [output10564_def]
  kernel_rfl

theorem node10565_conditional
    (child10564 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10560 (713, 4) = (output10564, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10561 (713, 4) = (output10565, (713, 4)) := by
  rw [output10565_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10564

theorem node10566_conditional
    (child10565 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10561 (713, 4) = (output10565, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10562 (713, 4) = (output10566, (713, 4)) := by
  rw [output10566_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10565 child105

theorem node10567_conditional
    (child10566 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10562 (713, 4) = (output10566, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10563 (713, 4) = (output10567, (713, 4)) := by
  rw [output10567_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10566

theorem node10568_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10567 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10563 (713, 4) = (output10567, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10564 (713, 4) = (output10568, (713, 4)) := by
  rw [output10568_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10567

theorem node10569_conditional
    (child10568 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10564 (713, 4) = (output10568, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10565 (713, 4) = (output10569, (713, 4)) := by
  rw [output10569_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10568

theorem node10570_conditional
    (child10563 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10559 (713, 2) = (output10563, (713, 4)))
    (child10569 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10565 (713, 4) = (output10569, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10566 (713, 2) = (output10570, (713, 4)) := by
  rw [output10570_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10563 child10569

theorem node10571_conditional
    (child10570 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10566 (713, 2) = (output10570, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10567 (713, 2) = (output10571, (713, 4)) := by
  rw [output10571_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10570

theorem node10572_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10568 (713, 4) = (output10572, (713, 4)) := by
  rw [output10572_def]
  kernel_rfl

theorem node10573_conditional
    (child10572 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10568 (713, 4) = (output10572, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10569 (713, 4) = (output10573, (713, 4)) := by
  rw [output10573_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10572

theorem node10574_conditional
    (child10573 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10569 (713, 4) = (output10573, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10570 (713, 4) = (output10574, (713, 4)) := by
  rw [output10574_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10573 child105

theorem node10575_conditional
    (child10574 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10570 (713, 4) = (output10574, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10571 (713, 4) = (output10575, (713, 4)) := by
  rw [output10575_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10574

theorem node10576_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10575 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10571 (713, 4) = (output10575, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10572 (713, 4) = (output10576, (713, 4)) := by
  rw [output10576_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10575

theorem node10577_conditional
    (child10576 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10572 (713, 4) = (output10576, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10573 (713, 4) = (output10577, (713, 4)) := by
  rw [output10577_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10576

theorem node10578_conditional
    (child10571 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10567 (713, 2) = (output10571, (713, 4)))
    (child10577 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10573 (713, 4) = (output10577, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10574 (713, 2) = (output10578, (713, 4)) := by
  rw [output10578_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10571 child10577

theorem node10579_conditional
    (child10578 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10574 (713, 2) = (output10578, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10575 (713, 2) = (output10579, (713, 4)) := by
  rw [output10579_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10578

theorem node10580_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10576 (713, 4) = (output10580, (713, 4)) := by
  rw [output10580_def]
  kernel_rfl

theorem node10581_conditional
    (child10580 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10576 (713, 4) = (output10580, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10577 (713, 4) = (output10581, (713, 4)) := by
  rw [output10581_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10580

theorem node10582_conditional
    (child10581 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10577 (713, 4) = (output10581, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10578 (713, 4) = (output10582, (713, 4)) := by
  rw [output10582_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10581 child105

theorem node10583_conditional
    (child10582 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10578 (713, 4) = (output10582, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10579 (713, 4) = (output10583, (713, 4)) := by
  rw [output10583_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10582

theorem node10584_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10583 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10579 (713, 4) = (output10583, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10580 (713, 4) = (output10584, (713, 4)) := by
  rw [output10584_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10583

theorem node10585_conditional
    (child10584 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10580 (713, 4) = (output10584, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10581 (713, 4) = (output10585, (713, 4)) := by
  rw [output10585_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10584

theorem node10586_conditional
    (child10579 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10575 (713, 2) = (output10579, (713, 4)))
    (child10585 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10581 (713, 4) = (output10585, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10582 (713, 2) = (output10586, (713, 4)) := by
  rw [output10586_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10579 child10585

theorem node10587_conditional
    (child10586 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10582 (713, 2) = (output10586, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10583 (713, 2) = (output10587, (713, 4)) := by
  rw [output10587_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10586

theorem node10588_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10584 (713, 4) = (output10588, (713, 4)) := by
  rw [output10588_def]
  kernel_rfl

theorem node10589_conditional
    (child10588 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10584 (713, 4) = (output10588, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10585 (713, 4) = (output10589, (713, 4)) := by
  rw [output10589_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10588

theorem node10590_conditional
    (child10589 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10585 (713, 4) = (output10589, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10586 (713, 4) = (output10590, (713, 4)) := by
  rw [output10590_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10589 child105

theorem node10591_conditional
    (child10590 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10586 (713, 4) = (output10590, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10587 (713, 4) = (output10591, (713, 4)) := by
  rw [output10591_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10590

theorem node10592_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10591 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10587 (713, 4) = (output10591, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10588 (713, 4) = (output10592, (713, 4)) := by
  rw [output10592_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10591

theorem node10593_conditional
    (child10592 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10588 (713, 4) = (output10592, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10589 (713, 4) = (output10593, (713, 4)) := by
  rw [output10593_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10592

theorem node10594_conditional
    (child10587 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10583 (713, 2) = (output10587, (713, 4)))
    (child10593 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10589 (713, 4) = (output10593, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10590 (713, 2) = (output10594, (713, 4)) := by
  rw [output10594_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10587 child10593

theorem node10595_conditional
    (child10594 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10590 (713, 2) = (output10594, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10591 (713, 2) = (output10595, (713, 4)) := by
  rw [output10595_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10594

theorem node10596_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10592 (713, 4) = (output10596, (713, 4)) := by
  rw [output10596_def]
  kernel_rfl

theorem node10597_conditional
    (child10596 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10592 (713, 4) = (output10596, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10593 (713, 4) = (output10597, (713, 4)) := by
  rw [output10597_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10596

theorem node10598_conditional
    (child10597 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10593 (713, 4) = (output10597, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10594 (713, 4) = (output10598, (713, 4)) := by
  rw [output10598_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10597 child105

theorem node10599_conditional
    (child10598 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10594 (713, 4) = (output10598, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10595 (713, 4) = (output10599, (713, 4)) := by
  rw [output10599_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10598

theorem node10600_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10599 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10595 (713, 4) = (output10599, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10596 (713, 4) = (output10600, (713, 4)) := by
  rw [output10600_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10599

theorem node10601_conditional
    (child10600 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10596 (713, 4) = (output10600, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10597 (713, 4) = (output10601, (713, 4)) := by
  rw [output10601_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10600

theorem node10602_conditional
    (child10595 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10591 (713, 2) = (output10595, (713, 4)))
    (child10601 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10597 (713, 4) = (output10601, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10598 (713, 2) = (output10602, (713, 4)) := by
  rw [output10602_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10595 child10601

theorem node10603_conditional
    (child10602 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10598 (713, 2) = (output10602, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10599 (713, 2) = (output10603, (713, 4)) := by
  rw [output10603_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10602

theorem node10604_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10600 (713, 4) = (output10604, (713, 4)) := by
  rw [output10604_def]
  kernel_rfl

theorem node10605_conditional
    (child10604 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10600 (713, 4) = (output10604, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10601 (713, 4) = (output10605, (713, 4)) := by
  rw [output10605_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10604

theorem node10606_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10602 (713, 4) = (output10606, (713, 4)) := by
  rw [output10606_def]
  kernel_rfl

theorem node10607_conditional
    (child10606 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10602 (713, 4) = (output10606, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10603 (713, 4) = (output10607, (713, 4)) := by
  rw [output10607_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10606

theorem node10608_conditional
    (child10607 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10603 (713, 4) = (output10607, (713, 4)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_85 (713, 4) = (output87, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10604 (713, 4) = (output10608, (713, 4)) := by
  rw [output10608_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10607 child87

theorem node10609_conditional
    (child10608 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10604 (713, 4) = (output10608, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10605 (713, 4) = (output10609, (713, 4)) := by
  rw [output10609_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10608

theorem node10610_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10609 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10605 (713, 4) = (output10609, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10606 (713, 4) = (output10610, (713, 4)) := by
  rw [output10610_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10609

theorem node10611_conditional
    (child10610 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10606 (713, 4) = (output10610, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10607 (713, 4) = (output10611, (713, 4)) := by
  rw [output10611_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10610

theorem node10612_conditional
    (child10605 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10601 (713, 4) = (output10605, (713, 4)))
    (child10611 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10607 (713, 4) = (output10611, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10608 (713, 4) = (output10612, (713, 4)) := by
  rw [output10612_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10605 child10611

theorem node10613_conditional
    (child10612 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10608 (713, 4) = (output10612, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10609 (713, 4) = (output10613, (713, 4)) := by
  rw [output10613_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10612

theorem node10614_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10613 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10609 (713, 4) = (output10613, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10610 (713, 4) = (output10614, (713, 4)) := by
  rw [output10614_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10613

theorem node10615_conditional
    (child10614 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10610 (713, 4) = (output10614, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10611 (713, 4) = (output10615, (713, 4)) := by
  rw [output10615_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10614

theorem node10616_conditional
    (child10603 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10599 (713, 2) = (output10603, (713, 4)))
    (child10615 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10611 (713, 4) = (output10615, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10612 (713, 2) = (output10616, (713, 4)) := by
  rw [output10616_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10603 child10615

theorem node10617_conditional
    (child10616 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10612 (713, 2) = (output10616, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10613 (713, 2) = (output10617, (713, 4)) := by
  rw [output10617_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10616

theorem node10618_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10614 (713, 4) = (output10618, (713, 4)) := by
  rw [output10618_def]
  kernel_rfl

theorem node10619_conditional
    (child10618 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10614 (713, 4) = (output10618, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10615 (713, 4) = (output10619, (713, 4)) := by
  rw [output10619_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10618

theorem node10620_conditional
    (child10619 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10615 (713, 4) = (output10619, (713, 4)))
    (child165 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_161 (713, 4) = (output165, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10616 (713, 4) = (output10620, (713, 4)) := by
  rw [output10620_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10619 child165

theorem node10621_conditional
    (child10620 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10616 (713, 4) = (output10620, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10617 (713, 4) = (output10621, (713, 4)) := by
  rw [output10621_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10620

theorem node10622_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10621 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10617 (713, 4) = (output10621, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10618 (713, 4) = (output10622, (713, 4)) := by
  rw [output10622_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10621

theorem node10623_conditional
    (child10622 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10618 (713, 4) = (output10622, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10619 (713, 4) = (output10623, (713, 4)) := by
  rw [output10623_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10622

theorem node10624_conditional
    (child10617 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10613 (713, 2) = (output10617, (713, 4)))
    (child10623 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10619 (713, 4) = (output10623, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10620 (713, 2) = (output10624, (713, 4)) := by
  rw [output10624_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10617 child10623

theorem node10625_conditional
    (child10624 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10620 (713, 2) = (output10624, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10621 (713, 2) = (output10625, (713, 4)) := by
  rw [output10625_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10624

theorem node10626_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10622 (713, 4) = (output10626, (713, 4)) := by
  rw [output10626_def]
  kernel_rfl

theorem node10627_conditional
    (child10626 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10622 (713, 4) = (output10626, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10623 (713, 4) = (output10627, (713, 4)) := by
  rw [output10627_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10626

theorem node10628_conditional
    (child10627 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10623 (713, 4) = (output10627, (713, 4)))
    (child179 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_175 (713, 4) = (output179, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10624 (713, 4) = (output10628, (713, 4)) := by
  rw [output10628_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10627 child179

theorem node10629_conditional
    (child10628 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10624 (713, 4) = (output10628, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10625 (713, 4) = (output10629, (713, 4)) := by
  rw [output10629_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10628

theorem node10630_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10629 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10625 (713, 4) = (output10629, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10626 (713, 4) = (output10630, (713, 4)) := by
  rw [output10630_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10629

theorem node10631_conditional
    (child10630 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10626 (713, 4) = (output10630, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10627 (713, 4) = (output10631, (713, 4)) := by
  rw [output10631_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10630

theorem node10632_conditional
    (child10625 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10621 (713, 2) = (output10625, (713, 4)))
    (child10631 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10627 (713, 4) = (output10631, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10628 (713, 2) = (output10632, (713, 4)) := by
  rw [output10632_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10625 child10631

theorem node10633_conditional
    (child10632 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10628 (713, 2) = (output10632, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10629 (713, 2) = (output10633, (713, 4)) := by
  rw [output10633_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10632

theorem node10634_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10630 (713, 4) = (output10634, (713, 4)) := by
  rw [output10634_def]
  kernel_rfl

theorem node10635_conditional
    (child10634 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10630 (713, 4) = (output10634, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10631 (713, 4) = (output10635, (713, 4)) := by
  rw [output10635_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10634

theorem node10636_conditional
    (child10635 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10631 (713, 4) = (output10635, (713, 4)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_189 (713, 4) = (output193, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10632 (713, 4) = (output10636, (713, 4)) := by
  rw [output10636_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10635 child193

theorem node10637_conditional
    (child10636 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10632 (713, 4) = (output10636, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10633 (713, 4) = (output10637, (713, 4)) := by
  rw [output10637_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10636

theorem node10638_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10637 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10633 (713, 4) = (output10637, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10634 (713, 4) = (output10638, (713, 4)) := by
  rw [output10638_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10637

theorem node10639_conditional
    (child10638 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10634 (713, 4) = (output10638, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10635 (713, 4) = (output10639, (713, 4)) := by
  rw [output10639_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10638

theorem node10640_conditional
    (child10633 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10629 (713, 2) = (output10633, (713, 4)))
    (child10639 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10635 (713, 4) = (output10639, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10636 (713, 2) = (output10640, (713, 4)) := by
  rw [output10640_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10633 child10639

theorem node10641_conditional
    (child10640 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10636 (713, 2) = (output10640, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10637 (713, 2) = (output10641, (713, 4)) := by
  rw [output10641_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10640

theorem node10642_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10638 (713, 4) = (output10642, (713, 4)) := by
  rw [output10642_def]
  kernel_rfl

theorem node10643_conditional
    (child10642 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10638 (713, 4) = (output10642, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10639 (713, 4) = (output10643, (713, 4)) := by
  rw [output10643_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10642

theorem node10644_conditional
    (child10643 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10639 (713, 4) = (output10643, (713, 4)))
    (child207 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_203 (713, 4) = (output207, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10640 (713, 4) = (output10644, (713, 4)) := by
  rw [output10644_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10643 child207

theorem node10645_conditional
    (child10644 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10640 (713, 4) = (output10644, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10641 (713, 4) = (output10645, (713, 4)) := by
  rw [output10645_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10644

theorem node10646_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10645 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10641 (713, 4) = (output10645, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10642 (713, 4) = (output10646, (713, 4)) := by
  rw [output10646_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10645

theorem node10647_conditional
    (child10646 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10642 (713, 4) = (output10646, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10643 (713, 4) = (output10647, (713, 4)) := by
  rw [output10647_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10646

theorem node10648_conditional
    (child10641 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10637 (713, 2) = (output10641, (713, 4)))
    (child10647 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10643 (713, 4) = (output10647, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10644 (713, 2) = (output10648, (713, 4)) := by
  rw [output10648_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10641 child10647

theorem node10649_conditional
    (child10648 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10644 (713, 2) = (output10648, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10645 (713, 2) = (output10649, (713, 4)) := by
  rw [output10649_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10648

theorem node10650_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10646 (713, 4) = (output10650, (713, 4)) := by
  rw [output10650_def]
  kernel_rfl

theorem node10651_conditional
    (child10650 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10646 (713, 4) = (output10650, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10647 (713, 4) = (output10651, (713, 4)) := by
  rw [output10651_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10650

theorem node10652_conditional
    (child10651 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10647 (713, 4) = (output10651, (713, 4)))
    (child221 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_217 (713, 4) = (output221, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10648 (713, 4) = (output10652, (713, 4)) := by
  rw [output10652_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10651 child221

theorem node10653_conditional
    (child10652 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10648 (713, 4) = (output10652, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10649 (713, 4) = (output10653, (713, 4)) := by
  rw [output10653_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10652

theorem node10654_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10653 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10649 (713, 4) = (output10653, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10650 (713, 4) = (output10654, (713, 4)) := by
  rw [output10654_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10653

theorem node10655_conditional
    (child10654 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10650 (713, 4) = (output10654, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10651 (713, 4) = (output10655, (713, 4)) := by
  rw [output10655_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10654

theorem node10656_conditional
    (child10649 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10645 (713, 2) = (output10649, (713, 4)))
    (child10655 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10651 (713, 4) = (output10655, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10652 (713, 2) = (output10656, (713, 4)) := by
  rw [output10656_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10649 child10655

theorem node10657_conditional
    (child10656 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10652 (713, 2) = (output10656, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10653 (713, 2) = (output10657, (713, 4)) := by
  rw [output10657_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10656

theorem node10658_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10654 (713, 4) = (output10658, (713, 4)) := by
  rw [output10658_def]
  kernel_rfl

theorem node10659_conditional
    (child10658 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10654 (713, 4) = (output10658, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10655 (713, 4) = (output10659, (713, 4)) := by
  rw [output10659_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10658

theorem node10660_conditional
    (child10659 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10655 (713, 4) = (output10659, (713, 4)))
    (child91 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_89 (713, 4) = (output91, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10656 (713, 4) = (output10660, (713, 4)) := by
  rw [output10660_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10659 child91

theorem node10661_conditional
    (child10660 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10656 (713, 4) = (output10660, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10657 (713, 4) = (output10661, (713, 4)) := by
  rw [output10661_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10660

theorem node10662_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10661 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10657 (713, 4) = (output10661, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10658 (713, 4) = (output10662, (713, 4)) := by
  rw [output10662_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10661

theorem node10663_conditional
    (child10662 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10658 (713, 4) = (output10662, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10659 (713, 4) = (output10663, (713, 4)) := by
  rw [output10663_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10662

theorem node10664_conditional
    (child10657 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10653 (713, 2) = (output10657, (713, 4)))
    (child10663 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10659 (713, 4) = (output10663, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10660 (713, 2) = (output10664, (713, 4)) := by
  rw [output10664_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10657 child10663

theorem node10665_conditional
    (child10664 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10660 (713, 2) = (output10664, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10661 (713, 2) = (output10665, (713, 4)) := by
  rw [output10665_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10664

theorem node10666_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10662 (713, 4) = (output10666, (713, 4)) := by
  rw [output10666_def]
  kernel_rfl

theorem node10667_conditional
    (child10666 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10662 (713, 4) = (output10666, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10663 (713, 4) = (output10667, (713, 4)) := by
  rw [output10667_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10666

theorem node10668_conditional
    (child10667 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10663 (713, 4) = (output10667, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10664 (713, 4) = (output10668, (713, 4)) := by
  rw [output10668_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10667 child105

theorem node10669_conditional
    (child10668 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10664 (713, 4) = (output10668, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10665 (713, 4) = (output10669, (713, 4)) := by
  rw [output10669_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10668

theorem node10670_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10669 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10665 (713, 4) = (output10669, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10666 (713, 4) = (output10670, (713, 4)) := by
  rw [output10670_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10669

theorem node10671_conditional
    (child10670 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10666 (713, 4) = (output10670, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10667 (713, 4) = (output10671, (713, 4)) := by
  rw [output10671_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10670

theorem node10672_conditional
    (child10665 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10661 (713, 2) = (output10665, (713, 4)))
    (child10671 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10667 (713, 4) = (output10671, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10668 (713, 2) = (output10672, (713, 4)) := by
  rw [output10672_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10665 child10671

theorem node10673_conditional
    (child10672 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10668 (713, 2) = (output10672, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10669 (713, 2) = (output10673, (713, 4)) := by
  rw [output10673_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10672

theorem node10674_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10670 (713, 4) = (output10674, (713, 4)) := by
  rw [output10674_def]
  kernel_rfl

theorem node10675_conditional
    (child10674 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10670 (713, 4) = (output10674, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10671 (713, 4) = (output10675, (713, 4)) := by
  rw [output10675_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10674

theorem node10676_conditional
    (child10675 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10671 (713, 4) = (output10675, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10672 (713, 4) = (output10676, (713, 4)) := by
  rw [output10676_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10675 child105

theorem node10677_conditional
    (child10676 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10672 (713, 4) = (output10676, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10673 (713, 4) = (output10677, (713, 4)) := by
  rw [output10677_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10676

theorem node10678_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10677 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10673 (713, 4) = (output10677, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10674 (713, 4) = (output10678, (713, 4)) := by
  rw [output10678_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10677

theorem node10679_conditional
    (child10678 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10674 (713, 4) = (output10678, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10675 (713, 4) = (output10679, (713, 4)) := by
  rw [output10679_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10678

theorem node10680_conditional
    (child10673 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10669 (713, 2) = (output10673, (713, 4)))
    (child10679 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10675 (713, 4) = (output10679, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10676 (713, 2) = (output10680, (713, 4)) := by
  rw [output10680_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10673 child10679

theorem node10681_conditional
    (child10680 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10676 (713, 2) = (output10680, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10677 (713, 2) = (output10681, (713, 4)) := by
  rw [output10681_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10680

theorem node10682_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10678 (713, 4) = (output10682, (713, 4)) := by
  rw [output10682_def]
  kernel_rfl

theorem node10683_conditional
    (child10682 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10678 (713, 4) = (output10682, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10679 (713, 4) = (output10683, (713, 4)) := by
  rw [output10683_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10682

theorem node10684_conditional
    (child10683 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10679 (713, 4) = (output10683, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10680 (713, 4) = (output10684, (713, 4)) := by
  rw [output10684_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10683 child105

theorem node10685_conditional
    (child10684 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10680 (713, 4) = (output10684, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10681 (713, 4) = (output10685, (713, 4)) := by
  rw [output10685_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10684

theorem node10686_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10685 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10681 (713, 4) = (output10685, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10682 (713, 4) = (output10686, (713, 4)) := by
  rw [output10686_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10685

theorem node10687_conditional
    (child10686 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10682 (713, 4) = (output10686, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10683 (713, 4) = (output10687, (713, 4)) := by
  rw [output10687_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10686

theorem node10688_conditional
    (child10681 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10677 (713, 2) = (output10681, (713, 4)))
    (child10687 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10683 (713, 4) = (output10687, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10684 (713, 2) = (output10688, (713, 4)) := by
  rw [output10688_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10681 child10687

theorem node10689_conditional
    (child10688 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10684 (713, 2) = (output10688, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10685 (713, 2) = (output10689, (713, 4)) := by
  rw [output10689_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10688

theorem node10690_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10686 (713, 4) = (output10690, (713, 4)) := by
  rw [output10690_def]
  kernel_rfl

theorem node10691_conditional
    (child10690 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10686 (713, 4) = (output10690, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10687 (713, 4) = (output10691, (713, 4)) := by
  rw [output10691_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10690

theorem node10692_conditional
    (child10691 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10687 (713, 4) = (output10691, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10688 (713, 4) = (output10692, (713, 4)) := by
  rw [output10692_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10691 child105

theorem node10693_conditional
    (child10692 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10688 (713, 4) = (output10692, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10689 (713, 4) = (output10693, (713, 4)) := by
  rw [output10693_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10692

theorem node10694_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10693 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10689 (713, 4) = (output10693, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10690 (713, 4) = (output10694, (713, 4)) := by
  rw [output10694_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10693

theorem node10695_conditional
    (child10694 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10690 (713, 4) = (output10694, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10691 (713, 4) = (output10695, (713, 4)) := by
  rw [output10695_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10694

theorem node10696_conditional
    (child10689 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10685 (713, 2) = (output10689, (713, 4)))
    (child10695 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10691 (713, 4) = (output10695, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10692 (713, 2) = (output10696, (713, 4)) := by
  rw [output10696_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10689 child10695

theorem node10697_conditional
    (child10696 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10692 (713, 2) = (output10696, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10693 (713, 2) = (output10697, (713, 4)) := by
  rw [output10697_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10696

theorem node10698_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10694 (713, 4) = (output10698, (713, 4)) := by
  rw [output10698_def]
  kernel_rfl

theorem node10699_conditional
    (child10698 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10694 (713, 4) = (output10698, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10695 (713, 4) = (output10699, (713, 4)) := by
  rw [output10699_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10698

theorem node10700_conditional
    (child10699 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10695 (713, 4) = (output10699, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10696 (713, 4) = (output10700, (713, 4)) := by
  rw [output10700_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10699 child105

theorem node10701_conditional
    (child10700 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10696 (713, 4) = (output10700, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10697 (713, 4) = (output10701, (713, 4)) := by
  rw [output10701_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10700

theorem node10702_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10701 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10697 (713, 4) = (output10701, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10698 (713, 4) = (output10702, (713, 4)) := by
  rw [output10702_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10701

theorem node10703_conditional
    (child10702 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10698 (713, 4) = (output10702, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10699 (713, 4) = (output10703, (713, 4)) := by
  rw [output10703_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10702

theorem node10704_conditional
    (child10697 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10693 (713, 2) = (output10697, (713, 4)))
    (child10703 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10699 (713, 4) = (output10703, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10700 (713, 2) = (output10704, (713, 4)) := by
  rw [output10704_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10697 child10703

theorem node10705_conditional
    (child10704 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10700 (713, 2) = (output10704, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10701 (713, 2) = (output10705, (713, 4)) := by
  rw [output10705_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10704

theorem node10706_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10702 (713, 4) = (output10706, (713, 4)) := by
  rw [output10706_def]
  kernel_rfl

theorem node10707_conditional
    (child10706 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10702 (713, 4) = (output10706, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10703 (713, 4) = (output10707, (713, 4)) := by
  rw [output10707_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10706

theorem node10708_conditional
    (child10707 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10703 (713, 4) = (output10707, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10704 (713, 4) = (output10708, (713, 4)) := by
  rw [output10708_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10707 child105

theorem node10709_conditional
    (child10708 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10704 (713, 4) = (output10708, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10705 (713, 4) = (output10709, (713, 4)) := by
  rw [output10709_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10708

theorem node10710_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10709 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10705 (713, 4) = (output10709, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10706 (713, 4) = (output10710, (713, 4)) := by
  rw [output10710_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10709

theorem node10711_conditional
    (child10710 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10706 (713, 4) = (output10710, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10707 (713, 4) = (output10711, (713, 4)) := by
  rw [output10711_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10710

theorem node10712_conditional
    (child10705 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10701 (713, 2) = (output10705, (713, 4)))
    (child10711 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10707 (713, 4) = (output10711, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10708 (713, 2) = (output10712, (713, 4)) := by
  rw [output10712_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10705 child10711

theorem node10713_conditional
    (child10712 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10708 (713, 2) = (output10712, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10709 (713, 2) = (output10713, (713, 4)) := by
  rw [output10713_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10712

theorem node10714_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10710 (713, 4) = (output10714, (713, 4)) := by
  rw [output10714_def]
  kernel_rfl

theorem node10715_conditional
    (child10714 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10710 (713, 4) = (output10714, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10711 (713, 4) = (output10715, (713, 4)) := by
  rw [output10715_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10714

theorem node10716_conditional
    (child10715 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10711 (713, 4) = (output10715, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10712 (713, 4) = (output10716, (713, 4)) := by
  rw [output10716_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10715 child105

theorem node10717_conditional
    (child10716 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10712 (713, 4) = (output10716, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10713 (713, 4) = (output10717, (713, 4)) := by
  rw [output10717_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10716

theorem node10718_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10717 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10713 (713, 4) = (output10717, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10714 (713, 4) = (output10718, (713, 4)) := by
  rw [output10718_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10717

theorem node10719_conditional
    (child10718 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10714 (713, 4) = (output10718, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10715 (713, 4) = (output10719, (713, 4)) := by
  rw [output10719_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10718

theorem node10720_conditional
    (child10713 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10709 (713, 2) = (output10713, (713, 4)))
    (child10719 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10715 (713, 4) = (output10719, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10716 (713, 2) = (output10720, (713, 4)) := by
  rw [output10720_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10713 child10719

theorem node10721_conditional
    (child10720 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10716 (713, 2) = (output10720, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10717 (713, 2) = (output10721, (713, 4)) := by
  rw [output10721_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10720

theorem node10722_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10718 (713, 4) = (output10722, (713, 4)) := by
  rw [output10722_def]
  kernel_rfl

theorem node10723_conditional
    (child10722 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10718 (713, 4) = (output10722, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10719 (713, 4) = (output10723, (713, 4)) := by
  rw [output10723_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10722

theorem node10724_conditional
    (child10723 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10719 (713, 4) = (output10723, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10720 (713, 4) = (output10724, (713, 4)) := by
  rw [output10724_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10723 child105

theorem node10725_conditional
    (child10724 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10720 (713, 4) = (output10724, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10721 (713, 4) = (output10725, (713, 4)) := by
  rw [output10725_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10724

theorem node10726_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10725 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10721 (713, 4) = (output10725, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10722 (713, 4) = (output10726, (713, 4)) := by
  rw [output10726_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10725

theorem node10727_conditional
    (child10726 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10722 (713, 4) = (output10726, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10723 (713, 4) = (output10727, (713, 4)) := by
  rw [output10727_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10726

theorem node10728_conditional
    (child10721 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10717 (713, 2) = (output10721, (713, 4)))
    (child10727 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10723 (713, 4) = (output10727, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10724 (713, 2) = (output10728, (713, 4)) := by
  rw [output10728_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10721 child10727

theorem node10729_conditional
    (child10728 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10724 (713, 2) = (output10728, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10725 (713, 2) = (output10729, (713, 4)) := by
  rw [output10729_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10728

theorem node10730_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10726 (713, 4) = (output10730, (713, 4)) := by
  rw [output10730_def]
  kernel_rfl

theorem node10731_conditional
    (child10730 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10726 (713, 4) = (output10730, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10727 (713, 4) = (output10731, (713, 4)) := by
  rw [output10731_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10730

theorem node10732_conditional
    (child10731 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10727 (713, 4) = (output10731, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10728 (713, 4) = (output10732, (713, 4)) := by
  rw [output10732_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10731 child105

theorem node10733_conditional
    (child10732 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10728 (713, 4) = (output10732, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10729 (713, 4) = (output10733, (713, 4)) := by
  rw [output10733_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10732

theorem node10734_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10733 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10729 (713, 4) = (output10733, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10730 (713, 4) = (output10734, (713, 4)) := by
  rw [output10734_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10733

theorem node10735_conditional
    (child10734 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10730 (713, 4) = (output10734, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10731 (713, 4) = (output10735, (713, 4)) := by
  rw [output10735_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10734

theorem node10736_conditional
    (child10729 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10725 (713, 2) = (output10729, (713, 4)))
    (child10735 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10731 (713, 4) = (output10735, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10732 (713, 2) = (output10736, (713, 4)) := by
  rw [output10736_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10729 child10735

theorem node10737_conditional
    (child10736 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10732 (713, 2) = (output10736, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10733 (713, 2) = (output10737, (713, 4)) := by
  rw [output10737_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10736

theorem node10738_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10734 (713, 4) = (output10738, (713, 4)) := by
  rw [output10738_def]
  kernel_rfl

theorem node10739_conditional
    (child10738 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10734 (713, 4) = (output10738, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10735 (713, 4) = (output10739, (713, 4)) := by
  rw [output10739_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10738

theorem node10740_conditional
    (child10739 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10735 (713, 4) = (output10739, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10736 (713, 4) = (output10740, (713, 4)) := by
  rw [output10740_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10739 child105

theorem node10741_conditional
    (child10740 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10736 (713, 4) = (output10740, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10737 (713, 4) = (output10741, (713, 4)) := by
  rw [output10741_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10740

theorem node10742_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10741 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10737 (713, 4) = (output10741, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10738 (713, 4) = (output10742, (713, 4)) := by
  rw [output10742_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10741

theorem node10743_conditional
    (child10742 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10738 (713, 4) = (output10742, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10739 (713, 4) = (output10743, (713, 4)) := by
  rw [output10743_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10742

theorem node10744_conditional
    (child10737 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10733 (713, 2) = (output10737, (713, 4)))
    (child10743 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10739 (713, 4) = (output10743, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10740 (713, 2) = (output10744, (713, 4)) := by
  rw [output10744_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10737 child10743

theorem node10745_conditional
    (child10744 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10740 (713, 2) = (output10744, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10741 (713, 2) = (output10745, (713, 4)) := by
  rw [output10745_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10744

theorem node10746_conditional : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10742 (713, 4) = (output10746, (713, 4)) := by
  rw [output10746_def]
  kernel_rfl

theorem node10747_conditional
    (child10746 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10742 (713, 4) = (output10746, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10743 (713, 4) = (output10747, (713, 4)) := by
  rw [output10747_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10746

theorem node10748_conditional
    (child10747 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10743 (713, 4) = (output10747, (713, 4)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_101 (713, 4) = (output105, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10744 (713, 4) = (output10748, (713, 4)) := by
  rw [output10748_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child10747 child105

theorem node10749_conditional
    (child10748 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10744 (713, 4) = (output10748, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10745 (713, 4) = (output10749, (713, 4)) := by
  rw [output10749_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10748

theorem node10750_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_17 (713, 4) = (output39, (713, 4)))
    (child10749 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10745 (713, 4) = (output10749, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10746 (713, 4) = (output10750, (713, 4)) := by
  rw [output10750_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child10749

theorem node10751_conditional
    (child10750 : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10746 (713, 4) = (output10750, (713, 4))) : Flapjack.LoopToWord.compHOL Word.context649
    Loop.loopBody649_10747 (713, 4) = (output10751, (713, 4)) := by
  rw [output10751_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10750

#print axioms node10751_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
