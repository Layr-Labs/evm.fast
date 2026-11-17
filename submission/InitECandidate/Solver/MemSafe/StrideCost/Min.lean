import InitECandidate.Solver.MemSafe.ConstCost.Unsigned
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.StrideCost.Min
variable {σ : Type} {X : Ctx 64}
def cap (c : ExpHOL 64) (b : ProgHOL 64) (F : Nat) : Nat :=
 match unsignedConstF c b with | some G => min F G | none => F
theorem cap_sound {c : ExpHOL 64} {b : ProgHOL 64} {F B : Nat}
 (hb : Cost σ X b B) (hp : Cost σ X (.while c b) (F*(B+1))) :
 Cost σ X (.while c b) (cap c b F*(B+1)) := by
 cases hf : unsignedConstF c b with
 | none => simpa only [cap,hf] using hp
 | some G =>
  have hu := unsignedConstF_sound hf hb
  by_cases hle : F ≤ G
  · simpa only [cap,hf,Nat.min_eq_left hle] using hp
  · have hle' : G ≤ F := by omega
    simpa only [cap,hf,Nat.min_eq_right hle'] using hu
#print axioms cap_sound
end InitECandidate.Solver.MemSafe.StrideCost.Min
