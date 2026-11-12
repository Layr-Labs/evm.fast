import InitECandidate.Solver.Compiler.FrontEnd.ChainA
import InitECandidate.Solver.Compiler.FrontEnd.ChainB
import InitECandidate.Solver.Compiler.FrontEnd.CrepArithLoopLive

/-!
# Clock-level statements of the lock-step compiler passes

Clock-level counterparts (pinned flapjack rev 034bb5a1ed0b757082768d5406206bd2f8e31b7c) of the
semantics equalities through which the baseline chain (`panToTargetCompileSemantics`,
`PanToWord.StateRelImpSemantics.panToWordStateRelImpSemantics`, `AssemblyWordToStack`,
`AssemblyLabChain`) composes the passes that add no clock. Every statement has the uniform shape:
a source entry run at clock `k` with a result `r` that is neither `Error` nor `TimeOut` and final
state `s1` is matched by the target entry run at clock `k + c` with the related result and a
final state with the **same clock** (`t1.clock = s1.clock`) and the same FFI state, so both runs
consume the same clock up to the constant `c`.

Per pass (offset `c`, result relation):
* `pan_simp` — `panSimp_lockStep` (`FrontEnd/PanSimp.lean`): `+0`, identical.
* `pan_structs` — `panStructs_lockStep` (`FrontEnd/PanStructs.lean`): `+0`, `convertResHOL`.
* `pan_globals` — `panGlobals_lockStep` (`FrontEnd/PanGlobals.lean`): `+1` (the new `main`'s
  tail call of the renamed entry; the global initialisers consume no clock), identical.
* `pan_to_crep` + `crep_inline` — `toCrep_runStep`, `crepInline_runStep`, `panToCrep_lockStep`
  (`FrontEnd/PanToCrep.lean`): `+0`, `panCrepRes` (the `pcCompileCorrect` correspondence).
* `crep_arith`, `loop_live`/`loop_call` — `crepArith_step`, `crepArith_runStep`, `loopLive_step`
  (`FrontEnd/CrepArithLoopLive.lean`): `+0`, identical result and final clock (internal to
  `crep_to_loop`).
* `loop_to_word` — `loopToWord_runStep` (`FrontEnd/LoopToWord.lean`): `+0`, `loopWordRes`;
  final clock equal except for `FinalFFI` results (Flapjack's `resultCase` keeps no state
  relation there).
* `word_to_word` (all sub-passes of `compile`) — `wordToWord_runStep`, `wordToWord_lockStep`
  (`FrontEnd/WordToWord.lean`): `+0`, identical.

Chains:
* (a) `frontEnd_chainA` (`FrontEnd/ChainA.lean`): Pancake source (`semanticsDecls`, via the
  post-declaration state `s0`) → Crep (`crepSemantics` of the baseline's
  `crepStateHOL globalState panCode globalState.memory`): offset `+1`, final clocks equal;
  `panCrep_min` restarts it from the minimal source run (final clock `0`);
  `panDeclsInit_mainFirstHOL` identifies the source run family of `decls` and `mainFirstHOL decls`.
* (b) `frontEnd_chainB` (`FrontEnd/ChainB.lean`): Loop (`LoopSemStateFiniteExact.semantics`) →
  Word with the `word_to_word`-compiled code: offset `0`, final clocks equal unless `FinalFFI`;
  `frontEnd_chainB_min`: from a minimal Loop run, Word consumption ≤ Loop consumption.

Generic tools (`FrontEnd/Basic.lean`): `PanLockStep`/`PanRunStep` with `trans`, `pan_clock_sub`,
`pan_min_clock`, and `pan_clock_of_agree` (final clocks from per-clock result agreement, via Pan
`evaluate_clock_sub` and `evaluate_add_clock_eq`).
-/

#print axioms InitECandidate.Solver.Compiler.FrontEnd.semanticsDecls_eq_panDeclsInit
#print axioms InitECandidate.Solver.Compiler.FrontEnd.pan_clock_sub
#print axioms InitECandidate.Solver.Compiler.FrontEnd.pan_min_clock
#print axioms InitECandidate.Solver.Compiler.FrontEnd.pan_clock_of_agree
#print axioms InitECandidate.Solver.Compiler.FrontEnd.PanLockStep.trans
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panSimp_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panSimp_lockStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panSimp_lockStep_self
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panStructs_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panStructs_lockStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.fperm_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panGlobals_call_emptyLocals_clock
#print axioms InitECandidate.Solver.Compiler.FrontEnd.emptyLocals_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panGlobals_stateRel_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.initCall_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panGlobals_lockStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.toCrep_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.crepInline_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panToCrep_lockStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.crepArith_step
#print axioms InitECandidate.Solver.Compiler.FrontEnd.crepArith_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.loopLive_step
#print axioms InitECandidate.Solver.Compiler.FrontEnd.loopToWord_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.wordToWord_runStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.wordToWord_lockStep
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panDeclsInit_mainFirstHOL
#print axioms InitECandidate.Solver.Compiler.FrontEnd.frontEnd_chainA
#print axioms InitECandidate.Solver.Compiler.FrontEnd.panCrep_min
#print axioms InitECandidate.Solver.Compiler.FrontEnd.frontEnd_chainB
#print axioms InitECandidate.Solver.Compiler.FrontEnd.frontEnd_chainB_min
