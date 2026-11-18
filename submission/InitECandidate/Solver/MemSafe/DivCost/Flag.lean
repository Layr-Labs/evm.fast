import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.SourceCost.LoopExtra.FlagLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Flag
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
noncomputable def measure (q : MlS) (c : ExpHOL width) (s : PanSemStateFiniteExact width σ) : Nat := by
 classical
 exact if CondTrue s c then InitECandidate.Solver.SourceCost.wordOf s q+1 else 0

theorem measure_clock (q : MlS) (c : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
 measure q c (decClockHOLFinite s) = measure q c s := by
 classical
 unfold measure
 rw [condTrue_decClock]
 rfl

theorem decrease {c : ExpHOL width} {body : ProgHOL width} (q : MlS)
 (hnc : NoCont σ body)
 (hpost : ∀ V, HoareN σ (fun s => CondTrue s c ∧ InitECandidate.Solver.SourceCost.wordOf s q=V) body
  (fun t => ¬ CondTrue t c ∨ InitECandidate.Solver.SourceCost.wordOf t q<V))
 (s : PanSemStateFiniteExact width σ) (hc : CondTrue s c)
 (hexit : (evaluateHOLFiniteState s body).1=none ∨ (evaluateHOLFiniteState s body).1=some .continue) :
 measure q c (evaluateHOLFiniteState s body).2 < measure q c s := by
 classical
 have hn : (evaluateHOLFiniteState s body).1=none := by
  rcases hexit with h|h
  · exact h
  · exact False.elim (hnc s h)
 have hp := hpost (InitECandidate.Solver.SourceCost.wordOf s q) s ⟨hc,rfl⟩ hn
 unfold measure
 rw [if_pos hc]
 by_cases ht : CondTrue (evaluateHOLFiniteState s body).2 c
 · rw [if_pos ht]
   rcases hp with h|h
   · exact False.elim (h ht)
   · omega
 · rw [if_neg ht]
   omega

theorem bounded {c : ExpHOL width} {body : ProgHOL width} {B M : Nat} (q : MlS)
 (hb : Cost σ X body B) (hnc : NoCont σ body)
 (hpost : ∀ V, HoareN σ (fun s => CondTrue s c ∧ InitECandidate.Solver.SourceCost.wordOf s q=V) body
  (fun t => ¬ CondTrue t c ∨ InitECandidate.Solver.SourceCost.wordOf t q<V)) :
 Inv.CostP σ X (fun s => InitECandidate.Solver.SourceCost.wordOf s q≤M) (.while c body) ((M+2)*(B+1)) := by
 classical
 have hcost : Inv.CostP σ X (fun s => measure q c s≤M+1) (.while c body) ((M+1+1)*(B+1)) := by
  refine Inv.costP_while (measure q c) (M+1)
   (fun s h => by rw [measure_clock]; exact h) (measure_clock q c)
   (Inv.costP_of_cost hb) ?_ (fun s hs h hc => h) ?_
  · intro s hs ⟨hm,hc⟩ ht hexit
    have hd := decrease q hnc hpost s hc hexit
    omega
  · intro k s hs ⟨hm,hc,hk⟩ ht hexit
    have hd := decrease q hnc hpost s hc hexit
    omega
 apply hcost.pre
 intro s hs hq
 unfold measure
 split <;> omega
#print axioms bounded
end InitECandidate.Solver.MemSafe.DivCost.Flag
