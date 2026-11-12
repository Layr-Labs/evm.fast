import InitECandidate.Solver.Spec.CodeWalk
import InitECandidate.Solver.Spec.CodeMemeq
import InitECandidate.Solver.Spec.CostInv
import InitECandidate.Solver.Spec.DomCount
import InitECandidate.Solver.Spec.HoareG
import InitECandidate.Solver.Spec.RlpHdr
import InitECandidate.Solver.Spec.Scratch
import InitECandidate.Solver.Spec.RlpStack
import InitECandidate.Solver.Spec.RlpValidate
import InitECandidate.Solver.Spec.RlpCount
import InitECandidate.Solver.Spec.Memeq
import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.WalkGuest

/-!
# Tick bounds of the two memory walkers

* `Spec/CodeWalk.lean`, `Spec/CodeMemeq.lean`: `trap_with`, `scratch_alloc`,
  `_rlp_validate_items_body`, `rlp_validate_items`, `mpt_fail`, `trie_walk`, `memeq`,
  certified against `guestCode`.
* `Spec/CostInv.lean`: `CostP` (cost from a precondition) and `costP_while_inv`, a measure
  rule whose measure need only decrease on invariant states.
* `Spec/DomCount.lean`: `cnt`, the number of domain hits ahead of a cursor; `cnt_le`:
  at most `L + 8` when the domain lies in a cyclic interval of length `L`.
* `Spec/HoareG.lean`: Hoare logic over good results (exceptions included).
* `Spec/RlpHdr.lean`: `rlp_item_header` returns `kind ≠ 0 → 1 ≤ h0` and read `ld8 p`.
* `Spec/Scratch.lean`: `trap_with` never returns; `scratch_alloc` spec.
* `Spec/RlpStack.lean`, `Spec/RlpValidate.lean`: the record-stack invariant and
  `rlp_validate_items_body_cost` (`(2 L + 18) (Bh + Ba + 3)`), `rlp_validate_items_cost`,
  `rlp_item_total_cost`.
* `Spec/RlpCount.lean`: `rlp_item_total` reads its header byte; `rlp_list_count_cost_dom`
  (`(L + 9) (Btot + 2)`, replacing the `2 ^ 64` iteration factor of `Spec/Rlp.lean`).
* `Spec/Memeq.lean`: `memeq` returns `1` on length `0`, and reads `b` before returning
  otherwise.
* `Spec/TrieWalk.lean`: `trie_walk_cost` (`(L + 9)(L + 2)(Bf + 2 Bm + 4)`).
* `Spec/WalkGuest.lean`: the same for the guest domain (`L = 2 ^ 35`), the RLP chain up
  to `rlp_list_count`, and `walk_tblSound` (table composition).
-/
