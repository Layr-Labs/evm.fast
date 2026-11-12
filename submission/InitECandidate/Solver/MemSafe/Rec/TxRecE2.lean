import InitECandidate.Solver.MemSafe.Rec.TxRecStg3

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the phase-2 client predicate (the slice array is known)

`EAr`: the array `A` of `cnt` slices (returned by `rlp_list_to_slices(Pt, Nt)`) is frozen
(`FzB`: outside every `Γ` object, allocated), every slice lies in `[Pt, Pt + Nt)`, disjoint from the block.
`ET2 = ETz ∧ EAr`; it survives non-fact block stores and non-writing calls.
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
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

/-- **The address pointers are located**: `TO` (cell 19) is 0 or 20 bytes inside `[Pt, Pt + Nt)`, and so is every
access record's `ACC_ADDR` (`rd (cl 26 + 24 j)`, `j < cl 27`). -/
def TxK (Ar Pt Nt : BitVec 64) (mem : Mem) : Prop :=
  (cl Ar mem 19 = 0 ∨ LocIn Pt Nt (cl Ar mem 19) 20) ∧
    ∀ j, j < (cl Ar mem 27).toNat → LocIn Pt Nt (rd mem (cl Ar mem 26 + BitVec.ofNat 64 (24 * j))) 20

theorem acc_addr_info {Γ : Gam} {ap an : BitVec 64} (h : Hooks.SubArr Γ ap an.toNat Types.tACC 24)
    {j : Nat} (hj : j < an.toNat) :
    ∃ x ∈ Γ, x.HasSlot (3 * j) ∧ ap + BitVec.ofNat 64 (24 * j) = x.cell (3 * j) ∧
      (Types.guestC.ty x.ty).slot (3 * j) = .prot ∧ InObj Γ (x.cell (3 * j)).toNat := by
  obtain ⟨x, hx, hb, ht, hslot, hc, h1, h2⟩ := Hooks.sub_cell h (by omega) (k := 3 * j)
    (by have : 8 * (3 * j) + 8 ≤ 24 * (j + 1) := by omega
        exact le_trans this (Nat.mul_le_mul_left 24 hj))
  refine ⟨x, hx, hslot, ?_, ?_, ⟨x, hx, h1, h2⟩⟩
  · unfold Obj.cell; rw [hb]; congr 2; omega
  · rw [ht]; exact Hooks.acc_prot _

/-- `TxK` after a store into the record block that keeps cells 19, 26, 27. -/
theorem txk_store {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar Pt Nt : BitVec 64} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R mem mem') (hR : ∀ y, R y → Overlap Ar.toNat 400 y) (hB : BlkF Ar 400 Γ q)
    (hT : TF Ar Γ mem) (e19 : cl Ar mem' 19 = cl Ar mem 19) (e26 : cl Ar mem' 26 = cl Ar mem 26)
    (e27 : cl Ar mem' 27 = cl Ar mem 27) (h : TxK Ar Pt Nt mem) : TxK Ar Pt Nt mem' := by
  obtain ⟨h19, hacc⟩ := h
  refine ⟨by rw [e19]; exact h19, fun j hj => ?_⟩
  rw [e27] at hj
  obtain ⟨-, -, hP, -, -⟩ := hT
  obtain ⟨x, hx, hs, hc, -, hin⟩ := acc_addr_info hP.2.1 hj
  rw [e26]
  have hnR : ¬ R (cl Ar mem 26 + BitVec.ofNat 64 (24 * j)) := fun hr => by
    rw [hc] at hr
    exact (hB _ (hR _ hr)).1 hin
  rw [rd_congr (hmod _ hnR)]
  exact hacc j hj

/-- `TxK` across a non-writing call. -/
theorem txk_call {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {Ar Pt Nt : BitVec 64} (co : COutA a sg' vs Γ Γ' q q' s st)
    (hArg : ∀ x, ¬ ArgCells sg'.params vs x) (hT : TF Ar Γ s.memory)
    (hk : ∀ k, 8 * k + 8 ≤ 400 → cl Ar st.memory k = cl Ar s.memory k)
    (h : TxK Ar Pt Nt s.memory) : TxK Ar Pt Nt st.memory := by
  obtain ⟨h19, hacc⟩ := h
  refine ⟨by rw [hk 19 (by norm_num)]; exact h19, fun j hj => ?_⟩
  rw [hk 27 (by norm_num)] at hj
  obtain ⟨-, -, hP, -, -⟩ := hT
  obtain ⟨x, hx, hs, hc, hprot, -⟩ := acc_addr_info hP.2.1 hj
  have := coa_prot_keep co hArg hx hs (by rw [hCb]; exact hprot)
  rw [hk 26 (by norm_num), hc, rd_congr this, ← hc]
  exact hacc j hj

theorem txk_widen {Ar Pt Nt P N : BitVec 64} {mem : Mem} (h1 : P.toNat ≤ Pt.toNat)
    (h2 : Pt.toNat + Nt.toNat ≤ P.toNat + N.toNat) (h : TxK Ar Pt Nt mem) : TxK Ar P N mem := by
  obtain ⟨h19, hacc⟩ := h
  refine ⟨?_, fun j hj => ?_⟩
  · rcases h19 with h | ⟨a1, a2⟩
    · exact Or.inl h
    · exact Or.inr ⟨by omega, by omega⟩
  · obtain ⟨a1, a2⟩ := hacc j hj
    exact ⟨by omega, by omega⟩

def EAr (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (Γ : Gam) (q : Ptrs) (mem : Mem) : Prop :=
  FzB A.toNat (16 * cnt.toNat) Γ q ∧ SIn mem A cnt.toNat Pt.toNat (Pt.toNat + Nt.toNat) ∧
  heapBase ≤ Pt.toNat ∧ Pt.toNat + Nt.toNat ≤ a.p0.hp ∧ A.toNat + 16 * cnt.toNat ≤ heapEnd ∧
  (∀ x : BitVec 64, Overlap Ar.toNat 400 x → ¬ (A.toNat ≤ x.toNat ∧ x.toNat < A.toNat + 16 * cnt.toNat)) ∧
  TxK Ar Pt Nt mem

def ET2 (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (b27 b35 : Bool) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => ETz Ar b27 b35 Γ q mem g ∧ EAr a Ar A cnt Pt Nt Γ q mem

def withP (P : Prop) (E : Gam → Ptrs → Mem → LocalsH → Prop) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => E Γ q mem g ∧ P

theorem storeKeep_withP {Ar : BitVec 64} {E : Gam → Ptrs → Mem → LocalsH → Prop} (P : Prop)
    (h : StoreKeep Ar E) : StoreKeep Ar (withP P E) :=
  fun hAr Γ q mem mem' g j len hj hf hmod hB ⟨hE, hP⟩ => ⟨h hAr Γ q mem mem' g j len hj hf hmod hB hE, hP⟩

theorem callKeep_withP {a : Act σ} {Ar : BitVec 64} {E : Gam → Ptrs → Mem → LocalsH → Prop} (P : Prop)
    (h : CallKeep a Ar E) : CallKeep a Ar (withP P E) :=
  fun hAr sg' vs Γ Γ' q q' s st g g' co hArg hB ⟨hE, hP⟩ => ⟨h hAr sg' vs Γ Γ' q q' s st g g' co hArg hB hE, hP⟩

theorem et2_store (a : Act σ) {Ar A cnt Pt Nt : BitVec 64} (b27 b35 : Bool) :
    StoreKeep Ar (ET2 a Ar A cnt Pt Nt b27 b35) := by
  intro hAr Γ q mem mem' g j len hj hf hmod hB ⟨hz, hfz, hsin, hP, hN, hA, hdj, hK⟩
  refine ⟨etz_store b27 b35 hAr Γ q mem mem' g j len hj hf hmod hB hz, hfz, ?_, hP, hN, hA, hdj,
    txk_store hmod (fun y ⟨i, hi, he⟩ => by rw [he]; exact blkcell hAr (by omega)) hB hz.1
      (cl_keep hmod (hf 19 (by simp [txFacts])) (by omega) hj) (cl_keep hmod (hf 26 (by simp [txFacts])) (by omega) hj)
      (cl_keep hmod (hf 27 (by simp [txFacts])) (by omega) hj) hK⟩
  have hse := heapEnd_lt64
  have key : ∀ y : BitVec 64, A.toNat ≤ y.toNat → y.toNat < A.toNat + 16 * cnt.toNat →
      rd mem' y = rd mem y := fun y h1 h2 => by
    refine rd_congr (hmod _ ?_)
    rintro ⟨i, hi, rfl⟩
    exact hdj _ (blkcell hAr (by omega)) ⟨h1, h2⟩
  intro k hk
  have hs := hsin k hk
  have e1 : (A + BitVec.ofNat 64 (16 * k)).toNat = A.toNat + 16 * k := tnl _ _ (by omega)
  have e2 : (A + BitVec.ofNat 64 (16 * k + 8)).toNat = A.toNat + (16 * k + 8) := tnl _ _ (by omega)
  rw [key _ (by omega) (by omega), key _ (by omega) (by omega)]
  exact hs

theorem et2_call {a : Act σ} (hCb : a.Cb = Types.guestC) {Ar A cnt Pt Nt : BitVec 64} (b27 b35 : Bool) :
    CallKeep a Ar (ET2 a Ar A cnt Pt Nt b27 b35) := by
  intro hAr sg' vs Γ Γ' q q' s st g g' co hArg hB ⟨hz, hfz, hsin, hP, hN, hA, hdj, hK⟩
  refine ⟨etz_call hCb b27 b35 hAr sg' vs Γ Γ' q q' s st g g' co hArg hB hz,
    fzB_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf hfz,
    sin_keep co hfz hA (fun x hx => absurd hx (hArg x)) hsin, hP, hN, hA, hdj,
    txk_call hCb co hArg hz.1 (tf_call hCb co hArg hB hAr hz.1).2 hK⟩

/-- The location facts of slot `I` of the array. -/
theorem slot_loc {mem : Mem} {A cnt Pt Nt b c : BitVec 64} {I : Nat}
    (hS : SIn mem A cnt.toNat Pt.toNat (Pt.toNat + Nt.toNat)) (hI : I < cnt.toNat)
    (hNt : Pt.toNat + Nt.toNat ≤ heapEnd) (hso : SlotOut mem A (BitVec.ofNat 64 I) b c) :
    Pt.toNat ≤ b.toNat ∧ b.toNat + c.toNat ≤ Pt.toNat + Nt.toNat ∧ c.toNat ≤ Nt.toNat := by
  have hse := heapEnd_lt64
  have hI64 : I < 2 ^ 64 := by have := cnt.isLt; omega
  have h := hS I hI
  have e1 : BitVec.ofNat 64 I * BitVec.ofNat 64 16 = BitVec.ofNat 64 (16 * I) := by
    rw [mulN _ _ (by norm_num), ofNat_toNat_lt I hI64]
  have e2 : A + (BitVec.ofNat 64 (16 * I) + BitVec.ofNat 64 8) = A + BitVec.ofNat 64 (16 * I + 8) := by
    rw [BitVec.ofNat_add_ofNat]
  obtain ⟨hs1, hs2⟩ := hso
  simp only [slotL, slotP] at hs1 hs2
  have e3 : A + BitVec.ofNat 64 I * 16 + 8 = A + BitVec.ofNat 64 (16 * I + 8) := by
    rw [BitVec.add_assoc]
    show A + (BitVec.ofNat 64 I * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = _
    rw [e1, e2]
  have e4 : A + BitVec.ofNat 64 I * 16 = A + BitVec.ofNat 64 (16 * I) := by
    show A + BitVec.ofNat 64 I * BitVec.ofNat 64 16 = _
    rw [e1]
  rw [e3] at hs1
  rw [e3, e4] at hs2
  obtain ⟨h1, h2⟩ := h
  have hlt : (rd mem (A + BitVec.ofNat 64 (16 * I))).toNat + (rd mem (A + BitVec.ofNat 64 (16 * I + 8))).toNat < 2 ^ 64 := by
    omega
  obtain ⟨p1, p2⟩ := hs2 hlt
  refine ⟨by omega, by omega, by omega⟩

end InitECandidate.Solver.MemSafe.Rec
