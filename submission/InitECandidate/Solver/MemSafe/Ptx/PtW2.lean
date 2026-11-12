import InitECandidate.Solver.MemSafe.Ptx.PtW1
import InitECandidate.Solver.MemSafe.Ptx.PtQ2

/-!
# F3h: the `process_message_call` call step (`ptS113`) and the tail
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem pmc_fin : ptAllNames.contains (nm "process_message_call") = true := by decide_cbv

theorem locIns_ptEnd (E : PtE σ) :
    LocIns (fun (r : Option (PanSemResultExact 64)) (t : State σ) => r = some (.returned (.val (.word 0))) ∧ PtEnd E t) :=
  fun r t l c h => ⟨h.1, ptEnd_loc h.2 l c⟩

/-- **The walk's facts at the call entry** from the bundle `MsK` and the adopted state. -/
theorem walkEnd_of {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe : Gam} {u : State σ} {p : Ptrs}
    {rp rl w : BitVec 64} {buf n : Nat} {sd : BitVec 64}
    (hP : PtPreX E) (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    {SS : FS} (hHold : HoldsAll E.p0 Γe p u SS) (hsd : sd = w)
    (hosd : SS (Fct.obj w tB24 24)) (hts : SS (Fct.gobj nmTs tTS)) (hc1 : SS (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16) rp))
    (hc2 : SS (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) rl))
    (hobjE : SS (Fct.obj (BitVec.ofNat 64 buf) tVAL n))
    (hbnd : 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf % 8 = 0 ∧ n % 8 = 0 ∧ buf + n < 2 ^ 64)
    (hcoinR : heapBase ≤ (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat ∧
      (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd) :
    WalkEnd E D Γe u p w rp rl := by
  refine ⟨hrun, hD, ?_, ?_, ?_, ?_, ?_, ?_, hcoinR⟩
  · obtain ⟨o, ho, hb, ht, hs⟩ := hHold _ hosd
    exact ⟨o, ho, hb, ht, hs⟩
  · exact hHold _ hts
  · exact (hHold _ hc1).1
  · exact (hHold _ hc2).1
  · have hbase : (BitVec.ofNat 64 buf).toNat = buf := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    obtain ⟨o, ho, hb, ht, hs⟩ := hHold _ hobjE
    right
    refine ⟨o, ho, ht, ?_, ?_⟩
    · show o.base.toNat ≤ rp.toNat
      rw [hb, hbase]; exact hbnd.2.1
    · show rp.toNat + rl.toNat ≤ o.base.toNat + o.size
      rw [hb, hbase]; omega
  · have h0 := hP.beCoin
    obtain ⟨q, hq, hqe⟩ := hP.hp
    have hord0 := ptRun_ord0 hrun
    have hordp := ptRun_ord hrun
    exact bufOK_step hord0 hordp (ptRun_mono hrun) (ptRun_ext hrun) hrun.2.2.2.2.1 h0

end InitECandidate.Solver.MemSafe.Ptx
