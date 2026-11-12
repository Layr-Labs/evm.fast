import InitECandidate.Solver.Wit.NdbW
import InitECandidate.Solver.Wit.WitG
import InitECandidate.Solver.Wit.Prod
import InitECandidate.Solver.Wit.WsTrie
import InitECandidate.Solver.Wit.Op

/-!
# witg: the witness-state record row and `WitG` (aggregator)

Row: `MemSafe/Hooks/RecWs.lean` (`wsD`, in `recTab`). Lemma (a): `Wit.ndbW_of_ndbR`. `WitG`:
`Wit.witG_of_gt`. Producers: `Wit/Prod.lean`. Band item #6: `Wit.wst_condCost`.
`opCost` at the record family: `Wit.op_dispatch_condCost_R`. Notes: `research/notes/witg-*.md`.
-/
