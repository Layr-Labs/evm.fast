import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.Spec.Inv.HtabCode
import InitECandidate.Solver.Spec.Inv.Htab
import InitECandidate.Solver.Spec.Inv.HtabWF
import InitECandidate.Solver.Spec.Inv.HtabFind
import InitECandidate.Solver.Spec.Inv.BePreserved
import InitECandidate.Solver.Spec.Inv.Memeq
import InitECandidate.Solver.Spec.Inv.HtabDelCode
import InitECandidate.Solver.Spec.Inv.HtabDelMem
import InitECandidate.Solver.Spec.Inv.HtabDel
import InitECandidate.Solver.Spec.Inv.HtabFrame
import InitECandidate.Solver.Spec.Inv.HtabRead
import InitECandidate.Solver.Spec.Inv.HtabDelExtra
import InitECandidate.Solver.Spec.Inv.Alloc
import InitECandidate.Solver.Spec.Inv.HtabNewCode
import InitECandidate.Solver.Spec.Inv.HtabNewMem
import InitECandidate.Solver.Spec.Inv.HtabNew
import InitECandidate.Solver.Spec.Inv.HtabMemSafe
import InitECandidate.Solver.Spec.Inv.HtabSetSpec
import InitECandidate.Solver.Spec.Inv.Bytes
import InitECandidate.Solver.Spec.Inv.Memcpy
import InitECandidate.Solver.Spec.Inv.MemeqFull
import InitECandidate.Solver.Spec.Inv.FirstDiff
import InitECandidate.Solver.Spec.Inv.HtabGrow
import InitECandidate.Solver.Spec.Inv.HtabGrowView
import InitECandidate.Solver.Spec.Inv.HtabKeep
import InitECandidate.Solver.Spec.Inv.HtabNewNode
import InitECandidate.Solver.Spec.Inv.HtabNewInternal
import InitECandidate.Solver.Spec.Inv.HtabNewLeaf
import InitECandidate.Solver.Spec.Inv.HtabStores
import InitECandidate.Solver.Spec.Inv.HtabNewLeafView
import InitECandidate.Solver.Spec.Inv.HtabTree
import InitECandidate.Solver.Spec.Inv.HtabInsCtx
import InitECandidate.Solver.Spec.Inv.HtabInsWalk
import InitECandidate.Solver.Spec.Inv.HtabIns
import InitECandidate.Solver.Spec.Inv.HtabInsView
import InitECandidate.Solver.Spec.Inv.HtabSetPost
import InitECandidate.Solver.Spec.Inv.HtabSetCode
import InitECandidate.Solver.Spec.Inv.HtabGw
import InitECandidate.Solver.Spec.Inv.HtabSet

/-!
# Conditional costs and invariants (prototype)

* `Spec/Inv/CostI.lean`: the design (module doc) and the framework. `CostP σ X P p B`
  (cost from states satisfying `P`), `CostI` (cost plus preserved invariant), structural
  rules threaded with the Hoare layer (`costP_seq`, `costP_ite`, `costP_dec`), the measure
  rule under an invariant (`costP_while`), conditional table entries `CalleeCostP` with the
  call-site rule (`costP_call`, `costP_callD`), embeddings of all-states costs
  (`costP_of_cost`, `costI_of_cost`, `calleeCostP_of_calleeCost`) and back
  (`cost_of_costP_true`, `calleeCost_of_costP_true`), global invariants preserved by
  footprint class 1 (`keepsG_of_footprint`, `hoare_callD_keeps`).
* `Spec/Inv/HtabCode.lean`: certified code of `htab_truncate`; inversions of word
  operations.
* `Spec/Inv/Htab.lean`: `htab_truncate_costP`, the conditional cost of `htab_truncate`
  (`2 ^ 64 * (Bdel + 2)` under a table invariant `W`), assuming the `htab_del` obligation
  `DelSpec σ X W`.
* `Spec/Inv/HtabWF.lean`: the concrete invariant `TableWF` (separation, tree shape, walk
  correctness) and its structural consequences.
* `Spec/Inv/HtabFind.lean`: `funSpec_find_leaf` (`htab_find_leaf` returns the end of the
  walk) and `find_leaf_last` (on the last key of a well-formed table it returns the last
  leaf).
* `Spec/Inv/BePreserved.lean`: every evaluation keeps the byte order (`be_preserved`).
* `Spec/Inv/Memeq.lean`: `memeq(a, a, n)` returns a nonzero word (`funSpec_memeq_self`).
* `Spec/Inv/HtabDelCode.lean`, `HtabDelMem.lean`, `HtabDel.lean`: `htab_del` on the last key
  (`delSpecM`: well formed afterwards, count lowered by one, modifies only the table's region),
  hence `delSpec_tableWF : DelSpec σ X TableWF` and the discharged conditional entry
  `htab_truncate_costP_wf` (`2 ^ 59 * (Bdel + 2)` on well-formed tables).
* `Spec/Inv/HtabFrame.lean`: `TableWF` depends only on the table's region (`tableWF_frame`,
  `tableWF_of_modifies`), the interface for the memory-safety argument.
* `Spec/Inv/HtabRead.lean`: the read-only htab functions keep every table (`funSpec_read`).
* `Spec/Inv/HtabDelExtra.lean`: deletion keeps the allocation state (next, free list) and the
  Patricia prefix property, and inserts no leaf value (`del_wf2`, `LeafVal`).
* `Spec/Inv/Alloc.lean`: the heap allocator (`funSpec_alloc`, `AllocRetH`, `allocH_nat`).
* `Spec/Inv/HtabNew*.lean`: `htab_new` creates a well-formed empty table owning the freshly
  allocated block (`funSpec_htab_new`, `NewPost`).
* `Spec/Inv/HtabMemSafe.lean`: adapters to `MemSafe/Summary.lean` (`newPost_fresh`).
* `Spec/Inv/HtabSetSpec.lean`: the statement `SetSpec` of the `htab_set` obligation (proved in
  `HtabSet.lean`).
* `Spec/Inv/Bytes.lean`: bytes of memory words (`getByte_setByte_self`/`_ne`, `word_of_bytes`,
  `kbyte_storeByte`, `kbyte_upd`, bit tests).
* `Spec/Inv/Memcpy.lean`: the content of `memcpy` (`funSpec_memcpy`: byte copy and modifies
  clause; `copyPost_words`: aligned copies are word copies).
* `Spec/Inv/MemeqFull.lean`: `memeq` returns `0` only on a differing byte (`funSpec_memeq_zero`).
* `Spec/Inv/FirstDiff.lean`: `htab_first_diff` returns the first differing key bit
  (`funSpec_first_diff`, `FDPost`) and writes no memory.
* `Spec/Inv/HtabGrow.lean`, `HtabGrowView.lean`: `htab_grow` moves the arrays into a fresh block
  `[H0, H1)` and doubles the capacity, keeping every field the invariant reads
  (`funSpec_grow_post`, `GrowPost`).
* `Spec/Inv/HtabKeep.lean`: `Keep` (fields unchanged up to an index) and its rules.
* `Spec/Inv/HtabNewNode.lean`: `htab_new_node` pops the free list or takes `next`, growing first
  if full (`funSpec_new_node`, `NNPre`, `NNPost`).
* `Spec/Inv/HtabNewInternal.lean`: `htab_new_internal` (`funSpec_new_internal`, `NIRet`), and the
  node-store lemmas `node_store`, `fill4_facts`.
* `Spec/Inv/HtabNewLeaf.lean`, `HtabNewLeafView.lean`: `htab_new_leaf` (`funSpec_new_leaf`, `NLRet`;
  `nl_post`: table-level `NLPost`, the key copied into the new leaf's slot). `HtabStores.lean`: what
  one header, order or node store changes (`hdr_store_kit`, `ord_store_kit`, `node_store_kit`).
* `Spec/Inv/HtabTree.lean`: subtrees of a well-formed table (`anc_cmp`, `sib_disj`, `walk_anc`) and
  the search path `Pth` of `htab_set`.
* `Spec/Inv/HtabInsCtx.lean`, `HtabInsWalk.lean`, `HtabIns.lean`: insertion keeps the invariant, pure
  part (`InsV` the final view, `ins_ctx` with `D < KIND n`, `ins_shape`, `ins_extra`, `ins_leafval`).
* `Spec/Inv/HtabInsView.lean`: the splice's stores give `InsV` (`ins_view`, agreement `Ag`).
* `Spec/Inv/HtabSetPost.lean`: the three outcomes of `htab_set` at memory level (`setA_postM`,
  `setB_postM`, `setC_postM`).
* `Spec/Inv/HtabGw.lean`: `htab_find_leaf`, `memeq`, `htab_first_diff` write no global.
* `Spec/Inv/HtabSetCode.lean`, `HtabSet.lean`: the code of `htab_set` and its Hoare proof
  (`setBody_hoare`), hence **`setSpec : SetSpec σ X`**.
-/
