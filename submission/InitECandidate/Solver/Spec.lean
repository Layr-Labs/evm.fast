import InitECandidate.Solver.Spec.Hoare
import InitECandidate.Solver.Spec.Value
import InitECandidate.Solver.Spec.Code
import InitECandidate.Solver.Spec.Exec
import InitECandidate.Solver.Spec.U256
import InitECandidate.Solver.Spec.Loop
import InitECandidate.Solver.Spec.ModInv
import InitECandidate.Solver.Spec.CodeBls
import InitECandidate.Solver.Spec.BlsSpec
import InitECandidate.Solver.Spec.BlsInv
import InitECandidate.Solver.Spec.Bridge

/-!
# Function specifications for the source tick-bound analysis

* `Spec/Hoare.lean`: partial-correctness Hoare logic `Hoare σ X P p Q` over
  `evaluateHOLFiniteState` (normal completion, `break`, `continue`, return values), with
  rules for `skip`, local `assign`, `return`, `seq`, `ite`, `dec`, `while` (invariant),
  assigning `call` and `decCall` consuming callee return specs `FunRet`.
* `Spec/Value.lean`: word structs as numbers (`wv`, `wn`, `vnat`, `lnat`), the inline
  one-bit right shift (`ev_shr`, `wn_shrW`: it is `⌊u / 2⌋`), `bitlen`.
* `Spec/Code.lean`, `Spec/CodeBls.lean`: the guest bodies, certified against `guestCode`.
* `Spec/U256.lean`, `Spec/BlsSpec.lean`: `u256_lt`, `u256_sub`, `bls_fp_lt_raw`,
  `bls_fp_sub_raw`, `bls_fp_shr1` return specifications.
* `Spec/Loop.lean`, `Spec/ModInv.lean`, `Spec/BlsInv.lean`: the binary-GCD loop bounds and
  the cost theorems `modinv_bin_cost`, `bls_fp_inv_raw_cost`.
* `Spec/Bridge.lean`: the same from `TblSound`/`EfSound` table entries; `tblSound_insert`.
-/
