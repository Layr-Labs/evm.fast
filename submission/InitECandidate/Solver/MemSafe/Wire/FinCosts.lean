import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Frames.FinRb

/-!
# Wiring: the callee costs of `finish_child`

`finCosts_guest` discharges `Frames.FinCosts`, the cost hypotheses of `Frames.fin_condCost`, for
the challenge context. It has three parts:

* fifteen all-states costs, read off the kernel-checked cost table with `calleeCost_guest`. Each
  literal below is the table's entry; `decide_cbv` checks it against `Shards.finalState`;
* the conditional cost of `rollback_child_access`, from `Frames.rb_condCost` with the guest
  fold hypotheses (`foldOK_guest`), the htab hook laws (`htabHooks_guest`) and the table cost
  of `htab_del`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The `finish_child` callee bounds in the challenge context: the cost table's literals, and
`rollback_child_access`'s conditional bound with `htab_del`'s table cost. -/
def finBsGuest : Frames.FinBs where
  sr := 6277101735386680783572166704622097299025671267688351006720
  rf := 0
  fh := 0
  cf := 332686391975494080722175061008505121435095600463094745138463
  rb := 2 + 2 * (576460752303423488 * (92233720368547758087 + 2))
  ie := 0
  cr := 1
  sd := 73786976294838206472
  sp := 73786976294838206472
  ios := 6277101735386680783572166704622097300169369400258343207030
  au := 18446744073709551622
  mn := 0
  mc := 73786976294838206468
  scr := 0
  fmr := 0
  pc := 0

/-- The callee costs of `finish_child` hold in the challenge context. -/
theorem finCosts_guest {σ : Type} :
    Frames.FinCosts σ guestCtx Types.guestC (Hooks.guestHooks (σ := σ)) Types.tEV finBsGuest where
  sr := calleeCost_guest (by decide_cbv)
  rf := calleeCost_guest (by decide_cbv)
  fh := calleeCost_guest (by decide_cbv)
  cf := calleeCost_guest (by decide_cbv)
  rb := by
    have h := Frames.rb_condCost (hF := foldOK_guest (σ := σ)) (hT := HtabEntries.htabHooks_guest)
      (calleeCost_guest (B := 92233720368547758087) (by decide_cbv))
    rw [show (2 : Nat) ^ 59 = 576460752303423488 from rfl] at h
    exact h
  ie := calleeCost_guest (by decide_cbv)
  cr := calleeCost_guest (by decide_cbv)
  sd := calleeCost_guest (by decide_cbv)
  sp := calleeCost_guest (by decide_cbv)
  ios := calleeCost_guest (by decide_cbv)
  au := calleeCost_guest (by decide_cbv)
  mn := calleeCost_guest (by decide_cbv)
  mc := calleeCost_guest (by decide_cbv)
  scr := calleeCost_guest (by decide_cbv)
  fmr := calleeCost_guest (by decide_cbv)
  pc := calleeCost_guest (by decide_cbv)

/-- The callee costs of `finish_child` for the final hook family `guestHooksJ`. -/
theorem finCosts_guestJ {σ : Type} :
    Frames.FinCosts σ guestCtx Types.guestC (Hooks.guestHooksJ (σ := σ)) Types.tEV finBsGuest where
  sr := calleeCost_guest (by decide_cbv)
  rf := calleeCost_guest (by decide_cbv)
  fh := calleeCost_guest (by decide_cbv)
  cf := calleeCost_guest (by decide_cbv)
  rb := by
    have h := Frames.rb_condCost (hF := foldOK_guestJ (σ := σ)) (hT := Hooks.htabHooks_guestJ)
      (calleeCost_guest (B := 92233720368547758087) (by decide_cbv))
    rw [show (2 : Nat) ^ 59 = 576460752303423488 from rfl] at h
    exact h
  ie := calleeCost_guest (by decide_cbv)
  cr := calleeCost_guest (by decide_cbv)
  sd := calleeCost_guest (by decide_cbv)
  sp := calleeCost_guest (by decide_cbv)
  ios := calleeCost_guest (by decide_cbv)
  au := calleeCost_guest (by decide_cbv)
  mn := calleeCost_guest (by decide_cbv)
  mc := calleeCost_guest (by decide_cbv)
  scr := calleeCost_guest (by decide_cbv)
  fmr := calleeCost_guest (by decide_cbv)
  pc := calleeCost_guest (by decide_cbv)

/-- The callee costs of `finish_child` for the final hook family `guestHooksJL`. -/
theorem finCosts_guestJL {σ : Type} :
    Frames.FinCosts σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) Types.tEV finBsGuest where
  sr := calleeCost_guest (by decide_cbv)
  rf := calleeCost_guest (by decide_cbv)
  fh := calleeCost_guest (by decide_cbv)
  cf := calleeCost_guest (by decide_cbv)
  rb := by
    have h := Frames.rb_condCost (hF := foldOK_guestJL (σ := σ)) (hT := Hooks.htabHooks_guestJL)
      (calleeCost_guest (B := 92233720368547758087) (by decide_cbv))
    rw [show (2 : Nat) ^ 59 = 576460752303423488 from rfl] at h
    exact h
  ie := calleeCost_guest (by decide_cbv)
  cr := calleeCost_guest (by decide_cbv)
  sd := calleeCost_guest (by decide_cbv)
  sp := calleeCost_guest (by decide_cbv)
  ios := calleeCost_guest (by decide_cbv)
  au := calleeCost_guest (by decide_cbv)
  mn := calleeCost_guest (by decide_cbv)
  mc := calleeCost_guest (by decide_cbv)
  scr := calleeCost_guest (by decide_cbv)
  fmr := calleeCost_guest (by decide_cbv)
  pc := calleeCost_guest (by decide_cbv)

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.finCosts_guest
#print axioms InitECandidate.Solver.MemSafe.Wire.finCosts_guestJ
#print axioms InitECandidate.Solver.MemSafe.Wire.finCosts_guestJL
