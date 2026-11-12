import InitECandidate.Solver.MemSafe.Frames.PmRoot
import InitECandidate.Solver.MemSafe.Frames.ProCode

/-!
# `recover_authority`: the code (sonnet-ra)

Copied from `D0/Code.lean` (guest AST index 572).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

def raBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_recover_authority).2.2.1

theorem entry_ra : fnEntry Guest.Software.guestFn_recover_authority =
    (nm "recover_authority", [(nm "auth", .one)], raBody, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold raBody; cbv
  all_goals rfl

theorem code_ra : guestCode (nm "recover_authority") =
    some ([(nm "auth", .one)], raBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 572) (by decide)) ⟨_, rfl⟩
    entry_ra

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.code_ra
