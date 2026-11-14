import InitECandidate.Solver.MemSafe.ConstCost.Analyzer
import InitECandidate.Solver.MemSafe.CryptoCost.Ecp.Code
import InitECandidate.Solver.MemSafe.CryptoCost.Analyzer
import InitECandidate.Solver.Band.Rules
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Ecp
open InitECandidate.Solver.MemSafe.CryptoCost.Ecp
variable {σ : Type}
def bodyB : Nat := 321566836740286848183532374609300264338911
def tailB : Nat := 137438953510
def loopB : Nat := 82642677042253719983167820274590167935100384
def afterB : Nat := 82642677042253719983167820274590305374053894
def stageB : Nat := 82642677042253719983167820274590305374053899
def fullB : Nat := 82642677042253719983168115422495484726879786
def CountN (N : BitVec 64) (s : State σ) : Prop := s.locals.lookup (nm "len") = some (.val (.word N))
theorem loopB_eq : 257*(bodyB+1) = loopB := by decide +kernel
theorem afterB_eq : loopB+tailB = afterB := by decide +kernel
theorem stageB_eq : 1+4+afterB = stageB := by decide +kernel
theorem cost_cast {P : State σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (hb : B = B') (h : Inv.CostP σ guestCtx P p B) : Inv.CostP σ guestCtx P p B' := by
  cases hb
  exact h

theorem loop_cost {N : BitVec 64} (hN : N.toNat ≤ 256) :
    Inv.CostP σ guestCtx (CountN N)
      (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "len"))) loopBody) loopB := by
  have hb : Cost σ guestCtx loopBody bodyB := InitECandidate.Solver.MemSafe.ConstCost.Analyzer.cost_guest_costA (by cbv)
  have hk : Keeps σ (nm "len") loopBody := keepsB_sound _ _ (by cbv)
  refine cost_cast loopB_eq (InitECandidate.Solver.MemSafe.CryptoCost.Unsigned.bounded (M := 256) (fun s h => h)
    (Inv.costP_of_cost hb) ?_ (noContB_sound _ (by cbv))
    (stepsB_sound (nm "i") true _ (by cbv)) (fun s hs hi => ⟨N,hi,hN⟩))
  intro s hs ⟨hi,hc⟩ ht hr
  change (evaluateHOLFiniteState s loopBody).2.locals.lookup (nm "len") = some (.val (.word N))
  rw [hk s (Or.inl hr)]
  exact hi

theorem after_cost {N : BitVec 64} (hN : N.toNat ≤ 256) :
    Inv.CostP σ guestCtx (CountN N) afterLen afterB := by
  have ht : Cost σ guestCtx tail tailB := InitECandidate.Solver.MemSafe.ConstCost.Analyzer.cost_guest_costA (by cbv)
  have hs := cost_cast afterB_eq (Inv.costP_seq (R := fun _ => True) (loop_cost hN)
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht))
  unfold afterLen
  refine Inv.costP_dec fun s hs0 hp v hv hsh => ?_
  change some (.val (.word (0 : BitVec 64))) = some v at hv
  cases hv
  exact hs.pre (fun t ht heq => by
    subst t
    simpa (config := { decide := true }) [CountN,setVarHOLFinite,FUPDATE] using hp)

theorem stage_cost : Cost σ guestCtx stage stageB := by
  have hub : CalleeCost σ guestCtx (nm "u256_bit_length") 4 :=
    (Shards.finalState_sound_guest (σ := σ)).1 _ _ (by cbv)
  apply Inv.cost_of_costP_true
  unfold stage
  refine cost_cast stageB_eq (InitECandidate.Solver.Band.costP_decCall
    (P := fun _ => True) (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) hub)
    (fun _ _ _ _ _ _ => trivial)
    (WaveHelpers.funSpec_u256_bit_length_le guestCtx_code) ?_)
  intro s hs hp vs hvs callee v st hR hst hsh
  obtain ⟨N,rfl,hN⟩ := hR v rfl
  exact (after_cost hN).pre (fun t ht heq => by
    subst t
    simp [CountN,setVarHOLFinite,FUPDATE])

theorem body_cost : Cost σ guestCtx body fullB := by
  have hsub : Cost σ guestCtx parts.2 stageB := by rw [stage_eq]; exact stage_cost
  have h := InitECandidate.Solver.MemSafe.CryptoCost.Stem.sound hsub parts.1 fullB (by cbv)
  simpa only [body_eq] using h

theorem callee_cost : CalleeCost σ guestCtx (nm "ecp_mul") fullB := by
  have hc : ∃ rs, guestCode (nm "ecp_mul") =
      some ((declPair Guest.Software.guestFn_ecp_mul).2.1,body,rs) :=
    declPair_valid (List.getElem_mem (n := 675) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitECandidate.Solver.MemSafe.CryptoCost.Analyzer.callee_of_body hc body_cost
#print axioms loop_cost
#print axioms after_cost
#print axioms stage_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.ConstCost.Ecp
