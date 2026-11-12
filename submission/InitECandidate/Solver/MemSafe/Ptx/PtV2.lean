import InitECandidate.Solver.MemSafe.Ptx.PtV1

/-!
# F3h: argument buffers across `process_message_call` (the sender and the coinbase)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem slot_scalar_not_own {t k : Nat} (h : (guestC.ty t).slot k = .scalar) : t < ownBase := by
  by_contra hlt
  have := own_prot (Nat.le_of_not_lt hlt) k
  rw [this] at h
  cases h

section buf
variable {Γe Γ' : Gam} {u t : State σ} {p q : Ptrs}

/-- A heap-range buffer that was writable before the call is still writable after it, and its cells are either scalar cells of
kept objects or cells outside the whole post-call typing. -/
theorem bufcells (hLe : Layout guestC p Γe) (hordp : p.Ordered) (hLq : Layout guestC q Γ') (hordq : q.Ordered)
    (hp : ptrsOf u = some p) (hq : ptrsOf t = some q) (hkeep : KeepH guestC Γe Γ' u t) {b n : Nat}
    (hr : heapBase ≤ b ∧ b + n ≤ heapEnd) (hb : BufOK guestC Γe p b n) :
    ∀ a, Overlap b n a → (∃ o' ∈ keepG Γ', ∃ k, o'.HasSlot k ∧ (guestC.ty o'.ty).slot k = .scalar ∧ a = o'.cell k) ∨
      (¬ InObj Γ' a.toNat ∧ q.Allocated a.toNat) := by
  intro a hov
  obtain ⟨hp1, hsurv, hnew⟩ := hkeep p q hp hq hordp
  have hbase8 : heapBase % 8 = 0 := by decide
  have ha1 : heapBase ≤ a.toNat := by
    obtain ⟨h8, h1, h2⟩ := hov
    omega
  have ha2 : a.toNat < heapEnd := by
    obtain ⟨h8, h1, h2⟩ := hov
    omega
  rcases hb a hov with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
  · left
    have hlt := slot_scalar_not_own hsc
    have hr := cell_range hordp hLe ho hk
    have hreg : (guestC.ty o.ty).region = .heap := by
      have hbd := Struct.obj_bounds hordp hLe ho
      cases hrg : (guestC.ty o.ty).region
      · rfl
      · have h3 := hbd.2.2.2.1 hrg
        have h4 := hr.1
        omega
      · have h3 := hbd.2.2.2.2 hrg
        have h2 := hordp
        unfold Ptrs.Ordered at h2
        have h4 := hr.1
        omega
    obtain ⟨o', ho', hb', ht', hs'⟩ := hsurv o ho hreg
    refine ⟨o', mem_keepG.mpr ⟨ho', by rw [ht']; exact hreg, ?_⟩, k, ?_, by rw [ht']; exact hsc, ?_⟩
    · rw [ht']; intro hs; unfold ScratchOwn at hs; omega
    · unfold Obj.HasSlot at hk ⊢; omega
    · unfold Obj.cell; rw [hb']
  · right
    have hal' := hal
    unfold Ptrs.Allocated at hal'
    have hord2 := hordp
    unfold Ptrs.Ordered at hord2
    have hlt : a.toNat < p.hp := by omega
    refine ⟨fun ⟨o2, ho2, h1, h2⟩ => ?_, ?_⟩
    · have hreg : (guestC.ty o2.ty).region = .heap := by
        have hbd := Struct.obj_bounds hordq hLq ho2
        cases hrg : (guestC.ty o2.ty).region
        · rfl
        · have := hbd.2.2.2.1 hrg
          omega
        · have := hbd.2.2.2.2 hrg
          have h3 := hordq
          unfold Ptrs.Ordered at h3
          omega
      rcases hnew o2 ho2 hreg a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | h
      · exact hni ⟨o0, ho0, h3, h4⟩
      · omega
    · unfold Ptrs.Allocated
      omega

end buf

end InitECandidate.Solver.MemSafe.Ptx
