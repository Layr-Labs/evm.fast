import InitECandidate.Solver.MemSafe.BalCost.KeysStep
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalCost.Loop InitECandidate.Solver.MemSafe.BalCost.Suffix
namespace InitECandidate.Solver.MemSafe.BalCost.Phase2
variable {σ : Type}
theorem alloc_cost6 : CalleeCost σ guestCtx allocName 6 := Wire.calleeCost_guest (by rfl)

theorem alloc64_cost {a : AwE σ} (hK : AwOK a) {k : ProgHOL 64} {B : Nat}
    (hk : Inv.CostP σ guestCtx (AwInv a) k B) :
    Inv.CostP σ guestCtx (AwInv a) (.decCall cTmp .one allocName [cw 64] k)
      (1 + 6 + B) := by
  refine InitECandidate.Solver.Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) alloc_cost6)
    (by intros; trivial) (asp_alloc hK hX_code) ?_
  intro s hs hp vs hvs callee v st hR hctx hsh
  have hpre : ∃ n : BitVec 64, vs = [.val (.word n)] := by
    rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  have hi := (hR (awInv_entry hK hp callee) hpre v rfl).1
  have hi' : AwInv a (setVarHOLFinite cTmp v {st with locals := s.locals}) :=
    awInv_same hK hi rfl rfl rfl rfl
  exact hk.pre (fun t ht heq => by subst t; exact hi')

#print axioms alloc64_cost

theorem phase2_decomp : phase2 =
    .decCall cTmp .one allocName [cw 64] keysStep := by rfl

#print axioms phase2_decomp

theorem costP_prog_congr {X : Ctx 64} {P : PanSemStateFiniteExact 64 σ → Prop}
    {p q : ProgHOL 64} {B : Nat} (heq : p = q)
    (h : Inv.CostP σ X P p B) : Inv.CostP σ X P q B := by
  cases heq
  exact h

def phase2BoundTight : Nat := 3285743502578284304474093661130322651618019499008068133558969155200607

theorem phase2Bound_eq : 1 + 6 + (1 + keysB + afterKeysBound 10485759) = phase2BoundTight := by
  decide_cbv

theorem costP_cast {X : Ctx 64} {P : PanSemStateFiniteExact 64 σ → Prop}
    {p q : ProgHOL 64} {B B' : Nat} (heq : p = q) (hB : B = B')
    (h : Inv.CostP σ X P p B) : Inv.CostP σ X P q B' := by
  cases heq
  cases hB
  exact h

theorem phase2_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) :
    Inv.CostP σ guestCtx (AwInv a) phase2 phase2BoundTight := by
  exact costP_cast phase2_decomp.symm phase2Bound_eq
    (alloc64_cost hK (keysStep_cost hK hc hgw hBA))

#print axioms phase2_cost
end InitECandidate.Solver.MemSafe.BalCost.Phase2
