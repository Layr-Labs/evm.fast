import InitECandidate.Solver.Improvements.FourthConditionalCallCost
import InitECandidate.Solver.MemSafe.Mod.Code
import InitECandidate.Solver.SourceCost.Frame
import InitECandidate.Solver.Spec.Inv.CostI

/-! Transport a bound on a single caller local across the installed straight-line fragments. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace ModexpLocalRules
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type} {X : Ctx 64}

abbrev Local (x : MlS) (F : Option (ValueHOL 64) → Prop) (s : PanSemStateFiniteExact 64 σ) :=
  F (s.locals.lookup x)
def smallNat (n : Nat) (v : Option (ValueHOL 64)) : Prop :=
  ∃ w : BitVec 64, v = some (.val (.word w)) ∧ w.toNat ≤ n
def smallIndex (v : Option (ValueHOL 64)) : Prop :=
  ∃ w : BitVec 64, v = some (.val (.word w)) ∧ (w = -1 ∨ w.toNat ≤ 8247)

theorem seq_keep {x : MlS} {F : Option (ValueHOL 64) → Prop} {p q : ProgHOL 64} {b k : Nat}
    (hp : Cost σ X p b) (hkeep : keepsB x p = true)
    (hq : Inv.CostP σ X (Local x F) q k) :
    Inv.CostP σ X (Local x F) (.seq p q) (b+k) := by
  refine Inv.costP_seq (Inv.costP_of_cost hp) ?_ hq
  intro s _ h _ hn
  have hloc := keepsB_sound (σ := σ) x p hkeep s (Or.inl hn)
  unfold Local at h ⊢
  rwa [hloc]

theorem dec_keep {x n : MlS} {F : Option (ValueHOL 64) → Prop} {sh : ShapeHOL}
    {e : ExpHOL 64} {q : ProgHOL 64} {k : Nat} (hne : n ≠ x)
    (hq : Inv.CostP σ X (Local x F) q k) :
    Inv.CostP σ X (Local x F) (.dec n sh e q) k := by
  refine Inv.costP_dec fun s _ h v _ _ => Inv.CostP.pre hq ?_
  rintro t _ rfl
  simpa [Local, setVarHOLFinite, FUPDATE, hne, Ne.symm hne, HolFiniteMapExact.lookup_update] using h

theorem decCall_keep {x n f : MlS} {F : Option (ValueHOL 64) → Prop} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {q : ProgHOL 64} {b k : Nat} (hne : n ≠ x)
    (hf : CalleeCost σ X f b) (hq : Inv.CostP σ X (Local x F) q k) :
    Inv.CostP σ X (Local x F) (.decCall n sh f args q) (1+b+k) := by
  refine FourthConditionalCallCost.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hf)
    (fun _ _ _ _ _ _ => trivial) (funSpec_true _) ?_
  intro s _ h vs hvs cl v st hR hst hsh
  apply Inv.CostP.pre hq
  rintro t _ rfl
  simpa [Local, setVarHOLFinite, FUPDATE, hne, Ne.symm hne, HolFiniteMapExact.lookup_update] using h

#print axioms seq_keep
#print axioms decCall_keep
end ModexpLocalRules
