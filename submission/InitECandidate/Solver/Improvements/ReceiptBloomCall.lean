import InitECandidate.Solver.Improvements.ReceiptSmallHash
import InitECandidate.Solver.MemSafe.Aw.Bloom

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace ReceiptBloomCall
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
open ReceiptSmallHash (ShortArg LengthIs length_set)

variable {σ : Type}

private abbrev tailPrice : Nat := 18446744073709551618

private abbrev afterAllocPrice : Nat := (1 + ReceiptSmallHash.price + 0) + tailPrice

def price : Nat := 1 + 0 + (1 + 2 + afterAllocPrice)

private theorem bind_keeps_length {x f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {n : BitVec 64} {Bf Bk : Nat}
    (hne : x ≠ nm "n") (hf : CalleeCost σ guestCtx f Bf)
    (hk : Inv.CostP σ guestCtx (LengthIs n) k Bk) :
    Inv.CostP σ guestCtx (LengthIs n) (.decCall x .one f args k) (1 + Bf + Bk) := by
  refine Band.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hf)
    (fun _ _ _ _ _ _ => trivial) (funSpec_true f) ?_
  intro s _ hn _ _ _ v st _ _ _
  exact hk.pre fun t _ ht => by
    subst t
    exact length_set hne (s := { st with locals := s.locals }) hn v

private theorem table_cost {f : MlS} {B : Nat} (h : Shards.finalState.1.lookup f = some B) :
    CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

private theorem body_cost {n : BitVec 64} (hsmall : n.toNat ≤ 32) :
    Inv.CostP σ guestCtx (LengthIs n) Aw.abBody price := by
  unfold Aw.abBody price
  refine bind_keeps_length (x := Aw.markN) (Bk := 1 + 2 + afterAllocPrice) (by decide)
    (table_cost (f := nm "heap_mark") (B := 0) (by rfl)) ?_
  refine bind_keeps_length (x := Helpers.hN) (Bk := afterAllocPrice) (by decide)
    (table_cost (f := nm "alloc") (B := 2) (by rfl)) ?_
  have hhash : Inv.CostP σ guestCtx (LengthIs n)
      (callD (nm "keccak256") [lv Aw.entryN, lv Helpers.nN, lv Helpers.hN]) (1 + ReceiptSmallHash.price + 0) := by
    refine Inv.costP_callD ReceiptSmallHash.callee_cost ?_
    intro s _ hn vs hvs callee
    obtain ⟨a, b, c, rfl, _, hb, _⟩ := evs_three_inv' hvs
    have he : ev s (lv Helpers.nN) = some (.val (.word n)) := ev_lv' hn
    rw [he] at hb
    cases hb
    exact ⟨n, rfl, hsmall⟩
  have htail : Cost σ guestCtx
      (.dec Aw.idxN .one (cw 0) (.seq (.while (.cmp .less (lv Aw.idxN) (cw 6)) Aw.abLoop)
        (.seq (callD (nm "heap_release") [lv Aw.markN]) (.return (cw 0)))))
      tailPrice := ThirdSourceAnalyzer.cost_guest_costA (by decide_cbv)
  exact Inv.costP_seq (R := fun _ => True) hhash (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost htail)

theorem callee_cost : Inv.CalleeCostP σ guestCtx (nm "add_to_bloom")
    (fun vs _ => ShortArg 2 vs) price := by
  intro vs body callee rs hlookup s hctx ⟨hloc, n, hn, hsmall⟩ hgood
  rw [guestCtx_code] at hlookup
  obtain ⟨rfl, _, A, B, C, rfl, _, _, hshape, _, _, hc⟩ :=
    Inv.lookupCode_three_full Aw.code_add_to_bloom (by decide) (by decide) (by decide) hlookup
  obtain ⟨n', rfl⟩ := val_of_shapeEq_one hshape
  simp only [argW, InitECandidate.Solver.MemSafe.wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hn
  subst n'
  have hnloc : LengthIs n s := by
    unfold LengthIs
    rw [hloc]
    exact hc
  exact body_cost hsmall s hctx hnloc hgood

#print axioms callee_cost

end ReceiptBloomCall
