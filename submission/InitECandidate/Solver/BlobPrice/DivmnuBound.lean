import InitECandidate.Solver.BlobPrice.DivideOuter
import InitECandidate.Solver.Spec.Mpt.Fill.Cost
import InitECandidate.Solver.MemSafe.Entry

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace DivmnuBound
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe (lookupCode_gen)
open AcceptedCostOverrideRules
variable {σ : Type}
abbrev lengths (s : PanSemStateFiniteExact 64 σ) :=
  ∃ m n : BitVec 64, s.locals.lookup (nm "m") = some (.val (.word m)) ∧
    s.locals.lookup (nm "n") = some (.val (.word n)) ∧ m.toNat ≤ 8 ∧ n.toNat ≤ m.toNat

private def tbl : TblState := ([(nm "div64by32", 32)],[],[])
private theorem sound : StateSound σ guestCtx tbl :=
  overrideCost_sound stateSound_empty Div64Bound.callee
private theorem price {p : ProgHOL 64} {b : Nat} (h : CompactCostReplay.price tbl p = some b) :
    Cost σ guestCtx p b := CompactCostReplay.program_cost sound h

private theorem prior {p k : ProgHOL 64} {b c : Nat} (h : Cost σ guestCtx p b)
    (hm : keepsB (nm "m") p = true) (hn : keepsB (nm "n") p = true)
    (hk : Inv.CostP σ guestCtx lengths k c) : Inv.CostP σ guestCtx lengths (.seq p k) (b+c) := by
  apply Inv.costP_seq (Inv.costP_of_cost h) _ hk
  intro s hs hlen _ hnone
  obtain ⟨m,n,hM,hN,hm8,hnm⟩ := hlen
  exact ⟨m,n,(keepsB_sound _ _ hm s (Or.inl hnone)).trans hM,
      (keepsB_sound _ _ hn s (Or.inl hnone)).trans hN,hm8,hnm⟩

private theorem decPrior {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {b : Nat}
    (hm : rn ≠ nm "m") (hn : rn ≠ nm "n") (hk : Inv.CostP σ guestCtx lengths k b) :
    Inv.CostP σ guestCtx lengths (.dec rn .one e k) b := by
  apply Inv.costP_dec
  rintro s _ ⟨m,n,hM,hN,h8,hLe⟩ v _ _
  apply hk.pre
  rintro t _ rfl
  exact ⟨m,n,(lk_set_ne _ _ hm).trans hM,(lk_set_ne _ _ hn).trans hN,h8,hLe⟩

private theorem core {tail : ProgHOL 64} {b : Nat} (ht : Cost σ guestCtx tail b) :
    Inv.CostP σ guestCtx lengths (.seq (.assign .local (nm "j")
        (.op .add [(.op .sub [lv (nm "m"),lv (nm "n")]), cw 1])) (.seq dvL3 tail))
        (0+(9*(DivideOuter.bodyPrice+1)+b)) := by
  apply Inv.costP_seq (Inv.costP_of_cost (cost_assign _ _ _)) _
    (Inv.costP_seq (R := fun _ => True) DivideOuter.loopCost
      (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht))
  apply hoare_assign (P := lengths) (Q := fun r t => r = none → wordOf t (nm "j") ≤ 9)
  rintro s _ ⟨m,n,hm,hn,h8,hle⟩ v hv _ _
  rw [ev_add2 (ev_sub2 (ev_lw hm) (ev_lw hn)) (ev_cw _ 1)] at hv
  cases hv
  simpa [wordOf,setVarHOLFinite,FUPDATE,HolFiniteMapExact.lookup_update] using DivideOuter.quotientStart h8 hle

private abbrev q := 2^64+1
private abbrev kB := 0+(q+(0+(0+(0+(q+(0+(0+(9*(DivideOuter.bodyPrice+1)+(q+q)))))))))
private theorem kCost : Inv.CostP σ guestCtx lengths dvK kB := by
  unfold dvK
  refine prior (cost_assign _ _ _) (by decide_cbv) (by decide_cbv) ?_
  refine prior (price (b := q) (by decide_cbv)) (by decide_cbv) (by decide_cbv) ?_
  refine prior (cost_store _ _) (by decide_cbv) (by decide_cbv) ?_
  refine prior (cost_store _ _) (by decide_cbv) (by decide_cbv) ?_
  refine prior (cost_assign _ _ _) (by decide_cbv) (by decide_cbv) ?_
  refine prior (price (b := q) (by decide_cbv)) (by decide_cbv) (by decide_cbv) ?_
  refine prior (cost_store _ _) (by decide_cbv) (by decide_cbv) ?_
  refine decPrior (by decide) (by decide) (decPrior (by decide) (by decide) ?_)
  exact core (price (b := q+q) (by decide_cbv))

private abbrev whole := max (q*34) 0 + (1+0+kB)
theorem body : Inv.CostP σ guestCtx lengths divBody whole := by
  unfold divBody
  refine decPrior (by decide) (by decide) (decPrior (by decide) (by decide) ?_)
  refine prior (price (b := max (q*34) 0) (by decide_cbv)) (by decide_cbv) (by decide_cbv) ?_
  refine decPrior (by decide) (by decide) (decPrior (by decide) (by decide) ?_)
  apply Mpt.costP_decCall (CompactCostReplay.accepted (f := nm "nlz32") (B := 0) (by decide_cbv)) (funSpec_true _)
  rintro s _ ⟨m,n,hM,hN,h8,hLe⟩ vs _ callee v st _ _
  apply kCost.pre
  rintro t _ rfl
  exact ⟨m,n,(lk_set_ne _ _ (by decide)).trans hM,(lk_set_ne _ _ (by decide)).trans hN,h8,hLe⟩

abbrev input (vs : List (ValueHOL 64)) :=
  ∃ (q r u v : ValueHOL 64) (m n : BitVec 64), vs=[q,r,u,.val (.word m),v,.val (.word n)] ∧
    m.toNat ≤ 8 ∧ n.toNat ≤ m.toNat
theorem callee : Inv.CalleeCostP σ guestCtx (nm "divmnu") (fun vs _ => input vs) 1199038364791120855412 := by
  intro vs actual store rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl,_,_,bind⟩ := lookupCode_gen code_divmnu hl
  apply body.pre
  rintro s _ ⟨hstore,q,r,u,v,m,n,rfl,h8,hl⟩
  refine ⟨m,n,?_,?_,h8,hl⟩
  · rw [hstore]; exact (bind 3 (by decide) (by change 3 < 6; decide)).1
  · rw [hstore]; exact (bind 5 (by decide) (by change 5 < 6; decide)).1
#print axioms callee
end DivmnuBound
