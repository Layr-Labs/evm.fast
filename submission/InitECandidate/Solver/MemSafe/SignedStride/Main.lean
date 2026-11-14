import InitECandidate.Solver.MemSafe.InitCost.Bound
import InitECandidate.Solver.SourceCost.OrbitChecks
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.SignedStride
variable {σ : Type} {X : Ctx 64}
def Counter (i : MlS) (M : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ M
theorem bounded {i : MlS} {body : ProgHOL 64} {B : Nat} (C D : BitVec 64)
 (hD : 0 < D.toNat) (hM : C.toNat+D.toNat < 2^63)
 (hb : Cost σ X body B) (hstep : Steps σ i (·+D) body) :
 Inv.CostP σ X (Counter i (C.toNat+D.toNat))
  (.while (.cmp .less (lv i) (.const C)) body) ((C.toNat+D.toNat+1)*(B+1)) := by
 let M := C.toNat+D.toNat
 have guard : ∀ s : PanSemStateFiniteExact 64 σ, Counter i M s → CondTrue s (.cmp .less (lv i) (.const C)) →
  ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < C.toNat := by
  intro s ⟨v,hv,hvm⟩ hc
  have hp : v.toNat < 9223372036854775808 := by simp only [M] at hvm;omega
  have hcp : C.toNat < 9223372036854775808 := by omega
  have hcmp := InitBound.cond_less_known_words hv (ev_const (s := s) C) hc
  refine ⟨v,hv,?_⟩
  simpa [wordCmpHOL,holAsmSignedLess,hp,hcp] using hcmp
 have inc : ∀ v : BitVec 64, v.toNat < C.toNat → (v+D).toNat = v.toNat+D.toNat := by
  intro v hv
  rw [BitVec.toNat_add,Nat.mod_eq_of_lt (by omega)]
 refine Inv.costP_while (fun s => M-InitECandidate.Solver.SourceCost.wordOf s i) M ?_ (fun _ => rfl)
  (Inv.costP_of_cost hb) ?_ (fun _ _ _ _ => Nat.sub_le _ _) ?_
 · intro s ⟨v,hv,hvm⟩;exact ⟨v,hv,hvm⟩
 · intro s hs ⟨hp,hc⟩ hg hr
   obtain ⟨v,hv,hvc⟩ := guard s hp hc
   have ha := hstep s v hv hr
   refine ⟨v+D,ha,?_⟩
   rw [inc v hvc]
   omega
 · intro k s hs ⟨hp,hc,hk⟩ hg hr
   obtain ⟨v,hv,hvc⟩ := guard s hp hc
   have ha := hstep s v hv hr
   simp only [InitECandidate.Solver.SourceCost.wordOf,hv] at hk
   change M-InitECandidate.Solver.SourceCost.wordOf (evaluateHOLFiniteState s body).2 i < k
   simp only [InitECandidate.Solver.SourceCost.wordOf,ha]
   rw [inc v hvc]
   simp only [M] at *;omega
#print axioms bounded
end InitECandidate.Solver.MemSafe.SignedStride
