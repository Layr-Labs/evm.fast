import InitECandidate.Solver.MemSafe.Ra.AttKit4

/-!
# `run_attempt`: the walk's environments and fact sets
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The tracked locals after `payload_header`: `si`, `pl`, `hdr`. -/
def En2 (si0 pl0 H : BitVec 64) : Env :=
  Env.set (Env.set (Env.set (fun _ => none) (nm "si") (.val (.word si0))) (nm "pl") (.val (.word pl0)))
    (nm "hdr") (.val (.word H))

/-- The globals the facts name after `payload_header` and before `be`. -/
def Z2 : List MlS :=
  [nm "wd_rlp_slices", nm "bs", nm "sk_buf", nm "beacon_roots_address", nm "history_storage_address", nm "zero32",
   nm "block_hashes", nm "block_hashes_n"]

/-- The facts held before `payload_header`. -/
def S2b (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64) : FS := fun f =>
  f = Fct.obj si0 tSI 96 ∨ f = Fct.pcv (si0 + BitVec.ofNat 64 0) pl0 ∨ f = Fct.obj pl0 tPL 136 ∨
  f = Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0 ∨ f = Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0 ∨
  f = Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0 ∨
  f = Fct.gobj (nm "beacon_roots_address") T1 tB24 ∨ f = Fct.gobj (nm "history_storage_address") T2 tB24 ∨
  f = Fct.gobj (nm "zero32") z tB32 ∨ f = Fct.gobj (nm "bs") bsw tBS ∨ f = Fct.gobj (nm "sk_buf") skw tB64 ∨
  f = Fct.gval (nm "block_hashes") bh ∨ f = Fct.gval (nm "block_hashes_n") nh

/-- The facts after `payload_header` (the header and the withdrawal array adopted as `tBOS`). -/
def S2 (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64) : FS := fun f =>
  S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f ∨
  f = Fct.obj H tBOS 248 ∨ f = Fct.cellv (H + BitVec.ofNat 64 24) C ∨ f = Fct.inval C 20 ∨
  f = Fct.obj WD tBOS (16 * nwd0.toNat) ∨ f = Fct.gval (nm "wd_rlp_slices") WD ∨ f = Fct.sla WD nwd0.toNat

/-- The globals the facts name before `payload_header`. -/
def Z1b : List MlS :=
  [nm "bs", nm "sk_buf", nm "beacon_roots_address", nm "history_storage_address", nm "zero32", nm "block_hashes", nm "block_hashes_n"]

theorem tidy_S2b (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64) :
    Tidy Z1b (S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) := by
  constructor
  · intro g w t hf
    simp only [S2b] at hf
    rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z1b]
  · intro g w hf
    simp only [S2b] at hf
    rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z1b]

theorem z1b_ph : ∀ g ∈ Z1b, ¬ (phW.contains g = true) := by
  intro g hg
  simp only [Z1b, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> decide

theorem tidy_S2 (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64) :
    Tidy Z2 (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD) := by
  constructor
  · intro g w t hf
    simp only [S2, S2b] at hf
    rcases hf with (h | h | h | h | h | h | h | h | h | h | h | h | h) | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z2]
  · intro g w hf
    simp only [S2, S2b] at hf
    rcases hf with (h | h | h | h | h | h | h | h | h | h | h | h | h) | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z2]

theorem safe_S2 (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64) :
    SafeS (S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD) := by
  intro f hf
  have := kt_entry
  have hk : KeepTy tSI := keepTy_block _ (by simp [PlTys, blockTys])
  simp only [S2, S2b] at hf
  rcases hf with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | trivial | exact hk | exact this.2.2.2.2.1 | exact this.2.2.2.2.2 | exact this.1 | exact this.2.1 | exact this.2.2.1 | exact this.2.2.2.1

theorem z2_tab : ∀ g ∈ Z2, ¬ (tabW.contains g = true) := by
  intro g hg
  simp only [Z2, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> decide

theorem z2_a : ∀ g ∈ Z2, ¬ (aW.contains g = true) := by
  intro g hg
  simp only [Z2, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> decide

end InitECandidate.Solver.MemSafe.Att
