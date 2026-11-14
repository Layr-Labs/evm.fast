import InitECandidate.Solver.MemSafe.ConstCost.Analyzer
import InitECandidate.Solver.MemSafe.CryptoCost.Miller.Code
set_option autoImplicit false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Miller
open InitECandidate.Solver.MemSafe.CryptoCost.Miller
variable {σ : Type}
def restB : Nat := 875886812454495605546055067578401153923882
def tailB : Nat := 431818323622670910444023786820548956283848
def loopB : Nat := 56932642809542214360493579392596075005052395
def stageB : Nat := 57364461133164885270937603179416623961336243
def fullB : Nat := 57364461133164885270937972114298098152368609
theorem loopB_eq : 65 * (restB+1) = loopB := by decide +kernel
theorem stageB_eq : loopB+tailB = stageB := by decide +kernel

theorem cost_cast {P : State σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (hb : B = B') (h : Inv.CostP σ guestCtx P p B) : Inv.CostP σ guestCtx P p B' := by
  cases hb
  exact h

theorem stage_cost : Cost σ guestCtx stage stageB := by
  have hr : Cost σ guestCtx rest restB := InitECandidate.Solver.MemSafe.ConstCost.Analyzer.cost_guest_costA (by cbv)
  have ht : Cost σ guestCtx tail tailB := InitECandidate.Solver.MemSafe.ConstCost.Analyzer.cost_guest_costA (by cbv)
  have hk : Keeps σ (nm "i") rest := keepsB_sound _ _ (by cbv)
  have hl := cost_cast loopB_eq (InitECandidate.Solver.MemSafe.CryptoCost.Countdown.bounded (M := 64) hr hk)
  have hs := cost_cast stageB_eq (Inv.costP_seq (R := fun _ => True) hl
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht))
  apply Inv.cost_of_costP_true
  unfold stage
  refine Inv.costP_dec fun s hs0 hp v hv hsh => ?_
  change some (.val (.word (64 : BitVec 64))) = some v at hv
  cases hv
  exact hs.pre (fun t ht heq => by
    subst t
    simp [InitECandidate.Solver.SourceCost.wordOf, setVarHOLFinite, FUPDATE])

theorem body_cost : Cost σ guestCtx body fullB := by
  have hsub : Cost σ guestCtx parts.2 stageB := by rw [stage_eq]; exact stage_cost
  have h := InitECandidate.Solver.MemSafe.CryptoCost.Stem.sound hsub parts.1 fullB (by cbv)
  simpa only [body_eq] using h

theorem callee_cost : CalleeCost σ guestCtx (nm "bn254_miller_raw") fullB := by
  have hc : ∃ rs, guestCode (nm "bn254_miller_raw") =
      some ((declPair Guest.Software.guestFn_bn254_miller_raw).2.1, body, rs) :=
    declPair_valid (List.getElem_mem (n := 684) (by decide)) ⟨_, rfl⟩
  obtain ⟨rs0, hc⟩ := hc
  intro vs p callee rs hl
  rw [guestCtx_code] at hl
  have he := InitECandidate.Solver.MemSafe.CryptoCost.Analyzer.lookupCode_body hc hl
  subst p
  exact body_cost
#print axioms stage_cost
#print axioms body_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.ConstCost.Miller
