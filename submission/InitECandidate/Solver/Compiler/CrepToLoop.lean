import InitECandidate.Solver.Compiler.CrepToLoop.Semantics

/-!
# Bounded crep → loop pass

Bounded counterparts of Flapjack's crep → loop simulation (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c, `Pancake/CrepToLoop/Proofs`).

* `esize`, `csize` (`CrepToLoop/Basic.lean`): hand-made node counts of crep expressions and
  programs; `csize` includes the expression nodes (each `Cmp` costs one loop tick), `While`
  counts `2`, `Call` `3`, every other constructor `1`. `CodeBoundedC S s`: every body of
  `s.code` has `csize ≤ S`; preserved by evaluation (`CodeBoundedC.of_eval`, crep code is
  never modified). `csize_simp` (`Simp.lean`): `crep_arith$simp_prog` never increases `csize`.
* `crepToLoop_ncompile_correct_bounded` (`Assembly.lean`): Flapjack's
  `crepToLoop_ncompile_correct` (same premises and conclusion) under `csize v ≤ S` and
  `CodeBoundedC S v1`, with `ck ≤ (S + 1) * (v1.clock - s1.clock) + csize v`
  (`A = S + 1`, `B = 1`). `crepToLoop_ncompile_consumed_bounded`: the loop run consumes
  `≤ (S + 2) * (v1.clock - s1.clock) + csize v`.
  Proof: the `evaluate_ind` induction over the bounded motive `PropertyAtB`. The 14 leaf
  statements and all expressions need no copied proof: their compiled code is straight-line
  (`Straight.lean`, at most `esize`/`csize` ticking `If`/`Tick` nodes), and `state_rel`'s clock
  equality forces Flapjack's own witness to be `≤` that count (`Leaf.lean`). `Seq`, `If`,
  `Dec`, `While`, `Call` are copies of Flapjack's case proofs with an added bound conjunct
  (`Control.lean`, `While.lean`, `Call.lean`).
* `codeRelEvaluateCallCorrect_bounded`, `crepToLoop_perClock_bounded`,
  `crepToLoop_perClock_bounded_of_code` (`Semantics.lean`): the entry call
  `Call NONE start []` and the per-clock premise of `crepToLoopSemanticsWrapper_eq` as used by
  `crepToLoopStateRelImpSemantics`: under its premises, `3 ≤ S` and
  `∀ e ∈ crep_code, csize e.2.2 ≤ S`, every non-`RunError` source run `crepAbsf s start k` is
  matched by `loopConcf t lc (k + k')` with `k' ≤ (S + 1) * (k - s_k.clock) + 3`.
  `crepAbsf_wrapper`/`loopConcf_wrapper` identify the two families with
  `crepSemantics s start` / `LoopSemStateFiniteExact.semantics t lc`.
-/

#print axioms InitECandidate.Solver.Compiler.CrepToLoop.crepToLoop_ncompile_correct_bounded
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.crepToLoop_ncompile_consumed_bounded
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.codeRelEvaluateCallCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.crepToLoop_perClock_bounded
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.crepToLoop_perClock_bounded_of_code
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.crepAbsf_wrapper
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.loopConcf_wrapper
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.CodeBoundedC.of_eval
#print axioms InitECandidate.Solver.Compiler.CrepToLoop.csize_simp
