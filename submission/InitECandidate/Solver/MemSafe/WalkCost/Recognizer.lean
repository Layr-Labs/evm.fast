import InitECandidate.Solver.MemSafe.WalkCost.Bound
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width] {σ : Type}
def readOutputB (n : MlS) : ProgHOL width → Bool
 | .break => true
 | .assign .local y (.load .one _) => y == n
 | .seq a b => assignsB (fun _ => true) a && readOutputB n b
 | .ite _ a b => readOutputB n a && readOutputB n b
 | .dec y _ _ b => n != y && readOutputB n b
 | _ => false

theorem readOutputB_sound (n : MlS) : ∀ p : ProgHOL width,
 readOutputB n p = true → ReadOutput (σ := σ) n p
 | .break, _ => read_break n
 | .assign .local y (.load .one e), h => by
   have hh : y = n := by simpa only [readOutputB,beq_iff_eq] using h
   subst y;exact read_assign
 | .seq a b,h => by
   simp only [readOutputB,Bool.and_eq_true] at h
   exact read_seq (assignsB_sound _ a h.1) (readOutputB_sound n b h.2)
 | .ite c a b,h => by
   simp only [readOutputB,Bool.and_eq_true] at h
   exact read_ite (readOutputB_sound n a h.1) (readOutputB_sound n b h.2)
 | .dec y sh e b,h => by
   simp only [readOutputB,Bool.and_eq_true] at h
   exact read_dec (by simpa using h.1) (readOutputB_sound n b h.2)
 | .assign k y e,h => by
   cases k <;> cases e <;> try simp_all [readOutputB]
   case local.load sh e =>
     cases sh
     · have hh : y = n := by simpa only [readOutputB,beq_iff_eq] using h
       subst y;exact read_assign
     · simp [readOutputB] at h
     · simp [readOutputB] at h
 | .skip,h | .annot _ _,h | .continue,h | .tick,h | .while _ _,h | .primitive _ _ _,h |
   .store _ _,h | .store32 _ _,h | .storeByte _ _,h | .call _ _ _,h | .decCall _ _ _ _ _,h |
   .extCall _ _ _ _ _,h | .raise _ _,h | .return _,h | .shMemLoad _ _ _ _,h | .shMemStore _ _ _,h => by
   simp [readOutputB] at h
#print axioms readOutputB_sound
end InitECandidate.Solver.MemSafe.WalkCost
