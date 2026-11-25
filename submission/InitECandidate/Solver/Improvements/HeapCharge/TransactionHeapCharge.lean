import InitECandidate.Solver.Improvements.HeapCharge.FreshPreTransfer
import InitECandidate.Solver.Improvements.HeapCharge.TransactionSuffixFrontier
import InitECandidate.Solver.Improvements.HeapCharge.FreshTxHeap

/-! The installed process_transaction body advances the caller-visible heap by
at least the fresh-state charge whenever it returns from a block-loop entry. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace TransactionHeapCharge
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

def Growth (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ Γ, G guestC (HR σ) Γ s → Eb.CPre Γ → ∀ tx idx : BitVec 64, vs = [.val (.word tx), .val (.word idx)] →
    ∀ (p : Ptrs) (bo be txs rcs : BitVec 64), PtPreD2 M Γ s p tx idx bo be txs rcs →
    ∀ v, r = .returned v → ∃ p', ptrsOf t = some p' ∧ p.hp + 22000 ≤ p'.hp

private theorem start {M : Nat} {Γ : Gam} {s : State σ} {p : Ptrs} {tx idx bo be txs rcs : BitVec 64}
    (hg : G guestC (HR σ) Γ s) (hc : Eb.CPre Γ) (pre : PtPreD2 M Γ s p tx idx bo be txs rcs)
    (htx : s.locals.lookup (nm "tx") = some (.val (.word tx)))
    (hi : s.locals.lookup (nm "index") = some (.val (.word idx))) :
    HN (fun t => t = s) (callD (nm "state_fresh_tx") [])
      (fun t => ∃ Γ' p', G guestC (HR σ) Γ' t ∧ PtPreD2 M Γ' t p' tx idx bo be txs rcs ∧
        GObj Γ' t nmTs tTS ∧ t.locals.lookup (nm "tx") = some (.val (.word tx)) ∧
        t.locals.lookup (nm "index") = some (.val (.word idx)) ∧ p.hp + 22000 = p'.hp) := by
  have px := ptPreX_of hg pre
  refine hoare_callD (FunSpec.and sf_spec FreshTxHeap.A.state_fresh_tx_heap) ?_
  rintro u _ heu vs _ callee v st ⟨hs, hf⟩ hst
  subst u
  have ord := ordered_of_G hg pre.hp
  have ge : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree Hooks.guestHooksR_lawful s _ _).mpr hg
  have pe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans pre.hp
  have hq := hs v rfl Γ p ge pe (jrNZ_congr (s := s) rfl pre.hJ) pre.hev pre.hcc
  obtain ⟨Γ', p', hr, step, ts⟩ := ptRun_of_qfin (s0 := s) (s0' := callEntryStateHOLFinite s callee)
    ord rfl rfl pre.hp hq
  have hf' := hf _ (FreshTxHeap.A.frontier_of_ptrs pe ord) v rfl
  have eq := FreshTxHeap.A.frontier_eq_hp step.hp' hf'
  have hr' := ptRun_loc hr s.locals st.clock
  obtain ⟨gu, pu⟩ := FreshPreTransfer.pre_after px hc pre.hM pre.coinR hr'
  obtain ⟨w, hw, o, ho, hb, ht⟩ := ts
  have keep : Eb.KeepTy tTS := by unfold Eb.KeepTy Eb.ScratchOwn; decide
  exact ⟨rfl, Eb.keepG Γ', p', gu, pu, ⟨w, hw, o, Eb.mem_keepG.mpr ⟨ho, ht ▸ keep⟩, hb, ht⟩,
    htx, hi, eq.symm⟩

theorem process_heap {M : Nat} (hpm : HypPmM σ M) (hcf : HypCfL σ)
    (hR : HypRcpt σ) (hgs : Bal.HGS σ) (hEnc : HypEncTx σ) :
    FunSpec σ guestCtx (nm "process_transaction") (Growth M) := by
  have h := funSpec_of_hoare (σ := σ) (X := guestCtx) (f := nm "process_transaction")
    (R := fun vs s _ t => ∀ Γ, G guestC (HR σ) Γ s → Eb.CPre Γ → ∀ tx idx : BitVec 64,
      vs = [.val (.word tx), .val (.word idx)] → ∀ (p : Ptrs) (bo be txs rcs : BitVec 64),
        PtPreD2 M Γ s p tx idx bo be txs rcs → ∃ p', ptrsOf t = some p' ∧ p.hp + 22000 ≤ p'.hp) ?_
  · exact FunSpec.mono h (fun vs s r t hr Γ hg hc tx idx hv p bo be txs rcs hp v hr' =>
      hr v hr' Γ hg hc tx idx hv p bo be txs rcs hp)
  intro vs body callee rs hl s0 hs hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_pt (by decide) hl
  obtain ⟨tx, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨idx, rfl⟩ := val_of_shapeEq_one hsB
  intro s hs' he ht v hv Γ hg hc tx' idx' hv' p bo be txs rcs pre
  obtain ⟨rfl, rfl⟩ : tx' = tx ∧ idx' = idx := by
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hv'
    exact ⟨hv'.1.symm, hv'.2.symm⟩
  have key : Hoare σ guestCtx (fun t => t = s0) ptBody
      (fun _ t => ∃ p', ptrsOf t = some p' ∧ p.hp + 22000 ≤ p'.hp) := by
    unfold ptBody
    refine hseqN (start hg hc pre (by rw [hloc]; exact hA) (by rw [hloc]; exact hB)) ?_
    rintro u hu ⟨Γ', q, gu, pu, ts, hx, hi, qeq⟩ ht'
    obtain ⟨_, q', hq', hle⟩ := TransactionSuffixFrontier.suffix_mono hpm hcf hR hgs hEnc gu pu ts hx hi
      u hu rfl ht'
    exact ⟨q', hq', qeq ▸ hle⟩
  exact key s hs' he ht

#print axioms process_heap
end TransactionHeapCharge
