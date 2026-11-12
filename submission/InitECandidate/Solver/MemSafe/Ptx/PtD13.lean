import InitECandidate.Solver.MemSafe.Ptx.PtD12
import InitECandidate.Solver.MemSafe.Rec.TxEnc

/-!
# F3e: the transaction's access list at entry (`TxW` bounds, stable record cells)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- `Σ_{i < n} ns_i`. -/
def nsS (m : Mem) (P : BitVec 64) : Nat → Nat
  | 0 => 0
  | n + 1 => nsS m P n + Hooks.accNs m P n

theorem accSum_eq (m : Mem) (P : BitVec 64) : ∀ n, Hooks.accSum m P n = 39 * n + 33 * nsS m P n
  | 0 => by simp [Hooks.accSum, nsS]
  | n + 1 => by
    simp only [Hooks.accSum, nsS]
    rw [accSum_eq m P n]
    omega

/-- The tx object of the entry typing with its `TxW`. -/
theorem txw_entry {E : PtE σ} (hP : PtPre E) :
    ∃ o ∈ E.Γ0, o.base = E.tx ∧ o.ty = tTX ∧ Hooks.TxW E.Γ0 E.s0.memory o := by
  obtain ⟨o, ho, hb, ht⟩ := hP.tx
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hP.hG
  exact ⟨o, ho, hb, ht, Rec.encGet_guestR E.Γ0 E.s0 o ht (hW o ho)⟩

/-- The access-list count and base at entry. -/
def cnt0 (E : PtE σ) : BitVec 64 := rd E.s0.memory (E.tx + BitVec.ofNat 64 216)
def lst0 (E : PtE σ) : BitVec 64 := rd E.s0.memory (E.tx + BitVec.ofNat 64 208)

theorem tx_bounds0 {E : PtE σ} (hP : PtPre E) :
    (cnt0 E).toNat < 2 ^ 58 ∧ nsS E.s0.memory (lst0 E) (cnt0 E).toNat < 2 ^ 58 := by
  obtain ⟨o, ho, hb, ht, hw⟩ := txw_entry hP
  have hlen := hw.2.2.1
  have e27 : Hooks.txF E.s0.memory o 27 = cnt0 E := by
    unfold Hooks.txF cnt0 Obj.cell; rw [hb]
  have e26 : Hooks.txF E.s0.memory o 26 = lst0 E := by
    unfold Hooks.txF lst0 Obj.cell; rw [hb]
  unfold Hooks.TxLen at hlen
  rw [e27, e26, accSum_eq] at hlen
  constructor <;> omega

end InitECandidate.Solver.MemSafe.Ptx
