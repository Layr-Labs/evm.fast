import InitECandidate.Solver.Spec.Inv.FirstDiff
import InitECandidate.Solver.Spec.GlobalFree

/-!
# `htab_find_leaf`, `memeq`, `htab_first_diff` write no global

`gwFreeB g` checked by `cbv` with the global `g` left symbolic: none of the three bodies assigns a
global, so the check reduces to `true` for every `g` (`findFns_gw`, `memeqFns_gw`, `fdFns_gw`).
Hence the footprint specs `funSpec_find_gw`, `funSpec_memeq_gw`, `funSpec_first_diff_gw`: every
global is unchanged.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

set_option maxHeartbeats 0 in
theorem findFns_gw (g : MlS) : findFns.all (fun e => gwFreeB g (findFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

set_option maxHeartbeats 0 in
theorem memeqFns_gw (g : MlS) : memeqFns.all (fun e => gwFreeB g (memeqFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

set_option maxHeartbeats 0 in
theorem fdFns_gw (g : MlS) : fdFns.all (fun e => gwFreeB g (fdFns.map Prod.fst) e.2.2.1) = true := by
  conv => lhs; cbv

section spec
variable {σ : Type} {X : Ctx 64}

theorem funSpec_find_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_find_leaf") (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g) (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) findFns_valid (findFns_gw g))
    find_mem vs body callee rs hl s hs hloc r hr

theorem funSpec_memeq_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g) (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) memeqFns_valid (memeqFns_gw g))
    memeq_mem vs body callee rs hl s hs hloc r hr

theorem funSpec_first_diff_gw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_first_diff") (fun _ s _ t => ∀ g, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g
  exact funSpec_gw (g := g) (by rw [hC]; exact closed_of_entries (chk := gwFreeB g) fdFns_valid (fdFns_gw g))
    fd_mem vs body callee rs hl s hs hloc r hr

end spec

end InitECandidate.Solver.Spec.Inv
