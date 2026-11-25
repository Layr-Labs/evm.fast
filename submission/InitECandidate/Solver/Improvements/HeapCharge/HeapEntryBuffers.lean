import InitECandidate.Solver.MemSafe.Ptx.PtZ2
import InitECandidate.Solver.MemSafe.Eb.Loop6

set_option autoImplicit false
set_option maxRecDepth 100000
namespace HeapEntryBuffers
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- Safe buffers in a heap-only entry typing remain safe in the filtered ghost
heap after fresh_tx. The new ghost state drops frame and scratch allocations. -/
theorem buf_after {E : PtE σ} (hP : PtPre E) (ho : Eb.HO E.Γ0)
    {D Γ u p} (hr : PtRun D E.Γ0 E.s0 E.p0 Γ u p) {w : BitVec 64} {n : Nat}
    (hb : BufOK guestC E.Γ0 E.p0 w.toNat n) :
    BufOK guestC (Eb.keepG Γ) (gp0 p) w.toNat n := by
  have hn := bufok0_pre hP hr hb
  have hord := ptRun_ord hr
  obtain ⟨q, hq, _, hLayout, _⟩ := ptRun_G hr
  have eqp : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hr))
  subst q
  have hk := Eb.bufOK_keepG hord hLayout hn.1
  intro a ha
  rcases hk a ha with hc | ⟨hni, _⟩
  · exact Or.inl hc
  right
  refine ⟨hni, Or.inl ?_⟩
  obtain ⟨q0, hq0, hord0, hL0⟩ := pre_layout hP
  obtain ⟨q1, hq1, he⟩ := hP.hp
  have eq0 : q1 = q0 := Option.some.inj (hq1.symm.trans hq0)
  subst q1
  have hm := (ptRun_mono hr).1
  rw [he] at hm
  change q0.hp ≤ p.hp at hm
  rcases hb a ha with ⟨z, hz, k, hkz, -, rfl⟩ | ⟨-, hal⟩
  · obtain ⟨o, h, hl, hh⟩ := cell_in hord0 hL0 hz hkz
    obtain ⟨hbase, _, hend, _⟩ := Struct.obj_bounds hord0 hL0 h
    exact ⟨hbase.trans hl, hh.trans_le ((hend (ho o h)).trans hm)⟩
  · rw [he] at hal
    have h := gp0_alloc hal
    exact ⟨h.1, h.2.trans_le hm⟩

theorem tx_after {E : PtE σ} (hP : PtPre E) (ho : Eb.HO E.Γ0)
    {Γ u p} (hr : PtRun noD E.Γ0 E.s0 E.p0 Γ u p) :
    TxBuf (Eb.keepG Γ) (gp0 p) u.memory E.tx 152 := by
  have hd : ∀ a, (noD a) ≠ none → E.WSet a := fun _ h => absurd rfl h
  have a := rd_tx hP hr hd (off := 152) (by decide) (by decide)
  have b := rd_tx hP hr hd (off := 216) (by decide) (by decide)
  have c := rd_tx hP hr hd (off := 208) (by decide) (by decide)
  change rd u.memory (E.tx + 216) = rd E.s0.memory (E.tx + 216) at b
  change rd u.memory (E.tx + 208) = rd E.s0.memory (E.tx + 208) at c
  unfold TxBuf
  rw [a, b, c]
  refine ⟨hP.txbuf.1.imp id (fun hb => buf_after hP ho hr hb), ?_⟩
  intro i hi
  have h := rd_acc hP hr hd (off := 0) hi (by decide) (by decide)
  simp only [Nat.add_zero, lst0] at h
  change rd u.memory (rd E.s0.memory (E.tx + 208) + BitVec.ofNat 64 (24*i)) =
    rd E.s0.memory (rd E.s0.memory (E.tx + 208) + BitVec.ofNat 64 (24*i)) at h
  rw [h]
  exact buf_after hP ho hr (hP.txbuf.2 i hi)

#print axioms buf_after
#print axioms tx_after
end HeapEntryBuffers
