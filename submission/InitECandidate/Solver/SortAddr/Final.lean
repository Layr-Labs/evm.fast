import InitECandidate.Solver.SortAddr.Outer
import InitECandidate.Solver.Improvements.BoundedCopyCosts
import InitECandidate.Solver.Improvements.SortCompare32
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge

/-!
# The guest instance: `sort_elems` and `sorted_keys32` prices

With the bounded copy price of `memcpy`, the `32`-tick comparison price of `bal_sort_gt`
and the table prices of `heap_mark` (`0`), `alloc` (`2`) and `heap_release` (`0`), the
merge sort costs at most `sortPrice2` ticks for every call whose element-size argument is
a word in `[1, 4096]`. All installed call sites pass a literal size (`16`, `24`, `32`, `40`),
so they obtain an unconditional cost for the call statement.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev sortPrice2 : Nat := 31640566553250233860388529032217079

theorem sortPrice2_eq : BSort BoundedCopyCosts.copyPrice 32 0 2 0 = sortPrice2 := by decide

def SortPre {σ : Type} (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ E : BitVec 64, vs[2]? = some (.val (.word E)) ∧ 1 ≤ E.toNat ∧ E.toNat ≤ 4096

theorem sort_cost_guest {σ : Type} :
    Inv.CalleeCostP σ guestCtx (nm "sort_elems") SortPre sortPrice2 := by
  have h := sort_costP (σ := σ) guestCtx_code guestCtx_bounded BoundedCopyCosts.memcpy_cost
    SortCompare32.callee_cost
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
  rw [sortPrice2_eq] at h
  exact h

/-- A call with a literal element size in `[1, 4096]`, as a plain cost. -/
theorem sortCall_cost {σ : Type} {a b k t : ExpHOL 64} {E : Nat} (h1 : 1 ≤ E) (h2 : E ≤ 4096) :
    Cost σ guestCtx (.call (some (none, none)) (nm "sort_elems") [a, b, cw E, k, t])
      (1 + sortPrice2) := by
  have h := Inv.cost_of_costP_true (Inv.costP_callD (P := fun _ => True) (sort_cost_guest (σ := σ))
    (args := [a, b, cw E, k, t]) ?_)
  · simpa using h
  intro s _ _ vs hvs callee
  obtain ⟨va, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vc, vs3, rfl, hc, -⟩ := evs_cons_inv hvs2
  rw [ev_cw] at hc
  cases hc
  refine ⟨BitVec.ofNat 64 E, rfl, ?_, ?_⟩ <;> rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    <;> omega

/-! ## `sorted_keys32` -/

def kT : MlS := nm "t"
def kTmp : MlS := nm "tmp"
def kKs : MlS := nm "k"

def keysBody : ProgHOL 64 :=
  .decCall kKs (.comb [.one, .one]) (nm "htab_keys") [lv kT]
    (.seq (.call (some (none, none)) (nm "sort_elems")
        [.rfield 0 (lv kKs), .rfield 1 (lv kKs), cw 32, cw 2, lv kTmp])
      (.return (lv kKs)))

theorem code_keys : guestCode (nm "sorted_keys32") =
    some ([(kT, .one), (kTmp, .one)], keysBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_sorted_keys32 =
      (nm "sorted_keys32", [(kT, .one), (kTmp, .one)], keysBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 431) (by decide)) ⟨_, rfl⟩ h

abbrev keysPrice2 : Nat := 1 + 1361129467683753854037965870464168361993 + ((1 + sortPrice2) + 0)

theorem keys_cost2 {σ : Type} : CalleeCost σ guestCtx (nm "sorted_keys32") keysPrice2 := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_keys] at hc
  have body : actual = keysBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  exact cost_decCall (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (cost_seq (sortCall_cost (by decide) (by decide)) (cost_return _))

#print axioms sort_cost_guest
#print axioms sortCall_cost
#print axioms keys_cost2

end InitECandidate.Solver.SortAddr
