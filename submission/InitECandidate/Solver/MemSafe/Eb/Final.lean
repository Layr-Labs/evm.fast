import InitECandidate.Solver.MemSafe.Eb.Glue5

/-!
# `execute_block`: the entry precondition `EbPre` and the memory-safety `FunSpec`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The globals the entry facts name. -/
def ZE : List MlS :=
  [nmBe, nm "wd_rlp_slices", nm "bs", nm "sk_buf", nm "beacon_roots_address", nm "history_storage_address",
   nm "zero32", nm "block_hashes", nm "block_hashes_n"]

/-- **The entry facts of `execute_block`**, as typed-heap facts about the entry state. `si` is a `tSI` object whose payload cell holds
`pl0` (a `tPL` object of 136 bytes) with the transaction count, the transaction slices array and the withdrawal count in its cells;
`be` is a `tBOS` block environment of 120 bytes whose coinbase cell holds a 20-byte range of a `tVAL` object; `wd_rlp_slices` is a
`tBOS` array of `nwd0` filled `(ptr, len)` entries of `tVAL` slices; `bs`, `sk_buf` and the constant-address globals are typed objects. -/
def S0c (si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw : BitVec 64) : FS := fun f =>
  f = Fct.pcv (si0 + BitVec.ofNat 64 0) pl0 ∨ f = Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0 ∨
  f = Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0 ∨ f = Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0 ∨
  f = Fct.obj pl0 tPL 136 ∨ f = Fct.gval nmBe be0 ∨ f = Fct.obj be0 tBOS 120 ∨
  f = Fct.cellv (be0 + BitVec.ofNat 64 32) c0 ∨ f = Fct.inval c0 20 ∨ f = Fct.obj wd0 tBOS (16 * nwd0.toNat) ∨
  f = Fct.gval (nm "wd_rlp_slices") wd0 ∨ f = Fct.sla wd0 nwd0.toNat ∨ f = Fct.prop (be0 ≠ wd0) ∨
  f = Fct.gobj (nm "bs") bsw tBS ∨ f = Fct.gobj (nm "sk_buf") skw tB64 ∨
  f = Fct.gobj (nm "beacon_roots_address") T1 tB24 ∨ f = Fct.gobj (nm "history_storage_address") T2 tB24 ∨
  f = Fct.gobj (nm "zero32") z tB32 ∨ f = Fct.gval (nm "block_hashes") bh ∨ f = Fct.gval (nm "block_hashes_n") bn

/-- **`EbPre`**: the precondition of `execute_block(si, hdr)` (the argument `hdr` is unconstrained). -/
def EbPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  ∃ si0 hdr0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw : BitVec 64,
    vs = [.val (.word si0), .val (.word hdr0)] ∧ CPre Γ ∧ ntx0.toNat < 2 ^ 24 ∧ nwd0.toNat < 2 ^ 50 ∧
    HoldsAll p Γ p s (S0c si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw)

theorem zok_ze : ZOK ZE := by
  intro g hg
  simp only [ZE, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | (refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> decide)

theorem zbal_ze : ∀ g ∈ ZE, ¬ (balW.contains g = true) := by
  intro g hg
  simp only [ZE, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> decide

theorem zbo_ze : nmBo ∉ ZE := by decide

theorem kt_entry : KeepTy tBS ∧ KeepTy tB64 ∧ KeepTy tB24 ∧ KeepTy tB32 ∧ KeepTy tPL ∧ KeepTy tBOS := by
  unfold KeepTy ScratchOwn; decide

theorem entryK_of_s0c {si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw : BitVec 64}
    (hbt : ntx0.toNat < 2 ^ 24) (hbwd : nwd0.toNat < 2 ^ 50) :
    EntryK (S0c si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw) ZE si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn := by
  refine ⟨?_, ?_, zok_ze, zbal_ze, zbo_ze, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, by omega, hbt, hbwd, ?_⟩
  · refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
    · simp only [S0c] at hf
      rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;> first | cases h | skip
      all_goals simp [ZE]
    · simp only [S0c] at hf
      rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;> first | cases h | skip
      all_goals simp [ZE]
  · intro f hf
    simp only [S0c] at hf
    have := kt_entry
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      first | trivial | exact this.2.2.2.2.1 | exact this.2.2.2.2.2 | exact this.1 | exact this.2.1 | exact this.2.2.1 | exact this.2.2.2.1
  all_goals first | (simp [S0c]; done) | skip
  · intro f hf hnp y hy
    simp only [S0c] at hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    all_goals first | exact absurd rfl (hnp _ _) | exact absurd hy (fun h => h) | skip
    · exact Or.inl hy
    · obtain ⟨j, hj, hy'⟩ := hy
      rcases hy' with rfl | rfl
      · exact Or.inr ⟨16 * j, by omega, by omega, rfl⟩
      · exact Or.inr ⟨16 * j + 8, by omega, by omega, rfl⟩

end InitECandidate.Solver.MemSafe.Eb
