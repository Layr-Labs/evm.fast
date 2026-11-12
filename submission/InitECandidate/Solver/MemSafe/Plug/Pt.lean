import InitECandidate.Solver.MemSafe.Plug.F3
import InitECandidate.Solver.MemSafe.Eb.Adapt

/-!
# `Eb.HypPt` from F3's closed `Ptx.pt_funSpec_final` (package Ptb)

`hypPt_closed : 2^24 + 2 ≤ M → Eb.HypPt σ M`.
* The pre: `Eb.PtPreE` gives `Ptx.PtPreD2` (the buffers at the ghost allocator `gp0 p` are part of `PtPreE`).
* The post: `Ptx.PtPost2` (`KeepH` for heap objects, the block cells outside `PtW`, the payload record cells, `JrNZ`, `EvCc`) gives
  a step from the entry typing `Γ` to its heap part `keepG Γ'` (`Eb.stepD_of_keepH`, the allocator relation is the heap part
  `(gp0 p).Mono p'`), with `JrNZ`, `EvCc`, the block cells outside `D` and `PlKeep`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Plug
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem plTys_recK : ∀ t ∈ Eb.PlTys, t ∈ recKTys := by decide

theorem hypPt_closed {M : Nat} (hM : 2 ^ 24 + 2 ≤ M) : Eb.HypPt σ M := by
  unfold Eb.HypPt Eb.CallR
  refine FunSpec.mono (Ptx.pt_funSpec_final (σ := σ)) ?_
  intro vs s r t hR v hv Γ p hG hp hJ hEC hpre
  obtain ⟨hC, tx, idx, bo, be, txs, rcs, rfl, hD, hcoin, hbufG, hbeG⟩ := hpre
  have hPre : Ptx.PtPreD2 (2 ^ 24 + 2) Γ s p tx idx bo be txs rcs :=
    { hp := hD.hp, hJ := hD.hJ, hev := hD.hev, hcc := hD.hcc, hM := le_refl _, txObj := hD.txObj, txbuf := hD.txbuf,
      hbo := hD.hbo, boObj := hD.boObj, htxs := hD.htxs, txsObj := hD.txsObj, hrcs := hD.hrcs, rcsObj := hD.rcsObj,
      logsObj := hD.logsObj, rlogsObj := hD.rlogsObj, hbe := hD.hbe, beObj := hD.beObj, beCoin := hD.beCoin,
      dis1 := hD.dis1, dis2 := hD.dis2, dis3 := hD.dis3, gbs := hD.bal.gbs, gba := hD.bal.gba, gbk := hD.bal.gbk,
      gbi := hD.bal.gbi, gbs2 := hD.bal.gbs2, gsk := hD.bal.gsk, own := hC.2, coinR := hcoin, txbufG := hbufG,
      beCoinG := hbeG }
  obtain ⟨Γ', hP⟩ := hR Γ hG tx idx rfl p bo be txs rcs hPre v hv
  obtain ⟨p', hp', hord', -⟩ := id hP.hG
  have hordp : p.Ordered := Eb.ordered_of_G hG hp
  obtain ⟨hhp, -, -⟩ := hP.keep p p' hp hp' hordp
  have hm : (Exb.gp0 p).Mono p' := by
    simp only [Ptrs.Mono, Exb.gp0, Ptrs.Ordered] at hord' ⊢
    omega
  have hE : Eb.EvCc t := ⟨hP.hev, hP.hcc⟩
  obtain ⟨hstep, hC'⟩ := Eb.stepD_of_keepH hypKeepG_closed hC hG hp hP.hG hp' hP.keep hm hE
  refine ⟨Eb.keepG Γ', p', ⟨hstep, hP.jr, hE, ?_, ?_⟩, ?_⟩
  · rintro a ⟨o, ho, hty, k, hk, hpr, rfl⟩ hnd
    refine hP.bkeep o ho hty k hk hpr ?_
    intro hw
    exact hnd ⟨idx, bo, by simp, by simp [argW, wordOf], hD.hbo, by rw [hD.htxs, hD.hrcs]; exact hw⟩
  · intro o ho hty k hk hpr
    exact hP.plk o ho (plTys_recK _ hty) k hk hpr
  · refine ⟨idx, bo, by simp [argW, wordOf], hD.hbo, ?_, ?_⟩
    · rw [hD.htxs]; exact Ptx.vinR_keepG hP.txSlice
    · rw [hD.hrcs]; exact Ptx.vinR_keepG hP.rcSlice

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.hypPt_closed
