import InitECandidate.Solver.MemSafe.Ptx.PtZ1

/-!
# F3h: `pt_funSpec`
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

/-- From the tail's end to the post. -/
theorem ptPost_of_end {E : PtE σ} {t : State σ} (h : PtEnd E t) :
    ∃ Γ', PtPost2 E.Γ0 E.s0 E.tx E.idx E.bo E.txs E.rcs Γ' t := by
  obtain ⟨K, hK, Γ', hG, hO, hkeep, hblk, hev, hcc, htx, hrc, hjr, hplk⟩ := h
  refine ⟨Γ', ⟨⟨hG, KeepH.trans hK.keep hkeep K.hq0 K.ord, ?_, hev, hcc, ?_, ?_⟩, hO, hjr, ?_⟩⟩
  · intro o ho hot k hk hpr hnw
    have hnw2 : ¬ E.WSet (o.cell k) := hnw
    obtain ⟨o', ho', hb, ht, hk', hrd⟩ := hK.blk o ho hot k hk hnw2
    have hcell : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
    have hnw' : ¬ K.Wt (o'.cell k) := by
      rw [hcell]
      intro hw
      apply hnw2
      have := K.wt_wset hw
      unfold PtE.WSet at this ⊢
      rw [hK.bo, hK.txs, hK.rcs, hK.idx] at this
      exact this
    have h1 := hblk o' ho' (by rw [ht]; exact hot) k hk' (by rw [ht]; exact hpr) hnw'
    rw [hcell] at h1
    exact h1.trans hrd
  · rw [hK.txs, hK.idx] at htx
    exact htx
  · rw [hK.rcs, hK.idx] at hrc
    exact hrc
  · intro o ho hot k hk hpr
    obtain ⟨o', ho', hb, ht, hk', hrd⟩ := hK.plk o ho hot k hk hpr
    have hcell : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
    have h1 := hplk o' ho' (by rw [ht]; exact hot) k hk' (by rw [ht]; exact hpr)
    rw [hcell] at h1
    exact h1.trans hrd

/-- **`process_transaction`'s post.** -/
theorem pt_funSpec {M : Nat} (hpm : HypPmM σ M) (hcf : HypCfL σ) (hR : HypRcpt σ) (hgs : Bal.HGS σ)
    (hEnc : HypEncTx σ) : FunSpec σ guestCtx (nm "process_transaction") (PtR2 M) := by
  have hpcm := pcm_funSpec hpm hcf
  have h := funSpec_of_hoare (σ := σ) (X := guestCtx) (f := nm "process_transaction")
    (R := fun vs s v t => ∀ Γ, G guestC (HR σ) Γ s → ∀ (tx idx : BitVec 64), vs = [.val (.word tx), .val (.word idx)] →
      ∀ (p : Ptrs) (bo be txs rcs : BitVec 64), PtPreD2 M Γ s p tx idx bo be txs rcs →
        ∃ Γ', PtPost2 Γ s tx idx bo txs rcs Γ' t) ?_
  · exact FunSpec.mono h (fun vs s r t hr Γ hG tx idx hvs p bo be txs rcs hpre v hv =>
      hr v hv Γ hG tx idx hvs p bo be txs rcs hpre)
  intro vs body callee rs hl s0 hs hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_pt (by decide) hl
  obtain ⟨tx, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨idx, rfl⟩ := val_of_shapeEq_one hsB
  have key : ∀ Γ, G guestC (HR σ) Γ s0 → ∀ (p : Ptrs) (bo be txs rcs : BitVec 64),
      PtPreD2 M Γ s0 p tx idx bo be txs rcs →
      Hoare σ guestCtx (fun t => t = s0) ptBody
        (fun r t => r = some (.returned (.val (.word 0))) ∧ ∃ Γ', PtPost2 Γ s0 tx idx bo txs rcs Γ' t) := by
    intro Γ hG p bo be txs rcs hpre
    have hPX := ptPreX_of hG hpre
    have hlt : s0.locals.lookup (nm "tx") = some (.val (.word tx)) := by rw [hloc]; exact hA
    have hli : s0.locals.lookup (nm "index") = some (.val (.word idx)) := by rw [hloc]; exact hB
    unfold ptBody
    refine hseqN (pt_enter hPX.toPtPre ⟨hlt, hli⟩) ?_
    refine hoare_post (Q := fun r t => r = some (.returned (.val (.word 0))) ∧
      PtEnd (entryE Γ s0 p tx idx bo be txs rcs) t) ?_ (fun r t _ _ hq => ⟨hq.1, ptPost_of_end hq.2⟩)
    exact chain1 hPX.toPtPre hEnc (locIns_ptEnd _) (cx0_enter _)
      (fun En' S' rp rl buf n CV w a b c pr mg rs C3 =>
        chain2 hPX hpre.own hpre.coinR hpre.hM hpm hpcm hR hgs C3.2.2.2.1 C3)
  intro s hs' hp ht v hv Γ hG tx' idx' hvs p bo be txs rcs hpre
  obtain ⟨rfl, rfl⟩ : tx' = tx ∧ idx' = idx := by
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    exact ⟨hvs.1.symm, hvs.2.symm⟩
  exact (key Γ hG p bo be txs rcs hpre s hs' hp ht).2

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.pt_funSpec
