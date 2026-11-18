import InitECandidate.Solver.Improvements.FourthEncoderTypedLoop
import InitECandidate.Solver.Improvements.FourthEncoderCallerRules

/-! Preserve the captured outer key count jointly with actual above-writer
facts at every declaration/call boundary of the phase-2 cost walk. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderCountRules
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalEnc
open FourthEncoderTypedLoop (lengthExpr preserveLength)
open FourthCapturedSignedLoop (CountEq)
variable {σ : Type} {keys : MlS}

theorem costP_decCallH_count {a : AwE σ} (hK : AwOK a)
    {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop}
    {fs fx : List Fct} {Bf Bk : Nat} {C : BitVec 64}
    (hf : ASp a guestCtx f Pre Ret)
    (hcost : Inv.CalleeCostP σ guestCtx f (fun vs s => AwInv a s ∧ Pre vs s) Bf)
    (hn : rn ≠ keys) (hxf : ∀ f ∈ fs, rn ∉ f.vars)
    (hpre : ∀ s, InCtx s guestCtx → APre a (Hs fs) s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hnew : ∀ (s : State σ) vs v st, Hs fs s.locals → evs s args = some vs → Ret vs v st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → Hs fx (s.locals.update (rn, v)))
    (hk : Inv.CostP σ guestCtx
      (fun s => APre a (Hs (fx ++ fs)) s ∧ CountEq (lengthExpr keys) C s) k Bk) :
    Inv.CostP σ guestCtx (fun s => APre a (Hs fs) s ∧ CountEq (lengthExpr keys) C s)
      (.decCall rn sh f args k) (1 + Bf + Bk) := by
  refine InitECandidate.Solver.Band.costP_decCall hcost ?_ hf ?_
  · intro s hs hp vs hvs callee
    exact ⟨awInv_entry hK hp.1.1 callee, hpre s hs hp.1 vs hvs callee⟩
  · intro s hs hp vs hvs callee v st hR hctx hsh
    have hret := hR (awInv_entry hK hp.1.1 callee) (hpre s hs hp.1 vs hvs callee) v rfl
    refine hk.pre (fun t _ ht => ?_)
    subst t
    exact ⟨⟨awInv_same hK hret.1 rfl rfl rfl rfl,
      hs_append (hnew s vs v st hp.1.2 hvs hret.2 hsh) (hs_upd hxf hp.1.2)⟩,
      preserveLength hn hp.2⟩

theorem costP_decH_count {a : AwE σ} (hK : AwOK a)
    {n : MlS} {e : ExpHOL 64} {body : ProgHOL 64} {fs fx : List Fct}
    {B : Nat} {C : BitVec 64} (hn : n ≠ keys) (hxf : ∀ f ∈ fs, n ∉ f.vars)
    (hnew : ∀ (s : State σ), InCtx s guestCtx → Hs fs s.locals → ∀ v, ev s e = some v →
      shapeEqHOL .one (shapeOfHOLExact v) = true → Hs fx (s.locals.update (n, v)))
    (hk : Inv.CostP σ guestCtx
      (fun s => APre a (Hs (fx ++ fs)) s ∧ CountEq (lengthExpr keys) C s) body B) :
    Inv.CostP σ guestCtx (fun s => APre a (Hs fs) s ∧ CountEq (lengthExpr keys) C s)
      (.dec n .one e body) B := by
  refine Inv.costP_dec (fun s hs hp v hv hsh => ?_)
  refine hk.pre (fun t _ ht => ?_)
  subst t
  exact ⟨⟨awInv_same hK hp.1.1 rfl rfl rfl rfl,
    hs_append (hnew s hs hp.1.2 v hv hsh) (hs_upd hxf hp.1.2)⟩,
    preserveLength (t := s) hn hp.2⟩

#print axioms costP_decCallH_count
#print axioms costP_decH_count
end FourthEncoderCountRules
