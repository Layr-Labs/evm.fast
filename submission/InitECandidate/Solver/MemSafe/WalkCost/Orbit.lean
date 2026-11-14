import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width]
/-- Only successor values need a bounded injective encoding. The initial value may lie outside the image. -/
theorem iter_closed (N : Nat) (G : BitVec width → BitVec width) (v : BitVec width)
    (Q : BitVec width → Bool) (enc : BitVec width → Nat)
    (hinj : Function.Injective enc)
    (hbound : ∀ u, Q u = true → enc (G u) < N)
    (h : ∀ m ≤ N + 1, Q (iterG G m v) = true) :
    Q (iterG G (N + 2) v) = true := by
  obtain ⟨x, y, hxy, he⟩ := Fintype.exists_ne_map_eq_of_card_lt
    (fun m : Fin (N + 1) => (⟨enc (G (iterG G m v)), hbound _ (h m (by omega))⟩ : Fin N)) (by simp)
  have he0 : enc (G (iterG G x v)) = enc (G (iterG G y v)) := congrArg Fin.val he
  have he1 : iterG G (x.val + 1) v = iterG G (y.val + 1) v := hinj he0
  have hab : x.val + 1 ≠ y.val + 1 := by intro hh; apply hxy; apply Fin.ext; omega
  obtain ⟨a,b,hab,hb,heq⟩ : ∃ a b, a < b ∧ b ≤ N + 1 ∧ iterG G a v = iterG G b v := by
    rcases Nat.lt_or_gt_of_ne hab with hh | hh
    · exact ⟨x.val+1,y.val+1,hh,by omega,he1⟩
    · exact ⟨y.val+1,x.val+1,hh,by omega,he1.symm⟩
  have hk : N + 2 = (N + 2 - b) + b := by omega
  have ee : iterG G ((N + 2 - b) + b) v = iterG G ((N + 2 - b) + a) v := by
    rw [iterG_add, iterG_add, heq]
  rw [hk,ee]
  exact h _ (by omega)

theorem full_step (N : Nat) (Q : BitVec width → Bool) (G : BitVec width → BitVec width)
    (enc : BitVec width → Nat) (hinj : Function.Injective enc)
    (hbound : ∀ u, Q u = true → enc (G u) < N)
    (v : BitVec width) (h : runLenG Q G (N + 2) v = N + 2) :
    runLenG Q G (N + 2) (G v) = N + 2 := by
  have hall := (runLenG_eq_iff Q G _ v).mp h
  rw [runLenG_eq_iff]
  intro m hm
  rw [iterG_succ']
  by_cases hlast : m + 1 < N + 2
  · exact hall (m + 1) hlast
  · have ee : m + 1 = N + 2 := by omega
    rw [ee]
    exact iter_closed N G v Q enc hinj hbound (fun m hm => hall m (by omega))
#print axioms full_step
end InitECandidate.Solver.MemSafe.WalkCost
