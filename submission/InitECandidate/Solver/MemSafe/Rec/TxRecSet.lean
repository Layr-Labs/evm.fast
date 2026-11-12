import InitECandidate.Solver.MemSafe.Rec.TxRecE2

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the stores that establish the facts

`tf_set25/26/27/33/34/35`: a one-word store into a fact slot (the new `TF`), and the `ET2` versions.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem cl_other {mem mem' : Mem} {Ar : BitVec 64} {f0 f : Nat}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * f0) → mem' y = mem y) (hne : f ≠ f0) (h50 : f ≤ 50)
    (h0 : f0 ≤ 50) : cl Ar mem' f = cl Ar mem f := by
  unfold cl
  refine rd_congr (hmod _ fun he => hne ?_)
  have := ofN_inj Ar (a := 8 * f) (b := 8 * f0) (by omega) (by omega) he
  omega

theorem mod_one {mem mem' : Mem} {Ar : BitVec 64} {f0 : Nat}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * f0) → mem' y = mem y) :
    ModifiesOnly (fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (f0 + i))) mem mem' := by
  intro y hy
  exact hmod y (fun he => hy ⟨0, by norm_num, by simpa using he⟩)

theorem tf_set25 {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {x : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 25) → mem' y = mem y)
    (hx : rd mem' (Ar + BitVec.ofNat 64 (8 * 25)) = x) (hx28 : x.toNat < 2 ^ 28)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 25 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 25 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  have hP' := pk_store (mem := mem) (mem' := mem') (R := fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (25 + i)))
    (mod_one hmod) (by rintro y ⟨i, hi, rfl⟩; exact blkcell hAr (by omega)) hB hP
  unfold TF
  rw [show cl Ar mem' 25 = x from hx, ho 33 (by norm_num) (by norm_num), ho 26 (by norm_num) (by norm_num),
    ho 27 (by norm_num) (by norm_num), ho 35 (by norm_num) (by norm_num), ho 34 (by norm_num) (by norm_num)]
  exact ⟨hx28, h33, hP', h35, hA⟩

theorem tf_set33 {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {x : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 33) → mem' y = mem y)
    (hx : rd mem' (Ar + BitVec.ofNat 64 (8 * 33)) = x) (hx28 : x.toNat < 2 ^ 28)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 33 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 33 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  have hP' := pk_store (mem := mem) (mem' := mem') (R := fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (33 + i)))
    (mod_one hmod) (by rintro y ⟨i, hi, rfl⟩; exact blkcell hAr (by omega)) hB hP
  unfold TF
  rw [show cl Ar mem' 33 = x from hx, ho 25 (by norm_num) (by norm_num), ho 26 (by norm_num) (by norm_num),
    ho 27 (by norm_num) (by norm_num), ho 35 (by norm_num) (by norm_num), ho 34 (by norm_num) (by norm_num)]
  exact ⟨h25, hx28, hP', h35, hA⟩

/-- the access-list pointer cell, while the count cell is still `0` -/
theorem tf_set26 {Γ : Gam} {mem mem' : Mem} {Ar : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 26) → mem' y = mem y) (hz : cl Ar mem 27 = 0)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 26 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 26 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  unfold TF
  rw [ho 25 (by norm_num) (by norm_num), ho 33 (by norm_num) (by norm_num), ho 27 (by norm_num) (by norm_num),
    ho 35 (by norm_num) (by norm_num), ho 34 (by norm_num) (by norm_num), hz]
  exact ⟨h25, h33, pk_zero rfl, h35, hA⟩

/-- the access-list count cell, given good records at the current pointer cell -/
theorem tf_set27 {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {cnt : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 27) → mem' y = mem y)
    (hx : rd mem' (Ar + BitVec.ofNat 64 (8 * 27)) = cnt) (hP : Pk Γ mem (cl Ar mem 26) cnt)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 27 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 27 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, -, h35, hA⟩ := h
  have hP' := pk_store (mem := mem) (mem' := mem') (R := fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (27 + i)))
    (mod_one hmod) (by rintro y ⟨i, hi, rfl⟩; exact blkcell hAr (by omega)) hB hP
  unfold TF
  rw [show cl Ar mem' 27 = cnt from hx, ho 25 (by norm_num) (by norm_num), ho 33 (by norm_num) (by norm_num),
    ho 26 (by norm_num) (by norm_num), ho 35 (by norm_num) (by norm_num), ho 34 (by norm_num) (by norm_num)]
  exact ⟨h25, h33, hP', h35, hA⟩

theorem tf_set34 {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 34) → mem' y = mem y) (hz : cl Ar mem 35 = 0)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 34 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 34 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  have hP' := pk_store (mem := mem) (mem' := mem') (R := fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (34 + i)))
    (mod_one hmod) (by rintro y ⟨i, hi, rfl⟩; exact blkcell hAr (by omega)) hB hP
  unfold TF
  rw [ho 25 (by norm_num) (by norm_num), ho 33 (by norm_num) (by norm_num), ho 26 (by norm_num) (by norm_num),
    ho 27 (by norm_num) (by norm_num), ho 35 (by norm_num) (by norm_num), hz]
  exact ⟨h25, h33, hP', by simp, Or.inl (by simp)⟩

theorem tf_set35 {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {x : BitVec 64}
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 35) → mem' y = mem y)
    (hx : rd mem' (Ar + BitVec.ofNat 64 (8 * 35)) = x) (hx28 : x.toNat < 2 ^ 28)
    (hA : Hooks.SubArr Γ (cl Ar mem 34) x.toNat Types.tAUTH 120)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' ∧ ∀ f, f ≠ 35 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := by
  have ho : ∀ f, f ≠ 35 → f ≤ 50 → cl Ar mem' f = cl Ar mem f := fun f hf h50 =>
    cl_other hmod hf h50 (by norm_num)
  refine ⟨?_, ho⟩
  obtain ⟨h25, h33, hP, h35, -⟩ := h
  have hP' := pk_store (mem := mem) (mem' := mem') (R := fun y => ∃ i, i < 1 ∧ y = Ar + BitVec.ofNat 64 (8 * (35 + i)))
    (mod_one hmod) (by rintro y ⟨i, hi, rfl⟩; exact blkcell hAr (by omega)) hB hP
  unfold TF
  rw [show cl Ar mem' 35 = x from hx, ho 25 (by norm_num) (by norm_num), ho 33 (by norm_num) (by norm_num),
    ho 26 (by norm_num) (by norm_num), ho 27 (by norm_num) (by norm_num), ho 34 (by norm_num) (by norm_num)]
  exact ⟨h25, h33, hP', hx28, hA⟩

end InitECandidate.Solver.MemSafe.Rec
