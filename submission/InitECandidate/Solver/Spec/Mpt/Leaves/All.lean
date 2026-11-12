import InitECandidate.Solver.Spec.Mpt.Leaves.Branch
import InitECandidate.Solver.Spec.Mpt.Leaves.Common
import InitECandidate.Solver.Spec.Mpt.Leaves.Compact
import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpFoot
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem
import InitECandidate.Solver.Spec.Mpt.Leaves.MemDom
import InitECandidate.Solver.Spec.Mpt.Leaves.BelowCommon
import InitECandidate.Solver.Spec.Mpt.Leaves.BelowNodes
import InitECandidate.Solver.Spec.Mpt.Leaves.BelowDel
import InitECandidate.Solver.Spec.Mpt.Leaves.DelFinal
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpLen
import InitECandidate.Solver.Spec.Mpt.Leaves.Nlc
import InitECandidate.Solver.Spec.Mpt.Leaves.Begin
import InitECandidate.Solver.Spec.Mpt.Leaves.FillFinal
import InitECandidate.Solver.Spec.Mpt.Leaves.DecFinal
import InitECandidate.Solver.Spec.Mpt.Leaves.SliceFns
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.Spec.Mpt.Leaves.Keccak
import InitECandidate.Solver.Spec.Mpt.Leaves.FillDone

/-!
# MPT leaf obligations (`Spec/Mpt/Leaves/`)

Leaf-level footprint and length facts the conditional MPT cost bounds assume
(`research/notes/mpt-preconditions.md`):

* decode leaves: `freshFoot_node_new_branch`, `freshFoot_compact_to_nibbles`,
  `freshFoot_rlp_item` (and the located `freshFoot_rlp_item'`), `freshFoot_rlp_decode_fully`
  (and `freshFoot_rlp_decode_fully'`), `freshFoot_nodedb_lookup` under the node-DB invariant
  `NdbW` (`wFrame_ndbW`); the validator chain `freshFoot_rlp_validate_items_body`,
  `freshFoot_rlp_validate_items`, `freshFoot_rlp_item_total`, `freshFoot_rlp_list_count`;
* delete leaves: `belowSP_delete_ext_finish`, `belowSP_collapse_branch` (with
  `belowSP_node_new_ext`, `belowSP_node_new_leaf`, `belowSP_nibbles_concat`, and the
  length-unconstrained `footD_memcpy` / `footD_memzero` under `DomTop`), and the assembled
  `mpt_delete_node_body_costP_leaf`;
* fill leaves (toward `FinishSpec`): `foot_keccak_f1600` (`Keccak.lean`: writes only `[stp, stp + 200)`,
  via the locals-only checker `pure2B` / `hoareG_pure2` and the chains `decChain` / `stChain`);
* fill leaves: `beginSpec : BeginSpec σ X` (with `footRet_rlp_header_len`,
  `footRet_rlp_bytes_encoded_len`, `funSpec_rlp_value_encoded_len`, `foot_nibble_list_to_compact`),
  and `node_rlp_fill_costP_begin` (only `FinishSpec` left);
* `finishSpec : FinishSpec σ X` (`FinSpec.lean`, under `AlignedDom`, `DomTop`, `NullSafe`), from
  `ret_keccak256` (`FinKeccak.lean`), `ret_node_ref_len` / `ret_node_hash_cached` / `alloc_ret_hp`
  (`FinRef.lean`), the `DomTop` writers `footD_rlp_write_header` / `footD_rlp_encode_bytes`
  (`FinEnc.lean`), `ret_node_write_ref` (`FinWrite.lean`), the two passes (`FinFirst.lean`,
  `FinStep.lean`, `FinSecond.lean`); and `node_rlp_fill_costP_final` (`FillDone.lean`: only
  `FillPre`, the context facts and the table `CalleeCost`s left);
* `decode_witness_node_body_costP_leaves` (only `rlp_list_to_slices` left), and
  `decode_witness_node_body_costP_final` (`Slices.lean`: every leaf discharged, with
  `freshFoot_rlp_list_to_slices` from the functional RLP specs of `SliceFns.lean`).
-/
