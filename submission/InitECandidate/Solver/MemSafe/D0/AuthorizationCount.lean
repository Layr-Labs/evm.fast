import InitECandidate.Solver.MemSafe.D0.Sd9

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

/-- Each authorization occupies 120 bytes of one live heap object. -/
theorem authorization_count_of_array {Γ : Gam} {q : Ptrs} {A : BitVec 64} {N : Nat}
    (hLayout : Layout guestC q Γ) (hArr : Hooks.SubArr Γ A N tAUTH 120) :
    N ≤ 2 ^ 21 := by
  rcases hArr with hZero | ⟨o, hMember, hBase, hType, hSize, hEnd⟩
  · subst N
    exact Nat.zero_le _
  have hLive := (hLayout.1 o hMember).2.2.2.2
  rw [hType] at hLive
  change heapBase ≤ o.lo ∧ o.lo + o.size ≤ q.hp at hLive
  have hStart : heapBase ≤ A.toNat := by
    rw [← hBase]
    exact hLive.1
  unfold heapBase at hStart
  unfold heapEnd at hEnd
  omega

/-- Bound the actual count word read from the transaction environment. -/
theorem authorization_count_at_te {σ : Type} {Γ : Gam} {s : State σ}
    {q : Ptrs} {x : Obj} {tE : Nat}
    (hTE : TeHook σ tE) (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hPtrs : ptrsOf s = some q) (hMember : x ∈ Γ) (hType : x.ty = tE) :
    (rd s.memory (x.base + BitVec.ofNat 64 152)).toNat ≤ 2 ^ 21 := by
  have hArr := (hTE.wf Γ s q hG hPtrs x hMember hType).2
  obtain ⟨q', hPtr', _, hLayout, _⟩ := hG
  exact authorization_count_of_array hLayout hArr

#print axioms authorization_count_of_array
#print axioms authorization_count_at_te

end InitECandidate.Solver.MemSafe.D0
