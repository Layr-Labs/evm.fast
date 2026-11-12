import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.MemSafe.Helpers.Divmnu

set_option autoImplicit false

/-!
# The side conditions for the guest's type table `Types.guestC`

* `tagSlots_guestC : TagSlots guestC` (from `cfgOK_guest`).
* `scalarGlob_u256_ws : ScalarGlob guestC (nm "u256_ws") 640` (the workspace is a 640-byte
  scalar blob), for `sumSpec_divmnu`, `sumSpec_digits_divmod` and the `summ_u256_*`.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types

theorem tagSlots_guestC : TagSlots guestC := fun t tag h => by
  rw [cfgOK_guest t tag h]; decide

theorem scalarGlob_u256_ws : ScalarGlob guestC wsN 640 :=
  ⟨tB640, gt_u256_ws, fun _ => by rw [ty_B640]; rfl, by rw [ty_B640]; decide⟩

theorem scalarGlob_u256_ws_208 : ScalarGlob guestC wsN 208 :=
  ⟨tB640, gt_u256_ws, fun _ => by rw [ty_B640]; rfl, by rw [ty_B640]; decide⟩

end InitECandidate.Solver.MemSafe.Helpers
