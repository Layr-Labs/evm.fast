import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.MemSafe.BalEnc.Hs
import InitECandidate.Solver.Band.Rules

/-!
Conditional costs at the actual typed above-writer call boundary. This is the
cost analogue of `BalEnc.hoareG_decCallH`: the memory/return relation is the
accepted ASp, and the clock bound is a conditional callee theorem. No arbitrary
memory-state cost is inferred from a typed encoder cost.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderCallerRules
open InitECandidate.Solver.MemSafe.Helpers (Locals)
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.BalEnc

variable {σ : Type} {X : Ctx 64}

theorem costP_decCallH {a : AwE σ} (hK : AwOK a)
    {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop}
    {fs fx : List Fct} {Bf Bk : Nat}
    (hf : ASp a X f Pre Ret)
    (hcost : Inv.CalleeCostP σ X f (fun vs s => AwInv a s ∧ Pre vs s) Bf)
    (hxf : ∀ fact ∈ fs, rn ∉ fact.vars)
    (hpre : ∀ s, InCtx s X → APre a (Hs fs) s → ∀ vs,
      evs s args = some vs → ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hnew : ∀ (s : State σ) vs v st, Hs fs s.locals → evs s args = some vs →
      Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hs fx (s.locals.update (rn, v)))
    (hk : Inv.CostP σ X (APre a (Hs (fx ++ fs))) k Bk) :
    Inv.CostP σ X (APre a (Hs fs)) (.decCall rn sh f args k) (1 + Bf + Bk) := by
  refine InitECandidate.Solver.Band.costP_decCall hcost ?_ hf ?_
  · intro s hs hp vs hvs callee
    exact ⟨awInv_entry hK hp.1 callee, hpre s hs hp vs hvs callee⟩
  · intro s hs hp vs hvs callee v st hR hctx hsh
    have hret := hR (awInv_entry hK hp.1 callee) (hpre s hs hp vs hvs callee) v rfl
    refine hk.pre (fun t _ ht => ?_)
    subst t
    exact ⟨awInv_same hK hret.1 rfl rfl rfl rfl,
      hs_append (hnew s vs v st hp.2 hvs hret.2 hsh) (hs_upd hxf hp.2)⟩

/-- A typed statement's accepted HoareG post supplies its invariant on normal
completion. This is the only part needed for sequential conditional costs. -/
theorem costP_seqA {a : AwE σ} {L L' : Locals → Prop} {p q : ProgHOL 64}
    {Ret : ValueHOL 64 → Prop} {Bp Bq : Nat}
    (hp : Inv.CostP σ X (APre a L) p Bp)
    (hmem : HoareG σ X (APre a L) p (AQ a L' Ret))
    (hq : Inv.CostP σ X (APre a L') q Bq) :
    Inv.CostP σ X (APre a L) (.seq p q) (Bp + Bq) := by
  refine Inv.costP_seq hp ?_ hq
  intro s hs hP ht hr
  have h := Frames.hoare_of_hoareG hmem s hs hP ht
  exact h.2.1 hr

#print axioms costP_decCallH
#print axioms costP_seqA
end FourthEncoderCallerRules
