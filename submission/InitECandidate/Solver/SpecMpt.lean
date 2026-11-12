import InitECandidate.Solver.Spec.Mpt.Code
import InitECandidate.Solver.Spec.Mpt.Keep
import InitECandidate.Solver.Spec.Mpt.DeleteDescent
import InitECandidate.Solver.Spec.Mpt.InsertCode
import InitECandidate.Solver.Spec.Mpt.Callees
import InitECandidate.Solver.Spec.Mpt.Measure
import InitECandidate.Solver.Spec.Mpt.InsertStep
import InitECandidate.Solver.Spec.Mpt.InsertIter
import InitECandidate.Solver.Spec.Mpt.Quiet
import InitECandidate.Solver.Spec.Mpt.Insert
import InitECandidate.Solver.Spec.Mpt.InsertCost
import InitECandidate.Solver.Spec.Mpt.InsertFinal
import InitECandidate.Solver.Spec.Mpt.DelChain
import InitECandidate.Solver.Spec.Mpt.DelUnwind
import InitECandidate.Solver.Spec.Mpt.DelPre
import InitECandidate.Solver.Spec.Mpt.DelDescInv
import InitECandidate.Solver.Spec.Mpt.DelPush
import InitECandidate.Solver.Spec.Mpt.DelStep
import InitECandidate.Solver.Spec.Mpt.DelStep2
import InitECandidate.Solver.Spec.Mpt.DelStep3
import InitECandidate.Solver.Spec.Mpt.DelBody
import InitECandidate.Solver.Spec.Mpt.Fill.Main
import InitECandidate.Solver.Spec.Mpt.Decode.All
import InitECandidate.Solver.Spec.Mpt.Leaves.All

/-!
# Tick bounds of the MPT write-path loops

* `Spec.Mpt.mpt_insert_node_cost` (`Spec/Mpt/InsertFinal.lean`): `_mpt_insert_node`, from
  every state: `(insMb + 1) * (insB Bnl Bmf Bni Bil Bcpl Bse Bne + 1)`, `insMb < 2 ^ 131`.
* `Spec.Mpt.delDesc_cost` (`Spec/Mpt/DeleteDescent.lean`): the descent loop of
  `_mpt_delete_node_body`, from every state: `(2 ^ 64 + 2) * (delDescB ... + 1)`.
* `Spec.Mpt.mpt_delete_node_body_costP` (`Spec/Mpt/DelBody.lean`): `_mpt_delete_node_body`
  as a conditional entry (`Spec.Inv.CalleeCostP`) under `DelPre`, given `NullSafe X`,
  `AllocSpec` of `scratch_alloc` and `BelowSP` of `_delete_ext_finish` / `_collapse_branch`:
  `delB … = (2^64+2)(delDescB+1) + (scratchEnd+1)(Bdef+Bc+3)`.
* `Spec.Mpt.node_rlp_fill_costP` (`Spec/Mpt/Fill/Main.lean`): `_node_rlp_fill` as a conditional
  entry under `FillPre` (allocator ordered; root a LEAF/EXT/BRANCH node of a node set with the
  trie facts `TrieOK`), given `NullSafe X` and the callee hypotheses `BeginSpec` /
  `FinishSpec` (`Spec/Mpt/Fill/Pre.lean`): `fillB … = (521216 + 1)(fillBodyB + 1) + (Bm + Ba +
  Bbeg + Br + 4)`, `fillBodyB = (2^64 + 1)(Bn + 2) + Ba + Bbeg + Bfin + 2`.
-/
