import InitECandidate.Solver.Spec.Inv.HtabNewCode

/-!
# The table `htab_new` builds (pure part)

`newMem` is the memory after `htab_new`'s eleven header stores; `newMem_wf`: with the header
at `T` followed by the key, node and order arrays laid out back to back below `HEAP_END`
(what four `alloc` calls produce), the new table is well formed and empty, and its region is
the allocated block.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem hdr_eq_iff {T : BitVec 64} (ht : T.toNat + 88 ≤ 2 ^ 64) {a b : Nat} (ha : a < 88)
    (hb : b < 88) : (T + BitVec.ofNat 64 a = T + BitVec.ofNat 64 b) ↔ a = b := by
  constructor
  · intro h
    have := congrArg BitVec.toNat h
    rw [hA_toNat ht ha, hA_toNat ht hb] at this
    omega
  · intro h; rw [h]

def newMem (m : Mem) (T KL S CP C K N O : BitVec 64) : Mem :=
  upd (upd (upd (upd (upd (upd (upd (upd (upd (upd (upd m
    (T + BitVec.ofNat 64 0) KL) (T + BitVec.ofNat 64 8) S) (T + BitVec.ofNat 64 16) CP)
    (T + BitVec.ofNat 64 24) 0) (T + BitVec.ofNat 64 32) K) (T + BitVec.ofNat 64 40) N)
    (T + BitVec.ofNat 64 48) O) (T + BitVec.ofNat 64 56) 0) (T + BitVec.ofNat 64 64) 1)
    (T + BitVec.ofNat 64 72) 0) (T + BitVec.ofNat 64 80) C

section
variable {m : Mem} {T KL S CP C K N O : BitVec 64} (ht : T.toNat + 88 ≤ 2 ^ 64)
include ht

theorem newMem_hdr (k : Nat) (hk : k < 88) :
    hdr (newMem m T KL S CP C K N O) T k =
      if k = 80 then C else if k = 72 then 0 else if k = 64 then 1 else if k = 56 then 0
      else if k = 48 then O else if k = 40 then N else if k = 32 then K else if k = 24 then 0
      else if k = 16 then CP else if k = 8 then S else if k = 0 then KL else hdr m T k := by
  unfold hdr newMem
  simp only [rd_upd, hdr_eq_iff ht hk (by decide : (80 : Nat) < 88), hdr_eq_iff ht hk (by decide : (72 : Nat) < 88),
    hdr_eq_iff ht hk (by decide : (64 : Nat) < 88), hdr_eq_iff ht hk (by decide : (56 : Nat) < 88),
    hdr_eq_iff ht hk (by decide : (48 : Nat) < 88), hdr_eq_iff ht hk (by decide : (40 : Nat) < 88),
    hdr_eq_iff ht hk (by decide : (32 : Nat) < 88), hdr_eq_iff ht hk (by decide : (24 : Nat) < 88),
    hdr_eq_iff ht hk (by decide : (16 : Nat) < 88), hdr_eq_iff ht hk (by decide : (8 : Nat) < 88),
    hdr_eq_iff ht hk (by decide : (0 : Nat) < 88)]

/-- Cells outside the header are untouched. -/
theorem newMem_out {a : BitVec 64} (ha : ¬ InR a T 88) : newMem m T KL S CP C K N O a = m a := by
  have hne : ∀ k : Nat, k < 88 → a ≠ T + BitVec.ofNat 64 k := by
    intro k hk e
    apply ha
    rw [e]; unfold InR; rw [hA_toNat ht hk]; omega
  unfold newMem
  rw [upd_ne (hne 80 (by decide)), upd_ne (hne 72 (by decide)), upd_ne (hne 64 (by decide)),
    upd_ne (hne 56 (by decide)), upd_ne (hne 48 (by decide)), upd_ne (hne 40 (by decide)),
    upd_ne (hne 32 (by decide)), upd_ne (hne 24 (by decide)), upd_ne (hne 16 (by decide)),
    upd_ne (hne 8 (by decide)), upd_ne (hne 0 (by decide))]

end

/-- **The new table is well formed, empty, and owns the allocated block `[T, E)`.** -/
theorem newMem_wf {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {T KL S CP C K N O : BitVec 64}
    {E : Nat} (h8 : T.toNat % 8 = 0) (hK : K.toNat = T.toNat + 88)
    (hN : N.toNat = K.toNat + S.toNat * (C.toNat + 1)) (hO : O.toNat = N.toNat + 32 * (C.toNat + 1))
    (hE : E = O.toNat + 8 * (C.toNat + 1)) (hE' : E ≤ heapEnd) (hS8 : S.toNat % 8 = 0)
    (hKL : KL.toNat ≤ S.toNat) (hC : 2 ≤ C.toNat) (hSb : S.toNat ≤ 2 ^ 20) (hCb : C.toNat ≤ 2 ^ 32) :
    Sep (newMem m T KL S CP C K N O) T ∧
      Shape (newMem m T KL S CP C K N O) d be T (fun _ => False) ∧
      Extra (newMem m T KL S CP C K N O) d be T (fun _ => False) ∧
      CNT (newMem m T KL S CP C K N O) T = 0 ∧ hdr (newMem m T KL S CP C K N O) T 0 = KL ∧
      (∀ a, TableRegion (newMem m T KL S CP C K N O) T a → InR a T (E - T.toNat)) := by
  have hhe : heapEnd = 2952790016 := rfl
  have ht : T.toNat + 88 ≤ 2 ^ 64 := by omega
  have H := fun k hk => newMem_hdr (m := m) (KL := KL) (S := S) (CP := CP) (C := C) (K := K)
    (N := N) (O := O) ht k hk
  have e0 := H 0 (by decide); have e8 := H 8 (by decide); have e24 := H 24 (by decide)
  have e32 := H 32 (by decide); have e40 := H 40 (by decide); have e48 := H 48 (by decide)
  have e56 := H 56 (by decide); have e64 := H 64 (by decide); have e72 := H 72 (by decide)
  have e80 := H 80 (by decide)
  simp only [if_true, if_false, show ¬ ((0 : Nat) = 80) by decide] at e0 e8 e24 e32 e40 e48 e56 e64 e72 e80
  simp (config := {decide := true}) only [if_true, if_false] at e0 e8 e24 e32 e40 e48 e56 e64 e72 e80
  have hcap : CAP (newMem m T KL S CP C K N O) T = C.toNat := by unfold CAP; rw [e80]
  have hcnt : CNT (newMem m T KL S CP C K N O) T = 0 := by unfold CNT; rw [e24]; rfl
  refine ⟨?_, ⟨?_, fun _ h => h.elim, fun _ _ h => h, fun h => absurd e56 h, fun _ h => h.elim,
    fun _ h => h.elim, fun j hj => by rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _),
    fun _ h => h.elim, fun j hj => by rw [hcnt] at hj; exact absurd hj (Nat.not_lt_zero _),
    fun _ h => h.elim⟩, ⟨?_, ?_, fun _ h => h.elim, ⟨[], ?_, List.nodup_nil, fun _ h => (by cases h),
    ?_⟩, fun _ h => h.elim, ?_⟩, hcnt, e0, ?_⟩
  · have hSC : S.toNat * (C.toNat + 1) % 8 = 0 := by rw [Nat.mul_mod, hS8]; simp
    unfold Sep
    rw [e0, e8, e32, e40, e48, hcap]
    unfold Disj
    refine ⟨h8, by omega, by omega, by omega, hS8, hKL, ht, by omega, by omega, by omega,
      by omega, by omega, by omega, by omega, by omega, by omega⟩
  · rw [hcnt, hcap]; omega
  · unfold NX; rw [e64]; decide
  · unfold NX; rw [e64, hcap]; simp
  · show hdr _ T 72 = 0; exact e72
  · unfold NX; rw [hcnt, e64]; decide
  · rw [e8, hcap]; exact ⟨hSb, by omega, hCb⟩
  · intro a ha
    unfold TableRegion InR at ha
    rw [e40, e48, e32, e8, hcap] at ha
    unfold InR
    rcases ha with h | h | h | h <;> omega

end InitECandidate.Solver.Spec.Inv
