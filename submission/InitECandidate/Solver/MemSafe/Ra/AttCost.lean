import InitECandidate.Solver.MemSafe.Ra.AttKit2
import InitECandidate.Solver.MemSafe.IvvhCost.Main

/-!
# `run_attempt`: the table costs of its unconditional callees
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

def cVh : Nat := 91620576979020903742813488908510665408238059996148672959293467
def cHh : Nat := 680564733841876929546186873330292752671
def cVhd : Nat := 31385508676933403838575042030531824504970786082088009335422
def cCgl : Nat := 18446744073709551620
def cNdb : Nat := 18831305206160042319070239990219014792751119278991753609428
def cIvvh : Nat := 932481128055966938727700172878097020667918267806369533006913880158373442615633953127788

theorem cc_vh : CalleeCost σ guestCtx (nm "validate_headers") cVh := Wire.calleeCost_guest (by rfl)
theorem cc_hh : CalleeCost σ guestCtx (nm "header_hash") cHh := Wire.calleeCost_guest (by rfl)
theorem cc_vhd : CalleeCost σ guestCtx (nm "validate_header") cVhd := Wire.calleeCost_guest (by rfl)
theorem cc_cgl : CalleeCost σ guestCtx (nm "check_gas_limit") cCgl := Wire.calleeCost_guest (by rfl)
theorem cc_ndb : CalleeCost σ guestCtx (nm "nodedb_build") cNdb := Wire.calleeCost_guest (by rfl)
theorem cc_ivvh : CalleeCost σ guestCtx (nm "is_valid_versioned_hashes") 1093625362980336675717454084738337606401068794996552958490750410787397221396093237444694864707157356 := Wire.calleeCost_guest (by rfl)

end InitECandidate.Solver.MemSafe.Att

namespace InitECandidate.Solver.MemSafe.Att
 theorem cc_ivvh_cond {σ : Type} : InitECandidate.Solver.Spec.Inv.CalleeCostP σ
     InitECandidate.Solver.SourceCost.guestCtx (InitECandidate.Solver.Spec.nm "is_valid_versioned_hashes")
     InitECandidate.Solver.MemSafe.IvvhCost.Pre cIvvh :=
   InitECandidate.Solver.MemSafe.IvvhCost.callee_cost
end InitECandidate.Solver.MemSafe.Att
