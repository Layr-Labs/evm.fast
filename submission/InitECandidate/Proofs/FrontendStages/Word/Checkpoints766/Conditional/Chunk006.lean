import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem node2304_conditional
    (child2297 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2295 (830, 2) = (output2297, (830, 6)))
    (child2303 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2301 (830, 6) = (output2303, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2302 (830, 2) = (output2304, (830, 6)) := by
  rw [output2304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2297 child2303

theorem node2305_conditional
    (child2304 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2302 (830, 2) = (output2304, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2303 (830, 2) = (output2305, (830, 6)) := by
  rw [output2305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2304

theorem node2306_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2304 (830, 6) = (output2306, (830, 6)) := by
  rw [output2306_def]
  kernel_rfl

theorem node2307_conditional
    (child2306 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2304 (830, 6) = (output2306, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2305 (830, 6) = (output2307, (830, 6)) := by
  rw [output2307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2306

theorem node2308_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2306 (830, 6) = (output2308, (830, 6)) := by
  rw [output2308_def]
  kernel_rfl

theorem node2309_conditional
    (child2308 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2306 (830, 6) = (output2308, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2307 (830, 6) = (output2309, (830, 6)) := by
  rw [output2309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2308

theorem node2310_conditional
    (child2309 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2307 (830, 6) = (output2309, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2308 (830, 6) = (output2310, (830, 6)) := by
  rw [output2310_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2309 child99

theorem node2311_conditional
    (child2310 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2308 (830, 6) = (output2310, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2309 (830, 6) = (output2311, (830, 6)) := by
  rw [output2311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2310

theorem node2312_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2311 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2309 (830, 6) = (output2311, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2310 (830, 6) = (output2312, (830, 6)) := by
  rw [output2312_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2311

theorem node2313_conditional
    (child2312 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2310 (830, 6) = (output2312, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2311 (830, 6) = (output2313, (830, 6)) := by
  rw [output2313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2312

theorem node2314_conditional
    (child2307 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2305 (830, 6) = (output2307, (830, 6)))
    (child2313 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2311 (830, 6) = (output2313, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2312 (830, 6) = (output2314, (830, 6)) := by
  rw [output2314_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2307 child2313

theorem node2315_conditional
    (child2314 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2312 (830, 6) = (output2314, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2313 (830, 6) = (output2315, (830, 6)) := by
  rw [output2315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2314

theorem node2316_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2315 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2313 (830, 6) = (output2315, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2314 (830, 6) = (output2316, (830, 6)) := by
  rw [output2316_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2315

theorem node2317_conditional
    (child2316 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2314 (830, 6) = (output2316, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2315 (830, 6) = (output2317, (830, 6)) := by
  rw [output2317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2316

theorem node2318_conditional
    (child2305 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2303 (830, 2) = (output2305, (830, 6)))
    (child2317 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2315 (830, 6) = (output2317, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2316 (830, 2) = (output2318, (830, 6)) := by
  rw [output2318_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2305 child2317

theorem node2319_conditional
    (child2318 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2316 (830, 2) = (output2318, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2317 (830, 2) = (output2319, (830, 6)) := by
  rw [output2319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2318

theorem node2320_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2318 (830, 6) = (output2320, (830, 6)) := by
  rw [output2320_def]
  kernel_rfl

theorem node2321_conditional
    (child2320 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2318 (830, 6) = (output2320, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2319 (830, 6) = (output2321, (830, 6)) := by
  rw [output2321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2320

theorem node2322_conditional
    (child2321 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2319 (830, 6) = (output2321, (830, 6)))
    (child509 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_507 (830, 6) = (output509, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2320 (830, 6) = (output2322, (830, 6)) := by
  rw [output2322_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2321 child509

theorem node2323_conditional
    (child2322 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2320 (830, 6) = (output2322, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2321 (830, 6) = (output2323, (830, 6)) := by
  rw [output2323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2322

theorem node2324_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2323 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2321 (830, 6) = (output2323, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2322 (830, 6) = (output2324, (830, 6)) := by
  rw [output2324_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2323

theorem node2325_conditional
    (child2324 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2322 (830, 6) = (output2324, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2323 (830, 6) = (output2325, (830, 6)) := by
  rw [output2325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2324

theorem node2326_conditional
    (child2319 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2317 (830, 2) = (output2319, (830, 6)))
    (child2325 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2323 (830, 6) = (output2325, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2324 (830, 2) = (output2326, (830, 6)) := by
  rw [output2326_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2319 child2325

theorem node2327_conditional
    (child2326 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2324 (830, 2) = (output2326, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2325 (830, 2) = (output2327, (830, 6)) := by
  rw [output2327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2326

theorem node2328_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2326 (830, 6) = (output2328, (830, 6)) := by
  rw [output2328_def]
  kernel_rfl

theorem node2329_conditional
    (child2328 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2326 (830, 6) = (output2328, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2327 (830, 6) = (output2329, (830, 6)) := by
  rw [output2329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2328

theorem node2330_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2328 (830, 6) = (output2330, (830, 6)) := by
  rw [output2330_def]
  kernel_rfl

theorem node2331_conditional
    (child2330 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2328 (830, 6) = (output2330, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2329 (830, 6) = (output2331, (830, 6)) := by
  rw [output2331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2330

theorem node2332_conditional
    (child2331 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2329 (830, 6) = (output2331, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2330 (830, 6) = (output2332, (830, 6)) := by
  rw [output2332_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2331 child99

theorem node2333_conditional
    (child2332 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2330 (830, 6) = (output2332, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2331 (830, 6) = (output2333, (830, 6)) := by
  rw [output2333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2332

theorem node2334_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2333 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2331 (830, 6) = (output2333, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2332 (830, 6) = (output2334, (830, 6)) := by
  rw [output2334_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2333

theorem node2335_conditional
    (child2334 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2332 (830, 6) = (output2334, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2333 (830, 6) = (output2335, (830, 6)) := by
  rw [output2335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2334

theorem node2336_conditional
    (child2329 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2327 (830, 6) = (output2329, (830, 6)))
    (child2335 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2333 (830, 6) = (output2335, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2334 (830, 6) = (output2336, (830, 6)) := by
  rw [output2336_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2329 child2335

theorem node2337_conditional
    (child2336 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2334 (830, 6) = (output2336, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2335 (830, 6) = (output2337, (830, 6)) := by
  rw [output2337_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2336

theorem node2338_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2337 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2335 (830, 6) = (output2337, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2336 (830, 6) = (output2338, (830, 6)) := by
  rw [output2338_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2337

theorem node2339_conditional
    (child2338 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2336 (830, 6) = (output2338, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2337 (830, 6) = (output2339, (830, 6)) := by
  rw [output2339_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2338

theorem node2340_conditional
    (child2327 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2325 (830, 2) = (output2327, (830, 6)))
    (child2339 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2337 (830, 6) = (output2339, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2338 (830, 2) = (output2340, (830, 6)) := by
  rw [output2340_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2327 child2339

theorem node2341_conditional
    (child2340 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2338 (830, 2) = (output2340, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2339 (830, 2) = (output2341, (830, 6)) := by
  rw [output2341_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2340

theorem node2342_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2340 (830, 6) = (output2342, (830, 6)) := by
  rw [output2342_def]
  kernel_rfl

theorem node2343_conditional
    (child2342 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2340 (830, 6) = (output2342, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2341 (830, 6) = (output2343, (830, 6)) := by
  rw [output2343_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2342

theorem node2344_conditional
    (child2343 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2341 (830, 6) = (output2343, (830, 6)))
    (child537 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_535 (830, 6) = (output537, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2342 (830, 6) = (output2344, (830, 6)) := by
  rw [output2344_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2343 child537

theorem node2345_conditional
    (child2344 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2342 (830, 6) = (output2344, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2343 (830, 6) = (output2345, (830, 6)) := by
  rw [output2345_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2344

theorem node2346_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2345 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2343 (830, 6) = (output2345, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2344 (830, 6) = (output2346, (830, 6)) := by
  rw [output2346_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2345

theorem node2347_conditional
    (child2346 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2344 (830, 6) = (output2346, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2345 (830, 6) = (output2347, (830, 6)) := by
  rw [output2347_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2346

theorem node2348_conditional
    (child2341 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2339 (830, 2) = (output2341, (830, 6)))
    (child2347 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2345 (830, 6) = (output2347, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2346 (830, 2) = (output2348, (830, 6)) := by
  rw [output2348_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2341 child2347

theorem node2349_conditional
    (child2348 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2346 (830, 2) = (output2348, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2347 (830, 2) = (output2349, (830, 6)) := by
  rw [output2349_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2348

theorem node2350_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2348 (830, 6) = (output2350, (830, 6)) := by
  rw [output2350_def]
  kernel_rfl

theorem node2351_conditional
    (child2350 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2348 (830, 6) = (output2350, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2349 (830, 6) = (output2351, (830, 6)) := by
  rw [output2351_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2350

theorem node2352_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2350 (830, 6) = (output2352, (830, 6)) := by
  rw [output2352_def]
  kernel_rfl

theorem node2353_conditional
    (child2352 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2350 (830, 6) = (output2352, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2351 (830, 6) = (output2353, (830, 6)) := by
  rw [output2353_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2352

theorem node2354_conditional
    (child2353 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2351 (830, 6) = (output2353, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2352 (830, 6) = (output2354, (830, 6)) := by
  rw [output2354_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2353 child99

theorem node2355_conditional
    (child2354 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2352 (830, 6) = (output2354, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2353 (830, 6) = (output2355, (830, 6)) := by
  rw [output2355_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2354

theorem node2356_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2355 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2353 (830, 6) = (output2355, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2354 (830, 6) = (output2356, (830, 6)) := by
  rw [output2356_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2355

theorem node2357_conditional
    (child2356 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2354 (830, 6) = (output2356, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2355 (830, 6) = (output2357, (830, 6)) := by
  rw [output2357_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2356

theorem node2358_conditional
    (child2351 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2349 (830, 6) = (output2351, (830, 6)))
    (child2357 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2355 (830, 6) = (output2357, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2356 (830, 6) = (output2358, (830, 6)) := by
  rw [output2358_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2351 child2357

theorem node2359_conditional
    (child2358 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2356 (830, 6) = (output2358, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2357 (830, 6) = (output2359, (830, 6)) := by
  rw [output2359_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2358

theorem node2360_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2359 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2357 (830, 6) = (output2359, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2358 (830, 6) = (output2360, (830, 6)) := by
  rw [output2360_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2359

theorem node2361_conditional
    (child2360 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2358 (830, 6) = (output2360, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2359 (830, 6) = (output2361, (830, 6)) := by
  rw [output2361_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2360

theorem node2362_conditional
    (child2349 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2347 (830, 2) = (output2349, (830, 6)))
    (child2361 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2359 (830, 6) = (output2361, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2360 (830, 2) = (output2362, (830, 6)) := by
  rw [output2362_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2349 child2361

theorem node2363_conditional
    (child2362 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2360 (830, 2) = (output2362, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2361 (830, 2) = (output2363, (830, 6)) := by
  rw [output2363_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2362

theorem node2364_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2362 (830, 6) = (output2364, (830, 6)) := by
  rw [output2364_def]
  kernel_rfl

theorem node2365_conditional
    (child2364 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2362 (830, 6) = (output2364, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2363 (830, 6) = (output2365, (830, 6)) := by
  rw [output2365_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2364

theorem node2366_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2364 (830, 6) = (output2366, (830, 6)) := by
  rw [output2366_def]
  kernel_rfl

theorem node2367_conditional
    (child2366 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2364 (830, 6) = (output2366, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2365 (830, 6) = (output2367, (830, 6)) := by
  rw [output2367_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2366

theorem node2368_conditional
    (child2367 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2365 (830, 6) = (output2367, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2366 (830, 6) = (output2368, (830, 6)) := by
  rw [output2368_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2367 child99

theorem node2369_conditional
    (child2368 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2366 (830, 6) = (output2368, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2367 (830, 6) = (output2369, (830, 6)) := by
  rw [output2369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2368

theorem node2370_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2369 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2367 (830, 6) = (output2369, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2368 (830, 6) = (output2370, (830, 6)) := by
  rw [output2370_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2369

theorem node2371_conditional
    (child2370 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2368 (830, 6) = (output2370, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2369 (830, 6) = (output2371, (830, 6)) := by
  rw [output2371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2370

theorem node2372_conditional
    (child2365 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2363 (830, 6) = (output2365, (830, 6)))
    (child2371 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2369 (830, 6) = (output2371, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2370 (830, 6) = (output2372, (830, 6)) := by
  rw [output2372_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2365 child2371

theorem node2373_conditional
    (child2372 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2370 (830, 6) = (output2372, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2371 (830, 6) = (output2373, (830, 6)) := by
  rw [output2373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2372

theorem node2374_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2373 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2371 (830, 6) = (output2373, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2372 (830, 6) = (output2374, (830, 6)) := by
  rw [output2374_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2373

theorem node2375_conditional
    (child2374 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2372 (830, 6) = (output2374, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2373 (830, 6) = (output2375, (830, 6)) := by
  rw [output2375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2374

theorem node2376_conditional
    (child2363 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2361 (830, 2) = (output2363, (830, 6)))
    (child2375 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2373 (830, 6) = (output2375, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2374 (830, 2) = (output2376, (830, 6)) := by
  rw [output2376_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2363 child2375

theorem node2377_conditional
    (child2376 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2374 (830, 2) = (output2376, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2375 (830, 2) = (output2377, (830, 6)) := by
  rw [output2377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2376

theorem node2378_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2376 (830, 6) = (output2378, (830, 6)) := by
  rw [output2378_def]
  kernel_rfl

theorem node2379_conditional
    (child2378 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2376 (830, 6) = (output2378, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2377 (830, 6) = (output2379, (830, 6)) := by
  rw [output2379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2378

theorem node2380_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2378 (830, 6) = (output2380, (830, 6)) := by
  rw [output2380_def]
  kernel_rfl

theorem node2381_conditional
    (child2380 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2378 (830, 6) = (output2380, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2379 (830, 6) = (output2381, (830, 6)) := by
  rw [output2381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2380

theorem node2382_conditional
    (child2381 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2379 (830, 6) = (output2381, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2380 (830, 6) = (output2382, (830, 6)) := by
  rw [output2382_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2381 child99

theorem node2383_conditional
    (child2382 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2380 (830, 6) = (output2382, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2381 (830, 6) = (output2383, (830, 6)) := by
  rw [output2383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2382

theorem node2384_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2383 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2381 (830, 6) = (output2383, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2382 (830, 6) = (output2384, (830, 6)) := by
  rw [output2384_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2383

theorem node2385_conditional
    (child2384 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2382 (830, 6) = (output2384, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2383 (830, 6) = (output2385, (830, 6)) := by
  rw [output2385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2384

theorem node2386_conditional
    (child2379 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2377 (830, 6) = (output2379, (830, 6)))
    (child2385 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2383 (830, 6) = (output2385, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2384 (830, 6) = (output2386, (830, 6)) := by
  rw [output2386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2379 child2385

theorem node2387_conditional
    (child2386 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2384 (830, 6) = (output2386, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2385 (830, 6) = (output2387, (830, 6)) := by
  rw [output2387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2386

theorem node2388_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2387 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2385 (830, 6) = (output2387, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2386 (830, 6) = (output2388, (830, 6)) := by
  rw [output2388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2387

theorem node2389_conditional
    (child2388 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2386 (830, 6) = (output2388, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2387 (830, 6) = (output2389, (830, 6)) := by
  rw [output2389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2388

theorem node2390_conditional
    (child2377 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2375 (830, 2) = (output2377, (830, 6)))
    (child2389 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2387 (830, 6) = (output2389, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2388 (830, 2) = (output2390, (830, 6)) := by
  rw [output2390_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2377 child2389

theorem node2391_conditional
    (child2390 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2388 (830, 2) = (output2390, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2389 (830, 2) = (output2391, (830, 6)) := by
  rw [output2391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2390

theorem node2392_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2390 (830, 6) = (output2392, (830, 6)) := by
  rw [output2392_def]
  kernel_rfl

theorem node2393_conditional
    (child2392 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2390 (830, 6) = (output2392, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2391 (830, 6) = (output2393, (830, 6)) := by
  rw [output2393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2392

theorem node2394_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2392 (830, 6) = (output2394, (830, 6)) := by
  rw [output2394_def]
  kernel_rfl

theorem node2395_conditional
    (child2394 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2392 (830, 6) = (output2394, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2393 (830, 6) = (output2395, (830, 6)) := by
  rw [output2395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2394

theorem node2396_conditional
    (child2395 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2393 (830, 6) = (output2395, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2394 (830, 6) = (output2396, (830, 6)) := by
  rw [output2396_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2395 child99

theorem node2397_conditional
    (child2396 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2394 (830, 6) = (output2396, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2395 (830, 6) = (output2397, (830, 6)) := by
  rw [output2397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2396

theorem node2398_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2397 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2395 (830, 6) = (output2397, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2396 (830, 6) = (output2398, (830, 6)) := by
  rw [output2398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2397

theorem node2399_conditional
    (child2398 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2396 (830, 6) = (output2398, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2397 (830, 6) = (output2399, (830, 6)) := by
  rw [output2399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2398

theorem node2400_conditional
    (child2393 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2391 (830, 6) = (output2393, (830, 6)))
    (child2399 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2397 (830, 6) = (output2399, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2398 (830, 6) = (output2400, (830, 6)) := by
  rw [output2400_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2393 child2399

theorem node2401_conditional
    (child2400 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2398 (830, 6) = (output2400, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2399 (830, 6) = (output2401, (830, 6)) := by
  rw [output2401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2400

theorem node2402_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2401 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2399 (830, 6) = (output2401, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2400 (830, 6) = (output2402, (830, 6)) := by
  rw [output2402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2401

theorem node2403_conditional
    (child2402 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2400 (830, 6) = (output2402, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2401 (830, 6) = (output2403, (830, 6)) := by
  rw [output2403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2402

theorem node2404_conditional
    (child2391 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2389 (830, 2) = (output2391, (830, 6)))
    (child2403 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2401 (830, 6) = (output2403, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2402 (830, 2) = (output2404, (830, 6)) := by
  rw [output2404_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2391 child2403

theorem node2405_conditional
    (child2404 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2402 (830, 2) = (output2404, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2403 (830, 2) = (output2405, (830, 6)) := by
  rw [output2405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2404

theorem node2406_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2404 (830, 6) = (output2406, (830, 6)) := by
  rw [output2406_def]
  kernel_rfl

theorem node2407_conditional
    (child2406 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2404 (830, 6) = (output2406, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2405 (830, 6) = (output2407, (830, 6)) := by
  rw [output2407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2406

theorem node2408_conditional
    (child2407 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2405 (830, 6) = (output2407, (830, 6)))
    (child621 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_619 (830, 6) = (output621, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2406 (830, 6) = (output2408, (830, 6)) := by
  rw [output2408_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2407 child621

theorem node2409_conditional
    (child2408 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2406 (830, 6) = (output2408, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2407 (830, 6) = (output2409, (830, 6)) := by
  rw [output2409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2408

theorem node2410_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2409 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2407 (830, 6) = (output2409, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2408 (830, 6) = (output2410, (830, 6)) := by
  rw [output2410_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2409

theorem node2411_conditional
    (child2410 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2408 (830, 6) = (output2410, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2409 (830, 6) = (output2411, (830, 6)) := by
  rw [output2411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2410

theorem node2412_conditional
    (child2405 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2403 (830, 2) = (output2405, (830, 6)))
    (child2411 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2409 (830, 6) = (output2411, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2410 (830, 2) = (output2412, (830, 6)) := by
  rw [output2412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2405 child2411

theorem node2413_conditional
    (child2412 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2410 (830, 2) = (output2412, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2411 (830, 2) = (output2413, (830, 6)) := by
  rw [output2413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2412

theorem node2414_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2412 (830, 6) = (output2414, (830, 6)) := by
  rw [output2414_def]
  kernel_rfl

theorem node2415_conditional
    (child2414 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2412 (830, 6) = (output2414, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2413 (830, 6) = (output2415, (830, 6)) := by
  rw [output2415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2414

theorem node2416_conditional
    (child2415 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2413 (830, 6) = (output2415, (830, 6)))
    (child635 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_633 (830, 6) = (output635, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2414 (830, 6) = (output2416, (830, 6)) := by
  rw [output2416_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2415 child635

theorem node2417_conditional
    (child2416 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2414 (830, 6) = (output2416, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2415 (830, 6) = (output2417, (830, 6)) := by
  rw [output2417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2416

theorem node2418_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2417 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2415 (830, 6) = (output2417, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2416 (830, 6) = (output2418, (830, 6)) := by
  rw [output2418_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2417

theorem node2419_conditional
    (child2418 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2416 (830, 6) = (output2418, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2417 (830, 6) = (output2419, (830, 6)) := by
  rw [output2419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2418

theorem node2420_conditional
    (child2413 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2411 (830, 2) = (output2413, (830, 6)))
    (child2419 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2417 (830, 6) = (output2419, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2418 (830, 2) = (output2420, (830, 6)) := by
  rw [output2420_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2413 child2419

theorem node2421_conditional
    (child2420 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2418 (830, 2) = (output2420, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2419 (830, 2) = (output2421, (830, 6)) := by
  rw [output2421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2420

theorem node2422_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2420 (830, 6) = (output2422, (830, 6)) := by
  rw [output2422_def]
  kernel_rfl

theorem node2423_conditional
    (child2422 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2420 (830, 6) = (output2422, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2421 (830, 6) = (output2423, (830, 6)) := by
  rw [output2423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2422

theorem node2424_conditional
    (child2423 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2421 (830, 6) = (output2423, (830, 6)))
    (child649 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_647 (830, 6) = (output649, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2422 (830, 6) = (output2424, (830, 6)) := by
  rw [output2424_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2423 child649

theorem node2425_conditional
    (child2424 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2422 (830, 6) = (output2424, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2423 (830, 6) = (output2425, (830, 6)) := by
  rw [output2425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2424

theorem node2426_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2425 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2423 (830, 6) = (output2425, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2424 (830, 6) = (output2426, (830, 6)) := by
  rw [output2426_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2425

theorem node2427_conditional
    (child2426 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2424 (830, 6) = (output2426, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2425 (830, 6) = (output2427, (830, 6)) := by
  rw [output2427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2426

theorem node2428_conditional
    (child2421 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2419 (830, 2) = (output2421, (830, 6)))
    (child2427 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2425 (830, 6) = (output2427, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2426 (830, 2) = (output2428, (830, 6)) := by
  rw [output2428_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2421 child2427

theorem node2429_conditional
    (child2428 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2426 (830, 2) = (output2428, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2427 (830, 2) = (output2429, (830, 6)) := by
  rw [output2429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2428

theorem node2430_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2428 (830, 6) = (output2430, (830, 6)) := by
  rw [output2430_def]
  kernel_rfl

theorem node2431_conditional
    (child2430 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2428 (830, 6) = (output2430, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2429 (830, 6) = (output2431, (830, 6)) := by
  rw [output2431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2430

theorem node2432_conditional
    (child2431 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2429 (830, 6) = (output2431, (830, 6)))
    (child663 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_661 (830, 6) = (output663, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2430 (830, 6) = (output2432, (830, 6)) := by
  rw [output2432_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2431 child663

theorem node2433_conditional
    (child2432 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2430 (830, 6) = (output2432, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2431 (830, 6) = (output2433, (830, 6)) := by
  rw [output2433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2432

theorem node2434_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2433 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2431 (830, 6) = (output2433, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2432 (830, 6) = (output2434, (830, 6)) := by
  rw [output2434_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2433

theorem node2435_conditional
    (child2434 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2432 (830, 6) = (output2434, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2433 (830, 6) = (output2435, (830, 6)) := by
  rw [output2435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2434

theorem node2436_conditional
    (child2429 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2427 (830, 2) = (output2429, (830, 6)))
    (child2435 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2433 (830, 6) = (output2435, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2434 (830, 2) = (output2436, (830, 6)) := by
  rw [output2436_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2429 child2435

theorem node2437_conditional
    (child2436 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2434 (830, 2) = (output2436, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2435 (830, 2) = (output2437, (830, 6)) := by
  rw [output2437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2436

theorem node2438_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2436 (830, 6) = (output2438, (830, 6)) := by
  rw [output2438_def]
  kernel_rfl

theorem node2439_conditional
    (child2438 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2436 (830, 6) = (output2438, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2437 (830, 6) = (output2439, (830, 6)) := by
  rw [output2439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2438

theorem node2440_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2438 (830, 6) = (output2440, (830, 6)) := by
  rw [output2440_def]
  kernel_rfl

theorem node2441_conditional
    (child2440 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2438 (830, 6) = (output2440, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2439 (830, 6) = (output2441, (830, 6)) := by
  rw [output2441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2440

theorem node2442_conditional
    (child2441 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2439 (830, 6) = (output2441, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2440 (830, 6) = (output2442, (830, 6)) := by
  rw [output2442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2441 child99

theorem node2443_conditional
    (child2442 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2440 (830, 6) = (output2442, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2441 (830, 6) = (output2443, (830, 6)) := by
  rw [output2443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2442

theorem node2444_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2443 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2441 (830, 6) = (output2443, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2442 (830, 6) = (output2444, (830, 6)) := by
  rw [output2444_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2443

theorem node2445_conditional
    (child2444 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2442 (830, 6) = (output2444, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2443 (830, 6) = (output2445, (830, 6)) := by
  rw [output2445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2444

theorem node2446_conditional
    (child2439 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2437 (830, 6) = (output2439, (830, 6)))
    (child2445 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2443 (830, 6) = (output2445, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2444 (830, 6) = (output2446, (830, 6)) := by
  rw [output2446_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2439 child2445

theorem node2447_conditional
    (child2446 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2444 (830, 6) = (output2446, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2445 (830, 6) = (output2447, (830, 6)) := by
  rw [output2447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2446

theorem node2448_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2447 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2445 (830, 6) = (output2447, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2446 (830, 6) = (output2448, (830, 6)) := by
  rw [output2448_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2447

theorem node2449_conditional
    (child2448 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2446 (830, 6) = (output2448, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2447 (830, 6) = (output2449, (830, 6)) := by
  rw [output2449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2448

theorem node2450_conditional
    (child2437 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2435 (830, 2) = (output2437, (830, 6)))
    (child2449 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2447 (830, 6) = (output2449, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2448 (830, 2) = (output2450, (830, 6)) := by
  rw [output2450_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2437 child2449

theorem node2451_conditional
    (child2450 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2448 (830, 2) = (output2450, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2449 (830, 2) = (output2451, (830, 6)) := by
  rw [output2451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2450

theorem node2452_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2450 (830, 6) = (output2452, (830, 6)) := by
  rw [output2452_def]
  kernel_rfl

theorem node2453_conditional
    (child2452 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2450 (830, 6) = (output2452, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2451 (830, 6) = (output2453, (830, 6)) := by
  rw [output2453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2452

theorem node2454_conditional
    (child2453 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2451 (830, 6) = (output2453, (830, 6)))
    (child691 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_689 (830, 6) = (output691, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2452 (830, 6) = (output2454, (830, 6)) := by
  rw [output2454_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2453 child691

theorem node2455_conditional
    (child2454 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2452 (830, 6) = (output2454, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2453 (830, 6) = (output2455, (830, 6)) := by
  rw [output2455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2454

theorem node2456_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2455 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2453 (830, 6) = (output2455, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2454 (830, 6) = (output2456, (830, 6)) := by
  rw [output2456_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2455

theorem node2457_conditional
    (child2456 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2454 (830, 6) = (output2456, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2455 (830, 6) = (output2457, (830, 6)) := by
  rw [output2457_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2456

theorem node2458_conditional
    (child2451 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2449 (830, 2) = (output2451, (830, 6)))
    (child2457 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2455 (830, 6) = (output2457, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2456 (830, 2) = (output2458, (830, 6)) := by
  rw [output2458_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2451 child2457

theorem node2459_conditional
    (child2458 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2456 (830, 2) = (output2458, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2457 (830, 2) = (output2459, (830, 6)) := by
  rw [output2459_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2458

theorem node2460_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2458 (830, 6) = (output2460, (830, 6)) := by
  rw [output2460_def]
  kernel_rfl

theorem node2461_conditional
    (child2460 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2458 (830, 6) = (output2460, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2459 (830, 6) = (output2461, (830, 6)) := by
  rw [output2461_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2460

theorem node2462_conditional
    (child2461 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2459 (830, 6) = (output2461, (830, 6)))
    (child705 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_703 (830, 6) = (output705, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2460 (830, 6) = (output2462, (830, 6)) := by
  rw [output2462_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2461 child705

theorem node2463_conditional
    (child2462 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2460 (830, 6) = (output2462, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2461 (830, 6) = (output2463, (830, 6)) := by
  rw [output2463_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2462

theorem node2464_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2463 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2461 (830, 6) = (output2463, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2462 (830, 6) = (output2464, (830, 6)) := by
  rw [output2464_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2463

theorem node2465_conditional
    (child2464 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2462 (830, 6) = (output2464, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2463 (830, 6) = (output2465, (830, 6)) := by
  rw [output2465_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2464

theorem node2466_conditional
    (child2459 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2457 (830, 2) = (output2459, (830, 6)))
    (child2465 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2463 (830, 6) = (output2465, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2464 (830, 2) = (output2466, (830, 6)) := by
  rw [output2466_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2459 child2465

theorem node2467_conditional
    (child2466 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2464 (830, 2) = (output2466, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2465 (830, 2) = (output2467, (830, 6)) := by
  rw [output2467_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2466

theorem node2468_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2466 (830, 6) = (output2468, (830, 6)) := by
  rw [output2468_def]
  kernel_rfl

theorem node2469_conditional
    (child2468 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2466 (830, 6) = (output2468, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2467 (830, 6) = (output2469, (830, 6)) := by
  rw [output2469_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2468

theorem node2470_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2468 (830, 6) = (output2470, (830, 6)) := by
  rw [output2470_def]
  kernel_rfl

theorem node2471_conditional
    (child2470 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2468 (830, 6) = (output2470, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2469 (830, 6) = (output2471, (830, 6)) := by
  rw [output2471_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2470

theorem node2472_conditional
    (child2471 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2469 (830, 6) = (output2471, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2470 (830, 6) = (output2472, (830, 6)) := by
  rw [output2472_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2471 child99

theorem node2473_conditional
    (child2472 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2470 (830, 6) = (output2472, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2471 (830, 6) = (output2473, (830, 6)) := by
  rw [output2473_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2472

theorem node2474_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2473 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2471 (830, 6) = (output2473, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2472 (830, 6) = (output2474, (830, 6)) := by
  rw [output2474_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2473

theorem node2475_conditional
    (child2474 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2472 (830, 6) = (output2474, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2473 (830, 6) = (output2475, (830, 6)) := by
  rw [output2475_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2474

theorem node2476_conditional
    (child2469 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2467 (830, 6) = (output2469, (830, 6)))
    (child2475 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2473 (830, 6) = (output2475, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2474 (830, 6) = (output2476, (830, 6)) := by
  rw [output2476_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2469 child2475

theorem node2477_conditional
    (child2476 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2474 (830, 6) = (output2476, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2475 (830, 6) = (output2477, (830, 6)) := by
  rw [output2477_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2476

theorem node2478_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2477 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2475 (830, 6) = (output2477, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2476 (830, 6) = (output2478, (830, 6)) := by
  rw [output2478_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2477

theorem node2479_conditional
    (child2478 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2476 (830, 6) = (output2478, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2477 (830, 6) = (output2479, (830, 6)) := by
  rw [output2479_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2478

theorem node2480_conditional
    (child2467 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2465 (830, 2) = (output2467, (830, 6)))
    (child2479 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2477 (830, 6) = (output2479, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2478 (830, 2) = (output2480, (830, 6)) := by
  rw [output2480_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2467 child2479

theorem node2481_conditional
    (child2480 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2478 (830, 2) = (output2480, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2479 (830, 2) = (output2481, (830, 6)) := by
  rw [output2481_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2480

theorem node2482_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2480 (830, 6) = (output2482, (830, 6)) := by
  rw [output2482_def]
  kernel_rfl

theorem node2483_conditional
    (child2482 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2480 (830, 6) = (output2482, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2481 (830, 6) = (output2483, (830, 6)) := by
  rw [output2483_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2482

theorem node2484_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2482 (830, 6) = (output2484, (830, 6)) := by
  rw [output2484_def]
  kernel_rfl

theorem node2485_conditional
    (child2484 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2482 (830, 6) = (output2484, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2483 (830, 6) = (output2485, (830, 6)) := by
  rw [output2485_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2484

theorem node2486_conditional
    (child2485 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2483 (830, 6) = (output2485, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2484 (830, 6) = (output2486, (830, 6)) := by
  rw [output2486_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2485 child99

theorem node2487_conditional
    (child2486 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2484 (830, 6) = (output2486, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2485 (830, 6) = (output2487, (830, 6)) := by
  rw [output2487_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2486

theorem node2488_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2487 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2485 (830, 6) = (output2487, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2486 (830, 6) = (output2488, (830, 6)) := by
  rw [output2488_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2487

theorem node2489_conditional
    (child2488 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2486 (830, 6) = (output2488, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2487 (830, 6) = (output2489, (830, 6)) := by
  rw [output2489_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2488

theorem node2490_conditional
    (child2483 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2481 (830, 6) = (output2483, (830, 6)))
    (child2489 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2487 (830, 6) = (output2489, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2488 (830, 6) = (output2490, (830, 6)) := by
  rw [output2490_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2483 child2489

theorem node2491_conditional
    (child2490 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2488 (830, 6) = (output2490, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2489 (830, 6) = (output2491, (830, 6)) := by
  rw [output2491_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2490

theorem node2492_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2491 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2489 (830, 6) = (output2491, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2490 (830, 6) = (output2492, (830, 6)) := by
  rw [output2492_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2491

theorem node2493_conditional
    (child2492 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2490 (830, 6) = (output2492, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2491 (830, 6) = (output2493, (830, 6)) := by
  rw [output2493_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2492

theorem node2494_conditional
    (child2481 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2479 (830, 2) = (output2481, (830, 6)))
    (child2493 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2491 (830, 6) = (output2493, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2492 (830, 2) = (output2494, (830, 6)) := by
  rw [output2494_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2481 child2493

theorem node2495_conditional
    (child2494 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2492 (830, 2) = (output2494, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2493 (830, 2) = (output2495, (830, 6)) := by
  rw [output2495_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2494

theorem node2496_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2494 (830, 6) = (output2496, (830, 6)) := by
  rw [output2496_def]
  kernel_rfl

theorem node2497_conditional
    (child2496 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2494 (830, 6) = (output2496, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2495 (830, 6) = (output2497, (830, 6)) := by
  rw [output2497_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2496

theorem node2498_conditional
    (child2497 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2495 (830, 6) = (output2497, (830, 6)))
    (child761 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_759 (830, 6) = (output761, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2496 (830, 6) = (output2498, (830, 6)) := by
  rw [output2498_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2497 child761

theorem node2499_conditional
    (child2498 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2496 (830, 6) = (output2498, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2497 (830, 6) = (output2499, (830, 6)) := by
  rw [output2499_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2498

theorem node2500_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2499 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2497 (830, 6) = (output2499, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2498 (830, 6) = (output2500, (830, 6)) := by
  rw [output2500_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2499

theorem node2501_conditional
    (child2500 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2498 (830, 6) = (output2500, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2499 (830, 6) = (output2501, (830, 6)) := by
  rw [output2501_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2500

theorem node2502_conditional
    (child2495 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2493 (830, 2) = (output2495, (830, 6)))
    (child2501 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2499 (830, 6) = (output2501, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2500 (830, 2) = (output2502, (830, 6)) := by
  rw [output2502_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2495 child2501

theorem node2503_conditional
    (child2502 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2500 (830, 2) = (output2502, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2501 (830, 2) = (output2503, (830, 6)) := by
  rw [output2503_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2502

theorem node2504_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2502 (830, 6) = (output2504, (830, 6)) := by
  rw [output2504_def]
  kernel_rfl

theorem node2505_conditional
    (child2504 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2502 (830, 6) = (output2504, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2503 (830, 6) = (output2505, (830, 6)) := by
  rw [output2505_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2504

theorem node2506_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2504 (830, 6) = (output2506, (830, 6)) := by
  rw [output2506_def]
  kernel_rfl

theorem node2507_conditional
    (child2506 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2504 (830, 6) = (output2506, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2505 (830, 6) = (output2507, (830, 6)) := by
  rw [output2507_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2506

theorem node2508_conditional
    (child2507 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2505 (830, 6) = (output2507, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2506 (830, 6) = (output2508, (830, 6)) := by
  rw [output2508_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2507 child99

theorem node2509_conditional
    (child2508 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2506 (830, 6) = (output2508, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2507 (830, 6) = (output2509, (830, 6)) := by
  rw [output2509_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2508

theorem node2510_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2509 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2507 (830, 6) = (output2509, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2508 (830, 6) = (output2510, (830, 6)) := by
  rw [output2510_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2509

theorem node2511_conditional
    (child2510 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2508 (830, 6) = (output2510, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2509 (830, 6) = (output2511, (830, 6)) := by
  rw [output2511_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2510

theorem node2512_conditional
    (child2505 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2503 (830, 6) = (output2505, (830, 6)))
    (child2511 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2509 (830, 6) = (output2511, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2510 (830, 6) = (output2512, (830, 6)) := by
  rw [output2512_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2505 child2511

theorem node2513_conditional
    (child2512 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2510 (830, 6) = (output2512, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2511 (830, 6) = (output2513, (830, 6)) := by
  rw [output2513_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2512

theorem node2514_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2513 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2511 (830, 6) = (output2513, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2512 (830, 6) = (output2514, (830, 6)) := by
  rw [output2514_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2513

theorem node2515_conditional
    (child2514 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2512 (830, 6) = (output2514, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2513 (830, 6) = (output2515, (830, 6)) := by
  rw [output2515_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2514

theorem node2516_conditional
    (child2503 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2501 (830, 2) = (output2503, (830, 6)))
    (child2515 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2513 (830, 6) = (output2515, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2514 (830, 2) = (output2516, (830, 6)) := by
  rw [output2516_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2503 child2515

theorem node2517_conditional
    (child2516 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2514 (830, 2) = (output2516, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2515 (830, 2) = (output2517, (830, 6)) := by
  rw [output2517_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2516

theorem node2518_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2516 (830, 6) = (output2518, (830, 6)) := by
  rw [output2518_def]
  kernel_rfl

theorem node2519_conditional
    (child2518 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2516 (830, 6) = (output2518, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2517 (830, 6) = (output2519, (830, 6)) := by
  rw [output2519_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2518

theorem node2520_conditional
    (child2519 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2517 (830, 6) = (output2519, (830, 6)))
    (child789 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_787 (830, 6) = (output789, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2518 (830, 6) = (output2520, (830, 6)) := by
  rw [output2520_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2519 child789

theorem node2521_conditional
    (child2520 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2518 (830, 6) = (output2520, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2519 (830, 6) = (output2521, (830, 6)) := by
  rw [output2521_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2520

theorem node2522_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2521 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2519 (830, 6) = (output2521, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2520 (830, 6) = (output2522, (830, 6)) := by
  rw [output2522_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2521

theorem node2523_conditional
    (child2522 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2520 (830, 6) = (output2522, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2521 (830, 6) = (output2523, (830, 6)) := by
  rw [output2523_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2522

theorem node2524_conditional
    (child2517 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2515 (830, 2) = (output2517, (830, 6)))
    (child2523 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2521 (830, 6) = (output2523, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2522 (830, 2) = (output2524, (830, 6)) := by
  rw [output2524_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2517 child2523

theorem node2525_conditional
    (child2524 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2522 (830, 2) = (output2524, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2523 (830, 2) = (output2525, (830, 6)) := by
  rw [output2525_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2524

theorem node2526_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2524 (830, 6) = (output2526, (830, 6)) := by
  rw [output2526_def]
  kernel_rfl

theorem node2527_conditional
    (child2526 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2524 (830, 6) = (output2526, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2525 (830, 6) = (output2527, (830, 6)) := by
  rw [output2527_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2526

theorem node2528_conditional
    (child2527 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2525 (830, 6) = (output2527, (830, 6)))
    (child803 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_801 (830, 6) = (output803, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2526 (830, 6) = (output2528, (830, 6)) := by
  rw [output2528_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2527 child803

theorem node2529_conditional
    (child2528 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2526 (830, 6) = (output2528, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2527 (830, 6) = (output2529, (830, 6)) := by
  rw [output2529_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2528

theorem node2530_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2529 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2527 (830, 6) = (output2529, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2528 (830, 6) = (output2530, (830, 6)) := by
  rw [output2530_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2529

theorem node2531_conditional
    (child2530 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2528 (830, 6) = (output2530, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2529 (830, 6) = (output2531, (830, 6)) := by
  rw [output2531_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2530

theorem node2532_conditional
    (child2525 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2523 (830, 2) = (output2525, (830, 6)))
    (child2531 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2529 (830, 6) = (output2531, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2530 (830, 2) = (output2532, (830, 6)) := by
  rw [output2532_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2525 child2531

theorem node2533_conditional
    (child2532 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2530 (830, 2) = (output2532, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2531 (830, 2) = (output2533, (830, 6)) := by
  rw [output2533_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2532

theorem node2534_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2532 (830, 6) = (output2534, (830, 6)) := by
  rw [output2534_def]
  kernel_rfl

theorem node2535_conditional
    (child2534 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2532 (830, 6) = (output2534, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2533 (830, 6) = (output2535, (830, 6)) := by
  rw [output2535_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2534

theorem node2536_conditional
    (child2535 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2533 (830, 6) = (output2535, (830, 6)))
    (child817 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_815 (830, 6) = (output817, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2534 (830, 6) = (output2536, (830, 6)) := by
  rw [output2536_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2535 child817

theorem node2537_conditional
    (child2536 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2534 (830, 6) = (output2536, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2535 (830, 6) = (output2537, (830, 6)) := by
  rw [output2537_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2536

theorem node2538_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2537 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2535 (830, 6) = (output2537, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2536 (830, 6) = (output2538, (830, 6)) := by
  rw [output2538_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2537

theorem node2539_conditional
    (child2538 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2536 (830, 6) = (output2538, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2537 (830, 6) = (output2539, (830, 6)) := by
  rw [output2539_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2538

theorem node2540_conditional
    (child2533 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2531 (830, 2) = (output2533, (830, 6)))
    (child2539 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2537 (830, 6) = (output2539, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2538 (830, 2) = (output2540, (830, 6)) := by
  rw [output2540_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2533 child2539

theorem node2541_conditional
    (child2540 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2538 (830, 2) = (output2540, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2539 (830, 2) = (output2541, (830, 6)) := by
  rw [output2541_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2540

theorem node2542_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2540 (830, 6) = (output2542, (830, 6)) := by
  rw [output2542_def]
  kernel_rfl

theorem node2543_conditional
    (child2542 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2540 (830, 6) = (output2542, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2541 (830, 6) = (output2543, (830, 6)) := by
  rw [output2543_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2542

theorem node2544_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2542 (830, 6) = (output2544, (830, 6)) := by
  rw [output2544_def]
  kernel_rfl

theorem node2545_conditional
    (child2544 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2542 (830, 6) = (output2544, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2543 (830, 6) = (output2545, (830, 6)) := by
  rw [output2545_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2544

theorem node2546_conditional
    (child2545 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2543 (830, 6) = (output2545, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2544 (830, 6) = (output2546, (830, 6)) := by
  rw [output2546_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2545 child99

theorem node2547_conditional
    (child2546 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2544 (830, 6) = (output2546, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2545 (830, 6) = (output2547, (830, 6)) := by
  rw [output2547_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2546

theorem node2548_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2547 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2545 (830, 6) = (output2547, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2546 (830, 6) = (output2548, (830, 6)) := by
  rw [output2548_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2547

theorem node2549_conditional
    (child2548 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2546 (830, 6) = (output2548, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2547 (830, 6) = (output2549, (830, 6)) := by
  rw [output2549_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2548

theorem node2550_conditional
    (child2543 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2541 (830, 6) = (output2543, (830, 6)))
    (child2549 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2547 (830, 6) = (output2549, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2548 (830, 6) = (output2550, (830, 6)) := by
  rw [output2550_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2543 child2549

theorem node2551_conditional
    (child2550 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2548 (830, 6) = (output2550, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2549 (830, 6) = (output2551, (830, 6)) := by
  rw [output2551_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2550

theorem node2552_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2551 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2549 (830, 6) = (output2551, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2550 (830, 6) = (output2552, (830, 6)) := by
  rw [output2552_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2551

theorem node2553_conditional
    (child2552 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2550 (830, 6) = (output2552, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2551 (830, 6) = (output2553, (830, 6)) := by
  rw [output2553_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2552

theorem node2554_conditional
    (child2541 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2539 (830, 2) = (output2541, (830, 6)))
    (child2553 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2551 (830, 6) = (output2553, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2552 (830, 2) = (output2554, (830, 6)) := by
  rw [output2554_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2541 child2553

theorem node2555_conditional
    (child2554 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2552 (830, 2) = (output2554, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2553 (830, 2) = (output2555, (830, 6)) := by
  rw [output2555_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2554

theorem node2556_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2554 (830, 6) = (output2556, (830, 6)) := by
  rw [output2556_def]
  kernel_rfl

theorem node2557_conditional
    (child2556 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2554 (830, 6) = (output2556, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2555 (830, 6) = (output2557, (830, 6)) := by
  rw [output2557_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2556

theorem node2558_conditional
    (child2557 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2555 (830, 6) = (output2557, (830, 6)))
    (child845 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_843 (830, 6) = (output845, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2556 (830, 6) = (output2558, (830, 6)) := by
  rw [output2558_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2557 child845

theorem node2559_conditional
    (child2558 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2556 (830, 6) = (output2558, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2557 (830, 6) = (output2559, (830, 6)) := by
  rw [output2559_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2558

theorem node2560_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2559 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2557 (830, 6) = (output2559, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2558 (830, 6) = (output2560, (830, 6)) := by
  rw [output2560_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2559

theorem node2561_conditional
    (child2560 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2558 (830, 6) = (output2560, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2559 (830, 6) = (output2561, (830, 6)) := by
  rw [output2561_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2560

theorem node2562_conditional
    (child2555 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2553 (830, 2) = (output2555, (830, 6)))
    (child2561 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2559 (830, 6) = (output2561, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2560 (830, 2) = (output2562, (830, 6)) := by
  rw [output2562_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2555 child2561

theorem node2563_conditional
    (child2562 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2560 (830, 2) = (output2562, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2561 (830, 2) = (output2563, (830, 6)) := by
  rw [output2563_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2562

theorem node2564_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2562 (830, 6) = (output2564, (830, 6)) := by
  rw [output2564_def]
  kernel_rfl

theorem node2565_conditional
    (child2564 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2562 (830, 6) = (output2564, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2563 (830, 6) = (output2565, (830, 6)) := by
  rw [output2565_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2564

theorem node2566_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2564 (830, 6) = (output2566, (830, 6)) := by
  rw [output2566_def]
  kernel_rfl

theorem node2567_conditional
    (child2566 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2564 (830, 6) = (output2566, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2565 (830, 6) = (output2567, (830, 6)) := by
  rw [output2567_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2566

theorem node2568_conditional
    (child2567 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2565 (830, 6) = (output2567, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2566 (830, 6) = (output2568, (830, 6)) := by
  rw [output2568_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2567 child99

theorem node2569_conditional
    (child2568 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2566 (830, 6) = (output2568, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2567 (830, 6) = (output2569, (830, 6)) := by
  rw [output2569_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2568

theorem node2570_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2569 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2567 (830, 6) = (output2569, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2568 (830, 6) = (output2570, (830, 6)) := by
  rw [output2570_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2569

theorem node2571_conditional
    (child2570 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2568 (830, 6) = (output2570, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2569 (830, 6) = (output2571, (830, 6)) := by
  rw [output2571_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2570

theorem node2572_conditional
    (child2565 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2563 (830, 6) = (output2565, (830, 6)))
    (child2571 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2569 (830, 6) = (output2571, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2570 (830, 6) = (output2572, (830, 6)) := by
  rw [output2572_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2565 child2571

theorem node2573_conditional
    (child2572 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2570 (830, 6) = (output2572, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2571 (830, 6) = (output2573, (830, 6)) := by
  rw [output2573_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2572

theorem node2574_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2573 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2571 (830, 6) = (output2573, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2572 (830, 6) = (output2574, (830, 6)) := by
  rw [output2574_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2573

theorem node2575_conditional
    (child2574 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2572 (830, 6) = (output2574, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2573 (830, 6) = (output2575, (830, 6)) := by
  rw [output2575_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2574

theorem node2576_conditional
    (child2563 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2561 (830, 2) = (output2563, (830, 6)))
    (child2575 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2573 (830, 6) = (output2575, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2574 (830, 2) = (output2576, (830, 6)) := by
  rw [output2576_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2563 child2575

theorem node2577_conditional
    (child2576 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2574 (830, 2) = (output2576, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2575 (830, 2) = (output2577, (830, 6)) := by
  rw [output2577_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2576

theorem node2578_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2576 (830, 6) = (output2578, (830, 6)) := by
  rw [output2578_def]
  kernel_rfl

theorem node2579_conditional
    (child2578 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2576 (830, 6) = (output2578, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2577 (830, 6) = (output2579, (830, 6)) := by
  rw [output2579_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2578

theorem node2580_conditional
    (child2579 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2577 (830, 6) = (output2579, (830, 6)))
    (child873 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_871 (830, 6) = (output873, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2578 (830, 6) = (output2580, (830, 6)) := by
  rw [output2580_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2579 child873

theorem node2581_conditional
    (child2580 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2578 (830, 6) = (output2580, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2579 (830, 6) = (output2581, (830, 6)) := by
  rw [output2581_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2580

theorem node2582_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2581 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2579 (830, 6) = (output2581, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2580 (830, 6) = (output2582, (830, 6)) := by
  rw [output2582_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2581

theorem node2583_conditional
    (child2582 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2580 (830, 6) = (output2582, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2581 (830, 6) = (output2583, (830, 6)) := by
  rw [output2583_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2582

theorem node2584_conditional
    (child2577 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2575 (830, 2) = (output2577, (830, 6)))
    (child2583 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2581 (830, 6) = (output2583, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2582 (830, 2) = (output2584, (830, 6)) := by
  rw [output2584_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2577 child2583

theorem node2585_conditional
    (child2584 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2582 (830, 2) = (output2584, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2583 (830, 2) = (output2585, (830, 6)) := by
  rw [output2585_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2584

theorem node2586_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2584 (830, 6) = (output2586, (830, 6)) := by
  rw [output2586_def]
  kernel_rfl

theorem node2587_conditional
    (child2586 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2584 (830, 6) = (output2586, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2585 (830, 6) = (output2587, (830, 6)) := by
  rw [output2587_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2586

theorem node2588_conditional
    (child2587 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2585 (830, 6) = (output2587, (830, 6)))
    (child901 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_899 (830, 6) = (output901, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2586 (830, 6) = (output2588, (830, 6)) := by
  rw [output2588_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2587 child901

theorem node2589_conditional
    (child2588 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2586 (830, 6) = (output2588, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2587 (830, 6) = (output2589, (830, 6)) := by
  rw [output2589_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2588

theorem node2590_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2589 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2587 (830, 6) = (output2589, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2588 (830, 6) = (output2590, (830, 6)) := by
  rw [output2590_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2589

theorem node2591_conditional
    (child2590 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2588 (830, 6) = (output2590, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2589 (830, 6) = (output2591, (830, 6)) := by
  rw [output2591_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2590

theorem node2592_conditional
    (child2585 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2583 (830, 2) = (output2585, (830, 6)))
    (child2591 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2589 (830, 6) = (output2591, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2590 (830, 2) = (output2592, (830, 6)) := by
  rw [output2592_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2585 child2591

theorem node2593_conditional
    (child2592 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2590 (830, 2) = (output2592, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2591 (830, 2) = (output2593, (830, 6)) := by
  rw [output2593_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2592

theorem node2594_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2592 (830, 6) = (output2594, (830, 6)) := by
  rw [output2594_def]
  kernel_rfl

theorem node2595_conditional
    (child2594 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2592 (830, 6) = (output2594, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2593 (830, 6) = (output2595, (830, 6)) := by
  rw [output2595_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2594

theorem node2596_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2594 (830, 6) = (output2596, (830, 6)) := by
  rw [output2596_def]
  kernel_rfl

theorem node2597_conditional
    (child2596 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2594 (830, 6) = (output2596, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2595 (830, 6) = (output2597, (830, 6)) := by
  rw [output2597_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2596

theorem node2598_conditional
    (child2597 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2595 (830, 6) = (output2597, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2596 (830, 6) = (output2598, (830, 6)) := by
  rw [output2598_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2597 child99

theorem node2599_conditional
    (child2598 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2596 (830, 6) = (output2598, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2597 (830, 6) = (output2599, (830, 6)) := by
  rw [output2599_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2598

theorem node2600_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2599 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2597 (830, 6) = (output2599, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2598 (830, 6) = (output2600, (830, 6)) := by
  rw [output2600_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2599

theorem node2601_conditional
    (child2600 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2598 (830, 6) = (output2600, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2599 (830, 6) = (output2601, (830, 6)) := by
  rw [output2601_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2600

theorem node2602_conditional
    (child2595 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2593 (830, 6) = (output2595, (830, 6)))
    (child2601 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2599 (830, 6) = (output2601, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2600 (830, 6) = (output2602, (830, 6)) := by
  rw [output2602_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2595 child2601

theorem node2603_conditional
    (child2602 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2600 (830, 6) = (output2602, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2601 (830, 6) = (output2603, (830, 6)) := by
  rw [output2603_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2602

theorem node2604_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2603 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2601 (830, 6) = (output2603, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2602 (830, 6) = (output2604, (830, 6)) := by
  rw [output2604_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2603

theorem node2605_conditional
    (child2604 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2602 (830, 6) = (output2604, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2603 (830, 6) = (output2605, (830, 6)) := by
  rw [output2605_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2604

theorem node2606_conditional
    (child2593 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2591 (830, 2) = (output2593, (830, 6)))
    (child2605 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2603 (830, 6) = (output2605, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2604 (830, 2) = (output2606, (830, 6)) := by
  rw [output2606_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2593 child2605

theorem node2607_conditional
    (child2606 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2604 (830, 2) = (output2606, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2605 (830, 2) = (output2607, (830, 6)) := by
  rw [output2607_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2606

theorem node2608_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2606 (830, 6) = (output2608, (830, 6)) := by
  rw [output2608_def]
  kernel_rfl

theorem node2609_conditional
    (child2608 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2606 (830, 6) = (output2608, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2607 (830, 6) = (output2609, (830, 6)) := by
  rw [output2609_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2608

theorem node2610_conditional
    (child2609 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2607 (830, 6) = (output2609, (830, 6)))
    (child915 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_913 (830, 6) = (output915, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2608 (830, 6) = (output2610, (830, 6)) := by
  rw [output2610_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2609 child915

theorem node2611_conditional
    (child2610 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2608 (830, 6) = (output2610, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2609 (830, 6) = (output2611, (830, 6)) := by
  rw [output2611_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2610

theorem node2612_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2611 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2609 (830, 6) = (output2611, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2610 (830, 6) = (output2612, (830, 6)) := by
  rw [output2612_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2611

theorem node2613_conditional
    (child2612 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2610 (830, 6) = (output2612, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2611 (830, 6) = (output2613, (830, 6)) := by
  rw [output2613_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2612

theorem node2614_conditional
    (child2607 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2605 (830, 2) = (output2607, (830, 6)))
    (child2613 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2611 (830, 6) = (output2613, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2612 (830, 2) = (output2614, (830, 6)) := by
  rw [output2614_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2607 child2613

theorem node2615_conditional
    (child2614 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2612 (830, 2) = (output2614, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2613 (830, 2) = (output2615, (830, 6)) := by
  rw [output2615_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2614

theorem node2616_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2614 (830, 6) = (output2616, (830, 6)) := by
  rw [output2616_def]
  kernel_rfl

theorem node2617_conditional
    (child2616 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2614 (830, 6) = (output2616, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2615 (830, 6) = (output2617, (830, 6)) := by
  rw [output2617_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2616

theorem node2618_conditional
    (child2617 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2615 (830, 6) = (output2617, (830, 6)))
    (child943 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_941 (830, 6) = (output943, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2616 (830, 6) = (output2618, (830, 6)) := by
  rw [output2618_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2617 child943

theorem node2619_conditional
    (child2618 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2616 (830, 6) = (output2618, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2617 (830, 6) = (output2619, (830, 6)) := by
  rw [output2619_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2618

theorem node2620_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2619 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2617 (830, 6) = (output2619, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2618 (830, 6) = (output2620, (830, 6)) := by
  rw [output2620_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2619

theorem node2621_conditional
    (child2620 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2618 (830, 6) = (output2620, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2619 (830, 6) = (output2621, (830, 6)) := by
  rw [output2621_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2620

theorem node2622_conditional
    (child2615 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2613 (830, 2) = (output2615, (830, 6)))
    (child2621 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2619 (830, 6) = (output2621, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2620 (830, 2) = (output2622, (830, 6)) := by
  rw [output2622_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2615 child2621

theorem node2623_conditional
    (child2622 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2620 (830, 2) = (output2622, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2621 (830, 2) = (output2623, (830, 6)) := by
  rw [output2623_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2622

theorem node2624_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2622 (830, 6) = (output2624, (830, 6)) := by
  rw [output2624_def]
  kernel_rfl

theorem node2625_conditional
    (child2624 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2622 (830, 6) = (output2624, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2623 (830, 6) = (output2625, (830, 6)) := by
  rw [output2625_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2624

theorem node2626_conditional
    (child2625 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2623 (830, 6) = (output2625, (830, 6)))
    (child957 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_955 (830, 6) = (output957, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2624 (830, 6) = (output2626, (830, 6)) := by
  rw [output2626_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2625 child957

theorem node2627_conditional
    (child2626 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2624 (830, 6) = (output2626, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2625 (830, 6) = (output2627, (830, 6)) := by
  rw [output2627_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2626

theorem node2628_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2627 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2625 (830, 6) = (output2627, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2626 (830, 6) = (output2628, (830, 6)) := by
  rw [output2628_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2627

theorem node2629_conditional
    (child2628 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2626 (830, 6) = (output2628, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2627 (830, 6) = (output2629, (830, 6)) := by
  rw [output2629_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2628

theorem node2630_conditional
    (child2623 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2621 (830, 2) = (output2623, (830, 6)))
    (child2629 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2627 (830, 6) = (output2629, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2628 (830, 2) = (output2630, (830, 6)) := by
  rw [output2630_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2623 child2629

theorem node2631_conditional
    (child2630 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2628 (830, 2) = (output2630, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2629 (830, 2) = (output2631, (830, 6)) := by
  rw [output2631_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2630

theorem node2632_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2630 (830, 6) = (output2632, (830, 6)) := by
  rw [output2632_def]
  kernel_rfl

theorem node2633_conditional
    (child2632 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2630 (830, 6) = (output2632, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2631 (830, 6) = (output2633, (830, 6)) := by
  rw [output2633_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2632

theorem node2634_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2632 (830, 6) = (output2634, (830, 6)) := by
  rw [output2634_def]
  kernel_rfl

theorem node2635_conditional
    (child2634 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2632 (830, 6) = (output2634, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2633 (830, 6) = (output2635, (830, 6)) := by
  rw [output2635_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2634

theorem node2636_conditional
    (child2635 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2633 (830, 6) = (output2635, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2634 (830, 6) = (output2636, (830, 6)) := by
  rw [output2636_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2635 child99

theorem node2637_conditional
    (child2636 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2634 (830, 6) = (output2636, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2635 (830, 6) = (output2637, (830, 6)) := by
  rw [output2637_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2636

theorem node2638_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2637 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2635 (830, 6) = (output2637, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2636 (830, 6) = (output2638, (830, 6)) := by
  rw [output2638_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2637

theorem node2639_conditional
    (child2638 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2636 (830, 6) = (output2638, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2637 (830, 6) = (output2639, (830, 6)) := by
  rw [output2639_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2638

theorem node2640_conditional
    (child2633 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2631 (830, 6) = (output2633, (830, 6)))
    (child2639 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2637 (830, 6) = (output2639, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2638 (830, 6) = (output2640, (830, 6)) := by
  rw [output2640_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2633 child2639

theorem node2641_conditional
    (child2640 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2638 (830, 6) = (output2640, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2639 (830, 6) = (output2641, (830, 6)) := by
  rw [output2641_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2640

theorem node2642_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2641 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2639 (830, 6) = (output2641, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2640 (830, 6) = (output2642, (830, 6)) := by
  rw [output2642_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2641

theorem node2643_conditional
    (child2642 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2640 (830, 6) = (output2642, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2641 (830, 6) = (output2643, (830, 6)) := by
  rw [output2643_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2642

theorem node2644_conditional
    (child2631 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2629 (830, 2) = (output2631, (830, 6)))
    (child2643 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2641 (830, 6) = (output2643, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2642 (830, 2) = (output2644, (830, 6)) := by
  rw [output2644_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2631 child2643

theorem node2645_conditional
    (child2644 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2642 (830, 2) = (output2644, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2643 (830, 2) = (output2645, (830, 6)) := by
  rw [output2645_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2644

theorem node2646_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2644 (830, 6) = (output2646, (830, 6)) := by
  rw [output2646_def]
  kernel_rfl

theorem node2647_conditional
    (child2646 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2644 (830, 6) = (output2646, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2645 (830, 6) = (output2647, (830, 6)) := by
  rw [output2647_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2646

theorem node2648_conditional
    (child2647 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2645 (830, 6) = (output2647, (830, 6)))
    (child985 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_983 (830, 6) = (output985, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2646 (830, 6) = (output2648, (830, 6)) := by
  rw [output2648_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2647 child985

theorem node2649_conditional
    (child2648 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2646 (830, 6) = (output2648, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2647 (830, 6) = (output2649, (830, 6)) := by
  rw [output2649_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2648

theorem node2650_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2649 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2647 (830, 6) = (output2649, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2648 (830, 6) = (output2650, (830, 6)) := by
  rw [output2650_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2649

theorem node2651_conditional
    (child2650 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2648 (830, 6) = (output2650, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2649 (830, 6) = (output2651, (830, 6)) := by
  rw [output2651_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2650

theorem node2652_conditional
    (child2645 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2643 (830, 2) = (output2645, (830, 6)))
    (child2651 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2649 (830, 6) = (output2651, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2650 (830, 2) = (output2652, (830, 6)) := by
  rw [output2652_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2645 child2651

theorem node2653_conditional
    (child2652 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2650 (830, 2) = (output2652, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2651 (830, 2) = (output2653, (830, 6)) := by
  rw [output2653_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2652

theorem node2654_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2652 (830, 6) = (output2654, (830, 6)) := by
  rw [output2654_def]
  kernel_rfl

theorem node2655_conditional
    (child2654 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2652 (830, 6) = (output2654, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2653 (830, 6) = (output2655, (830, 6)) := by
  rw [output2655_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2654

theorem node2656_conditional
    (child2655 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2653 (830, 6) = (output2655, (830, 6)))
    (child999 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_997 (830, 6) = (output999, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2654 (830, 6) = (output2656, (830, 6)) := by
  rw [output2656_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2655 child999

theorem node2657_conditional
    (child2656 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2654 (830, 6) = (output2656, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2655 (830, 6) = (output2657, (830, 6)) := by
  rw [output2657_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2656

theorem node2658_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2657 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2655 (830, 6) = (output2657, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2656 (830, 6) = (output2658, (830, 6)) := by
  rw [output2658_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2657

theorem node2659_conditional
    (child2658 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2656 (830, 6) = (output2658, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2657 (830, 6) = (output2659, (830, 6)) := by
  rw [output2659_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2658

theorem node2660_conditional
    (child2653 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2651 (830, 2) = (output2653, (830, 6)))
    (child2659 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2657 (830, 6) = (output2659, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2658 (830, 2) = (output2660, (830, 6)) := by
  rw [output2660_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2653 child2659

theorem node2661_conditional
    (child2660 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2658 (830, 2) = (output2660, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2659 (830, 2) = (output2661, (830, 6)) := by
  rw [output2661_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2660

theorem node2662_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2660 (830, 6) = (output2662, (830, 6)) := by
  rw [output2662_def]
  kernel_rfl

theorem node2663_conditional
    (child2662 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2660 (830, 6) = (output2662, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2661 (830, 6) = (output2663, (830, 6)) := by
  rw [output2663_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2662

theorem node2664_conditional
    (child2663 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2661 (830, 6) = (output2663, (830, 6)))
    (child1013 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1011 (830, 6) = (output1013, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2662 (830, 6) = (output2664, (830, 6)) := by
  rw [output2664_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2663 child1013

theorem node2665_conditional
    (child2664 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2662 (830, 6) = (output2664, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2663 (830, 6) = (output2665, (830, 6)) := by
  rw [output2665_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2664

theorem node2666_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2665 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2663 (830, 6) = (output2665, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2664 (830, 6) = (output2666, (830, 6)) := by
  rw [output2666_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2665

theorem node2667_conditional
    (child2666 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2664 (830, 6) = (output2666, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2665 (830, 6) = (output2667, (830, 6)) := by
  rw [output2667_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2666

theorem node2668_conditional
    (child2661 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2659 (830, 2) = (output2661, (830, 6)))
    (child2667 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2665 (830, 6) = (output2667, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2666 (830, 2) = (output2668, (830, 6)) := by
  rw [output2668_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2661 child2667

theorem node2669_conditional
    (child2668 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2666 (830, 2) = (output2668, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2667 (830, 2) = (output2669, (830, 6)) := by
  rw [output2669_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2668

theorem node2670_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2668 (830, 6) = (output2670, (830, 6)) := by
  rw [output2670_def]
  kernel_rfl

theorem node2671_conditional
    (child2670 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2668 (830, 6) = (output2670, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2669 (830, 6) = (output2671, (830, 6)) := by
  rw [output2671_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2670

theorem node2672_conditional
    (child2671 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2669 (830, 6) = (output2671, (830, 6)))
    (child1027 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1025 (830, 6) = (output1027, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2670 (830, 6) = (output2672, (830, 6)) := by
  rw [output2672_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2671 child1027

theorem node2673_conditional
    (child2672 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2670 (830, 6) = (output2672, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2671 (830, 6) = (output2673, (830, 6)) := by
  rw [output2673_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2672

theorem node2674_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2673 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2671 (830, 6) = (output2673, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2672 (830, 6) = (output2674, (830, 6)) := by
  rw [output2674_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2673

theorem node2675_conditional
    (child2674 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2672 (830, 6) = (output2674, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2673 (830, 6) = (output2675, (830, 6)) := by
  rw [output2675_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2674

theorem node2676_conditional
    (child2669 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2667 (830, 2) = (output2669, (830, 6)))
    (child2675 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2673 (830, 6) = (output2675, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2674 (830, 2) = (output2676, (830, 6)) := by
  rw [output2676_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2669 child2675

theorem node2677_conditional
    (child2676 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2674 (830, 2) = (output2676, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2675 (830, 2) = (output2677, (830, 6)) := by
  rw [output2677_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2676

theorem node2678_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2676 (830, 6) = (output2678, (830, 6)) := by
  rw [output2678_def]
  kernel_rfl

theorem node2679_conditional
    (child2678 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2676 (830, 6) = (output2678, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2677 (830, 6) = (output2679, (830, 6)) := by
  rw [output2679_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2678

theorem node2680_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2678 (830, 6) = (output2680, (830, 6)) := by
  rw [output2680_def]
  kernel_rfl

theorem node2681_conditional
    (child2680 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2678 (830, 6) = (output2680, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2679 (830, 6) = (output2681, (830, 6)) := by
  rw [output2681_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2680

theorem node2682_conditional
    (child2681 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2679 (830, 6) = (output2681, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2680 (830, 6) = (output2682, (830, 6)) := by
  rw [output2682_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2681 child99

theorem node2683_conditional
    (child2682 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2680 (830, 6) = (output2682, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2681 (830, 6) = (output2683, (830, 6)) := by
  rw [output2683_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2682

theorem node2684_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2683 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2681 (830, 6) = (output2683, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2682 (830, 6) = (output2684, (830, 6)) := by
  rw [output2684_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2683

theorem node2685_conditional
    (child2684 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2682 (830, 6) = (output2684, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2683 (830, 6) = (output2685, (830, 6)) := by
  rw [output2685_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2684

theorem node2686_conditional
    (child2679 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2677 (830, 6) = (output2679, (830, 6)))
    (child2685 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2683 (830, 6) = (output2685, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2684 (830, 6) = (output2686, (830, 6)) := by
  rw [output2686_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2679 child2685

theorem node2687_conditional
    (child2686 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2684 (830, 6) = (output2686, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2685 (830, 6) = (output2687, (830, 6)) := by
  rw [output2687_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2686

#print axioms node2687_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
