import InitECandidate.Solver.Spec.Mpt.Decode.Body
import InitECandidate.Solver.Spec.Mpt.Decode.Resolve
import InitECandidate.Solver.Spec.Mpt.Decode.Final

/-!
# The tick bound of `_decode_witness_node_body` (`Spec.Mpt.Dec`)

* `decode_witness_node_body_costP` (`Decode/Body.lean`): the conditional table entry under
  `DecPre W`, given `FreshFoot` of `_decode_step`, `_resolve_step` and `rlp_item`.
* `decode_witness_node_body_costP'` (`Decode/Resolve.lean`): the same, with `_resolve_step`'s
  footprint proved (`freshFoot_resolve_step`) from those of `rlp_item` and `nodedb_lookup`.
* `decode_witness_node_body_costP_leaf` (`Decode/Final.lean`): the same, with `_decode_step`'s
  footprint proved too (`freshFoot_decode_step`, `Decode/StepMain.lean`); only leaf facts remain.
* Proved callee footprints: `freshFoot_node_new_ext`, `freshFoot_node_new_hashed`,
  `freshFoot_node_new_leaf`, `freshFoot_resolve_step`, `freshFoot_decode_step`.
-/
