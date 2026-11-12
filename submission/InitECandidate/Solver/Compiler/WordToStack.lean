import InitECandidate.Solver.Compiler.WordToStack.Entry

/-!
# Bounded word → stack pass

Bounded counterparts of Flapjack's word-to-stack simulation (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c, `Compiler/Backend/WordToStack/Proofs`):

* `wsize` (`WordToStack/Basic.lean`): hand-made node count of a word program (`1` per
  constructor; `Seq`, `If`, `Loop`, `MustTerminate` and the return/exception handlers of `Call`
  add their sub-programs). `CodeBoundedW S s`: every procedure body of `s.code` and every program
  the compile oracle can install has `wsize ≤ S`; preserved by evaluation
  (`codeBoundedW_evaluate`, `WordToStack/Preserve.lean`).
* `compCorrect_bounded` (`WordToStack/Assembly.lean`): Flapjack's `CompCorrect.compCorrect`
  (same premises and conclusion) under `wsize program ≤ S` and `CodeBoundedW S source`, with
  `extraClock ≤ (S + 1) * (source.clock - sourcePost.clock) + wsize program`.
  Proof: the induction of `CompCorrect/Assembly.lean` with the bounded motive `SimB`; every
  clock-producing Flapjack theorem is copied with an added bound conjunct (`Leaves`, `Control`,
  `CallTail`, `CallReturning`, `CallHandler`), witness-free helpers are reused.
  The witnesses: `0`, except `1` per `Raise` (call of the ticking raise stub) and `1` per
  `ShareInst` (ticking `ShMemOp`); sums for `Seq`/`Loop`/calls. The word tick of a loop iteration
  or call pays for the size `≤ S` of the body it enters.
* `compCall_bounded`, `EntrySimulationB`, `entrySimulationB_ofStateRel`,
  `entrySimulationB_makeInit` (`WordToStack/Entry.lean`): the top-level entry call
  `Call NONE (SOME start) [0] NONE`. A word entry run from clock `k` ending in `s1` (result not
  `Error`) is simulated by the stack entry run from clock `k + ck`,
  `ck ≤ (S + 1) * (k - s1.clock) + 1`, with the same result, FFI state and final clock
  (or the resource-limit `Halt 2` branch). Hence the stack entry run consumes
  `k + ck - t1.clock ≤ (S + 2) * (k - s1.clock) + 1` ticks (`EntrySimulationB.consumed`).
  `EntrySimulationB.toEntrySimulation` recovers Flapjack's `EntrySimulation`.
-/

#print axioms InitECandidate.Solver.Compiler.WordToStack.compCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.WordToStack.compCall_bounded
#print axioms InitECandidate.Solver.Compiler.WordToStack.entrySimulationB_ofStateRel
#print axioms InitECandidate.Solver.Compiler.WordToStack.entrySimulationB_makeInit
#print axioms InitECandidate.Solver.Compiler.WordToStack.EntrySimulationB.toEntrySimulation
#print axioms InitECandidate.Solver.Compiler.WordToStack.EntrySimulationB.consumed
#print axioms InitECandidate.Solver.Compiler.WordToStack.codeBoundedW_evaluate
