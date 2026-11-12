import InitECandidate.Solver.MemSafe.Hooks.RecTx

set_option autoImplicit false

/-!
# `TxLen` from the component bounds (pure arithmetic)

The decoded transaction has `DATA_N <= D`, `accSum <= 72 * A` (A = access-list payload length),
`AUTH_N <= U`, `BH_N <= BL`, where `D, A, U, BL` are the lengths of distinct fields of the top
list (so `D + A + U + BL <= len`, from `freshFoot_rlp_list_to_slices_tile`) and `len < 2^32`.
Then `TxLen <= 655 + 147 * len < 2^63`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe

theorem txLen_of_parts (m : Mem) (o : Obj) {len D A U BL : Nat}
    (hD : (txF m o 25).toNat ≤ D)
    (hacc : accSum m (txF m o 26) (txF m o 27).toNat ≤ 72 * A)
    (hU : (txF m o 35).toNat ≤ U) (hB : (txF m o 33).toNat ≤ BL)
    (hsum : D + A + U + BL ≤ len) (hlen : len < 2 ^ 32) : TxLen m o := by
  unfold TxLen
  have : (2 : Nat) ^ 32 * 147 + 655 < 2 ^ 63 := by decide
  exact ⟨by omega, by omega⟩

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.txLen_of_parts
