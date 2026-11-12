import InitECandidate.Solver.MemSafe.Ptx.PtA3

/-!
# F3d: the two stores into `TXS[index]` (`ptS4`, `ptS6`)
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
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

theorem bo_lookup {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) :
    u.globals.lookup (nm "bo") = some (.val (.word E.bo)) := by
  rw [ptRun_glob h (by decide)]
  exact lookup_of_gword hP.hbo

/-- `st (lds 1 (bo + 24)) + index * 16, enc.0`. -/
theorem hn_st_txs0 {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} (hP : PtPre E)
    (hidx : En (nm "index") = some (.val (.word E.idx))) (henc : En (nm "enc") = some (wv [rp, rl]))
    (hcv : ∀ a v, S (Fct.cellv a v) → a ≠ E.txs + E.idx * BitVec.ofNat 64 16) :
    HN (PA E En S) ptS4 (PA E En (fun f => S f ∨ f = Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16) rp)) := by
  unfold ptS4
  refine hn_stBlkV (c := E.txs + E.idx * BitVec.ofNat 64 16) (x := rp) ?_
  intro s hpa D Γ p hr hD hL w v hw hv
  have hbo := bo_lookup hP hr
  have h24 : rd s.memory (E.bo + BitVec.ofNat 64 24) = E.txs := rd_bo24 hP hr hD
  have hlk := hpa.2
  have hia : EvI s (lv (nm "index")) (.val (.word E.idx)) := evI_lv (hlk _ _ hidx)
  have hA := evI_add (evI_ld (evI_add (evI_gv hbo) (evI_cw s 24))) (evI_mul hia (evI_cw s 16))
  rw [h24] at hA
  have hw' := hA _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  have hv' := evI_rf (evI_lv (hlk _ _ henc)) (i := 0) (by simp) v hv
  have hW : E.WSet (E.txs + E.idx * BitVec.ofNat 64 16) := Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  obtain ⟨M, k, hM, hMt, hk, hp, hc, hW', hrn⟩ := cell_pack hP hr hL hW hcv
  exact ⟨by simpa using hv', hw', M, k, hM, hMt, hk, hp, hc, hW', hrn⟩

/-- `st (lds 1 (bo + 24)) + index * 16 + 8, enc.1`. -/
theorem hn_st_txs1 {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} (hP : PtPre E)
    (hidx : En (nm "index") = some (.val (.word E.idx))) (henc : En (nm "enc") = some (wv [rp, rl]))
    (hcv : ∀ a v, S (Fct.cellv a v) → a ≠ E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) :
    HN (PA E En S) ptS6 (PA E En (fun f => S f ∨ f = Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) rl)) := by
  unfold ptS6
  refine hn_stBlkV (c := E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) (x := rl) ?_
  intro s hpa D Γ p hr hD hL w v hw hv
  have hbo := bo_lookup hP hr
  have h24 : rd s.memory (E.bo + BitVec.ofNat 64 24) = E.txs := rd_bo24 hP hr hD
  have hlk := hpa.2
  have hia : EvI s (lv (nm "index")) (.val (.word E.idx)) := evI_lv (hlk _ _ hidx)
  have hA := evI_add3 (evI_ld (evI_add (evI_gv hbo) (evI_cw s 24))) (evI_mul hia (evI_cw s 16)) (evI_cw s 8)
  rw [h24, ← BitVec.add_assoc] at hA
  have hw' := hA _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  have hv' := evI_rf (evI_lv (hlk _ _ henc)) (i := 1) (by simp) v hv
  have hW : E.WSet (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) :=
    Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  obtain ⟨M, k, hM, hMt, hk, hp, hc, hW', hrn⟩ := cell_pack hP hr hL hW hcv
  exact ⟨by simpa using hv', hw', M, k, hM, hMt, hk, hp, hc, hW', hrn⟩

end InitECandidate.Solver.MemSafe.Ptx
