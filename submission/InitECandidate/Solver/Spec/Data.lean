import InitECandidate.Solver.Spec.HoareExt
import InitECandidate.Solver.Spec.CodeRlp
import InitECandidate.Solver.Spec.Rlp
import InitECandidate.Solver.Spec.GlobalFree
import InitECandidate.Solver.Spec.CodeState
import InitECandidate.Solver.Spec.StateRestore
import InitECandidate.Solver.Spec.MemFree
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# Callee-dependent data-structure loops

Cost theorems for loops whose bounds need facts about callees, with the callee costs as
hypotheses (the shape of a cost-table entry, `CalleeCost σ X f B`), for code maps with
`X.code.lookup = guestCode`:

* `rlp_list_count_cost` (`Spec/Rlp.lean`):
  `CalleeCost σ X "rlp_item_total" Btot → CalleeCost σ X "rlp_list_count" (2 ^ 64 * (Btot + 2))`,
  from the return specs `funRet_rlp_item_header` (`1 ≤ h0 + h1 ≤ len`) and
  `funRet_rlp_item_total` (`1 ≤ total ≤ len`).
* `state_restore_cost` (`Spec/StateRestore.lean`):
  `CalleeCost "htab_set" Bset → CalleeCost "htab_del" Bdel →
   CalleeCost "state_restore" (2 ^ 64 * (Bset + Bdel + 2))`, from the global-write footprint
  `htab_gwClosed` (neither `htab_set` nor `htab_del`, transitively, writes `journal_n`).

Hoare-layer extensions (`Spec/HoareExt.lean`): state-relational callee specs `FunSpec`,
call rules for discarded / assigned (local or global) results, `var x = f(..)`, tail calls
and exception handlers, global assignment, raise, guards of never-returning calls.
Footprint checkers: `Spec/GlobalFree.lean` (a function never writes global `g`),
`Spec/MemFree.lean` (a function writes no memory; one-word loads, stores), with guest
instances in `Spec/CodeState.lean` and `Spec/FootprintGuest.lean`.
-/
