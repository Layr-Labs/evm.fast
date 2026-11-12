import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# Stage 2b: what `G` gives about the transaction environment `te = msg[8]`

These are the three fields of `D0.TeHook` (`D0/Te.lean`), now theorems:

* `te_msg`: every message object (`tMSGh` / `tMSGs`) has, at `msg[8]`, the base of a `tTE` object of `Γ`
  (slot 1 of both message types is `ptr tTE`, and `G` types every field);
* `te_wf`: a `tTE` object satisfies `BufOK guestC Γ p (rd m x.base).toNat 20` (slot 0, `TE_ORIGIN`,
  is `ptr tB24`, a 24-byte scalar block) and `SubArr … tAUTH 120` at `x + 144` / `x + 152`
  (the record entry `teD`).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem msg_slot1 {t : Nat} (h : t = tMSGh ∨ t = tMSGs) : (guestC.ty t).slot 1 = .ptr tTE := by
  rcases h with rfl | rfl <;> rfl

/-- **`msg[8]` is a `tTE` object.** -/
theorem te_msg {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {o : Obj}
    (ho : o ∈ Γ) (ht : o.ty = tMSGh ∨ o.ty = tMSGs) :
    ∃ x ∈ Γ, x.base = rd s.memory (o.base + BitVec.ofNat 64 8) ∧ x.ty = tTE := by
  obtain ⟨p, -, -, hL, hF, -⟩ := hG
  have hsz : (guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  have hmin : 176 ≤ o.size := by
    rcases ht with h | h <;> rw [h] at hsz <;> exact hsz
  have hk := hF o ho 1 (by unfold Obj.HasSlot; omega)
  rw [msg_slot1 ht] at hk
  exact hk

/-- The origin block: slot 0 of `te` points to a 24-byte scalar block, so 20 bytes there are writable. -/
theorem te_origin {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (guestHooksR (σ := σ)) Γ s)
    {x : Obj} (hx : x ∈ Γ) (ht : x.ty = tTE) :
    BufOK guestC Γ p (rd s.memory x.base).toNat 20 := by
  obtain ⟨p0, -, -, hL, hF, -⟩ := hG
  have hsz : (guestC.ty x.ty).minSz ≤ x.size := (hL.1 x hx).2.2.2.1
  have hmin : 200 ≤ x.size := by rw [ht] at hsz; exact hsz
  have hk := hF x hx 0 (by unfold Obj.HasSlot; omega)
  rw [ht] at hk
  have h0 : (guestC.ty tTE).slot 0 = .ptr tB24 := rfl
  rw [h0] at hk
  obtain ⟨b, hb, hbb, hbt⟩ := hk
  have hbsz : (guestC.ty b.ty).minSz ≤ b.size := (hL.1 b hb).2.2.2.1
  have hb24 : 24 ≤ b.size := by rw [hbt] at hbsz; exact hbsz
  have hb8 : b.lo % 8 = 0 := (hL.1 b hb).1
  have hcell : (x.cell 0) = x.base := by unfold Obj.cell; simp
  rw [hcell] at hbb
  intro a ha
  obtain ⟨ha8, ha1, ha2⟩ := ha
  left
  have hbv : (rd s.memory x.base) = b.base := hbb.symm
  rw [hbv] at ha1 ha2
  have hbl : b.lo = b.base.toNat := rfl
  have hE := heapEnd_lt
  have hj : ∃ j, j < 3 ∧ a.toNat = b.lo + 8 * j := by
    refine ⟨(a.toNat - b.lo) / 8, by omega, by omega⟩
  obtain ⟨j, hj3, hja⟩ := hj
  refine ⟨b, hb, j, by unfold Obj.HasSlot; omega, ?_, ?_⟩
  · rw [hbt]; rfl
  · apply BitVec.eq_of_toNat_eq
    rw [cellN (x := b) (k := j) (by have := (hL.1 b hb).2.2.2.2; simp [Region.Live] at this; omega)]
    omega
theorem teD_mem {be : Bool} : teD ∈ recTab be := by simp [recTab]

/-- The authorization array of `te`, from the record hook. -/
theorem te_subarr {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {x : Obj}
    (hx : x ∈ Γ) (ht : x.ty = tTE) :
    SubArr Γ (rd s.memory (x.base + BitVec.ofNat 64 144)) (rd s.memory (x.base + BitVec.ofNat 64 152)).toNat
      tAUTH 120 := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  exact (recHooks_guestR.get Γ s x teD teD_mem ht.symm (hW x hx)).2.2.2.2

/-- **`TeHook.wf`**: a `tTE` object has a writable 20-byte origin block and a `tAUTH` array. -/
theorem te_wf {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {x : Obj}
    (hx : x ∈ Γ) (ht : x.ty = tTE) :
    BufOK guestC Γ p (rd s.memory x.base).toNat 20 ∧
      SubArr Γ (rd s.memory (x.base + BitVec.ofNat 64 144)) (rd s.memory (x.base + BitVec.ofNat 64 152)).toNat
        tAUTH 120 :=
  ⟨te_origin hG hx ht, te_subarr hG hx ht⟩

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.te_msg
#print axioms InitECandidate.Solver.MemSafe.Hooks.te_origin
#print axioms InitECandidate.Solver.MemSafe.Hooks.te_subarr
#print axioms InitECandidate.Solver.MemSafe.Hooks.te_wf
