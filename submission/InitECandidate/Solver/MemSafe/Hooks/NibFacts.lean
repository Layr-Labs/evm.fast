import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000

/-!
# Stage 2b: what `G` gives about nibble slices

* `recTab_nibObj`: the only record entry of type `tNIB r` is `nibObjD r`.
* `nibble_of_G`: at any state satisfying `G`, every byte of an `NIn` slice is a nibble
  (read with the state's byte order). No hypothesis: the `tNIB r` objects' hooks say so.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem recTab_nibObj {be : Bool} {r : Nat} (hr : r < 8) {e : RecD} (he : e ∈ recTab be)
    (ht : e.ty = tNIB r) : e = nibObjD r hr be := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  interval_cases r <;>
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

/-- The word object's hook, at `G`. -/
theorem nibObjW_of_G {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {x : Obj}
    (hx : x ∈ Γ) {r : Nat} (hr : r < 8) (ht : x.ty = tNIB r) : NibObjW r s.be Γ s.memory x := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  have h := recHooks_guestR.get Γ s x (nibObjD r hr s.be) (by
    simp only [recTab, List.mem_cons, List.not_mem_nil, or_false]
    interval_cases r <;> simp [nibObjD]) (by simpa [nibObjD] using ht.symm) (hW x hx)
  exact h.2.2

/-- **Every byte of an `NIn` slice is a nibble** (at any `G` state, with the state's byte order). -/
theorem nibble_of_G {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s)
    {np nl : BitVec 64} (hN : NIn Γ np nl) {j : Nat} (hj : j < nl.toNat) :
    byteAt s.memory s.be (np + BitVec.ofNat 64 j) < 16 := by
  rcases hN with h0 | ⟨hb, hN⟩
  · rw [h0] at hj; simp at hj
  obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := hN j hj
  obtain ⟨hs, hlo, h8, hby⟩ := nibObjW_of_G hG hx hr ht
  have hE := heapEnd_lt
  have e : np + BitVec.ofNat 64 j = x.base + BitVec.ofNat 64 (np.toNat + j - x.lo) := by
    apply BitVec.eq_of_toNat_eq
    have hxb : x.lo = x.base.toNat := rfl
    rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
    rw [Nat.mod_eq_of_lt (by omega : j < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega : np.toNat + j - x.lo < 2 ^ 64)]
    rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    omega
  rw [e]
  exact hby (np.toNat + j - x.lo) (by omega)

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.recTab_nibObj
#print axioms InitECandidate.Solver.MemSafe.Hooks.nibble_of_G
