import InitECandidate.Solver.MemSafe.Ra.AttKit9

/-!
# `run_attempt`, before `payload_header` (1): `raS1 .. raS12`

`S1a`: the facts at entry. `Z0`, `Zpre`: the globals the facts name before / after `block_hashes` and `block_hashes_n` are assigned.
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

def S1a (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z : BitVec 64) : FS := fun f =>
  f = Fct.obj si0 tSI 96 ∨ f = Fct.pcv (si0 + BitVec.ofNat 64 0) pl0 ∨ f = Fct.obj pl0 tPL 136 ∨
  f = Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0 ∨ f = Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0 ∨
  f = Fct.pcv (pl0 + BitVec.ofNat 64 56) nwd0 ∨
  f = Fct.gobj (nm "beacon_roots_address") T1 tB24 ∨ f = Fct.gobj (nm "history_storage_address") T2 tB24 ∨
  f = Fct.gobj (nm "zero32") z tB32

def Z0 : List MlS := [nm "beacon_roots_address", nm "history_storage_address", nm "zero32"]
def Zpre : List MlS := [nm "beacon_roots_address", nm "history_storage_address", nm "zero32", nm "block_hashes", nm "block_hashes_n"]

theorem tidy_S1a (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z : BitVec 64) : Tidy Z0 (S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z) := by
  constructor
  · intro g w t hf
    simp only [S1a] at hf
    rcases hf with h | h | h | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z0]
  · intro g w hf
    simp only [S1a] at hf
    rcases hf with h | h | h | h | h | h | h | h | h <;> first | cases h | skip
    all_goals simp [Z0]

theorem safe_S1a (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z : BitVec 64) : SafeS (S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z) := by
  intro f hf
  have := kt_entry
  have hk : KeepTy tSI := keepTy_block _ (by simp [PlTys, blockTys])
  simp only [S1a] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    first | trivial | exact hk | exact this.2.2.2.2.1 | exact this.2.2.2.2.2 | exact this.1 | exact this.2.1 | exact this.2.2.1 | exact this.2.2.2.1

theorem z0_a : ∀ g ∈ Z0, ¬ (aW.contains g = true) := by
  intro g hg
  simp only [Z0, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl <;> decide

theorem z0_tab : ∀ g ∈ Z0, ¬ (tabW.contains g = true) := by
  intro g hg
  simp only [Z0, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl <;> decide

theorem tab_cgl : CSumm σ guestCtx guestC (HR σ) (nm "check_gas_limit") ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

end InitECandidate.Solver.MemSafe.Att
