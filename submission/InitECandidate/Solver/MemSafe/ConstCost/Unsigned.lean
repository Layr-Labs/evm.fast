import InitECandidate.Solver.MemSafe.CryptoCost.Unsigned
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.SourceCost
variable {σ : Type} {X : Ctx 64}
def unsignedConstF (c : ExpHOL 64) (body : ProgHOL 64) : Option Nat :=
  match c with
  | .cmp .lower (.var .local i) (.const C) =>
    if decide (C.toNat ≤ 65536) && noContB body && stepsB i true body then some (C.toNat+1) else none
  | _ => none

theorem unsignedConstF_sound {c : ExpHOL 64} {body : ProgHOL 64} {F B : Nat}
    (h : unsignedConstF c body = some F) (hb : Cost σ X body B) :
    Cost σ X (.while c body) (F*(B+1)) := by
  unfold unsignedConstF at h
  split at h
  · rename_i i C
    split at h
    · rename_i hok
      simp only [Bool.and_eq_true,decide_eq_true_eq] at hok
      simp only [Option.some.injEq] at h
      subst h
      apply Inv.cost_of_costP_true
      exact InitECandidate.Solver.MemSafe.CryptoCost.Unsigned.bounded
        (I := fun _ => True) (fun _ _ => trivial) (Inv.costP_of_cost hb)
        (fun _ _ _ _ _ => trivial) (noContB_sound body hok.1.2) (stepsB_sound i true body hok.2)
        (fun _ _ _ => ⟨C,ev_const _,Nat.le_refl _⟩)
    · cases h
  · cases h
#print axioms unsignedConstF_sound
end InitECandidate.Solver.SourceCost
