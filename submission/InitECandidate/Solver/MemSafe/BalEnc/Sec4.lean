import InitECandidate.Solver.MemSafe.BalEnc.Sec3

set_option autoImplicit false

/-!
# The storage-changes loop body (`slotBody`)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option synthInstance.maxSize 100000
set_option synthInstance.maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}


set_option maxHeartbeats 8000000 in
/-- **The storage-changes section**: loop, then wrap into `p`. -/
theorem hoareG_storSec {a : AwE σ} (hK : AwOK a) (hc : CsE a) {P : Nat} (hP : B0 ≤ P)
    (hP2 : P + 100 ≤ 2 ^ 59) {ex : List Fct}
    (hSc : Fct.prop bSc (fun T => Fits a.Γ0 (.ptr tHTl32) T) ∈ ex) (hTmp : wd bTmp ∈ ex)
    (hex : ∀ f ∈ ex, ∀ x ∈ [bP, bQ, bI, bW, bSlot, bM, bL, bN, bLp, bR, bSv, bCs, bJ, bE, bC, bHl,
      bHl2, bHl3, bHl4], x ∉ f.vars)
    (hwP : WriterOK a guestCtx (nm "rlp_put_u256")) {k : ProgHOL 64} {Ret : ValueHOL 64 → Prop}
    (hk : HoareG σ guestCtx (APre a (Hs (pf a.h0 B0 ++ ex))) k (AQ a (Hs []) Ret)) :
    HoareG σ guestCtx (APre a (Hs (pf a.h0 P ++ ex)))
      (.dec bQ .one (.op .add [lv bP, cw 9]) (.dec bI .one (cw 0)
        (.seq (.while (.cmp .less (lv bI) (.rfield 1 (lv bSlots))) slotBody)
          (wrapS bHl4 bP bQ k)))) (AQ a (Hs []) Ret) := by
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have exbP : Av ex bP := fun f hf => hex f hf bP (by simp)
  have exbQ : Av ex bQ := fun f hf => hex f hf bQ (by simp)
  have exbI : Av ex bI := fun f hf => hex f hf bI (by simp)
  have exbW : Av ex bW := fun f hf => hex f hf bW (by simp)
  have exbSlot : Av ex bSlot := fun f hf => hex f hf bSlot (by simp)
  have exbM : Av ex bM := fun f hf => hex f hf bM (by simp)
  have exbL : Av ex bL := fun f hf => hex f hf bL (by simp)
  have exbN : Av ex bN := fun f hf => hex f hf bN (by simp)
  have exbLp : Av ex bLp := fun f hf => hex f hf bLp (by simp)
  have exbR : Av ex bR := fun f hf => hex f hf bR (by simp)
  have exbSv : Av ex bSv := fun f hf => hex f hf bSv (by simp)
  have exbCs : Av ex bCs := fun f hf => hex f hf bCs (by simp)
  have exbJ : Av ex bJ := fun f hf => hex f hf bJ (by simp)
  have exbE : Av ex bE := fun f hf => hex f hf bE (by simp)
  have exbC : Av ex bC := fun f hf => hex f hf bC (by simp)
  have exbHl : Av ex bHl := fun f hf => hex f hf bHl (by simp)
  have exbHl2 : Av ex bHl2 := fun f hf => hex f hf bHl2 (by simp)
  have exbHl3 : Av ex bHl3 := fun f hf => hex f hf bHl3 (by simp)
  have exbHl4 : Av ex bHl4 := fun f hf => hex f hf bHl4 (by simp)
  refine hoareG_decHI hK (x := bQ) (fx := cf bP bQ a.h0 (P + 16)) (fo := []) (fb := []) (by avc)
    (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨B, hB, h1, h2⟩ := hP'.2 (Fct.bd bP a.h0 P) (by simp [pf])
    rw [ev_add2 (ev_lw hB) (ev_cw _ 9)] at hv
    cases hv
    exact hs_cf_new (by decide) hB (by omega) (by omega) (by omega)
  refine hoareG_decHI hK (x := bI) (fx := [wd bI]) (fo := []) (fb := []) (by avc)
    (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · rw [ev_cw] at hv
    cases hv
    exact hs_cons (bd_wd _ _ _) (hs_nil _)
  refine hoareG_seqA (L2 := Hs (sJ a.h0 P ex)) ?_ ?_
  · refine hoareG_whileA hK (J := Hs (sJ a.h0 P ex)) (J' := Hs (sJ a.h0 P ex)) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (Hs (sJ a.h0 P ex))) ?_ (fun s _ h => h.1)
    exact hoareG_slotBody hK hc hP hP2 hSc hTmp (fun f hf x hx => hex f hf x (by simp at hx ⊢; tauto))
      hwP
  · refine hoareG_wrap hK hC hA hT (UB := P + 16) (by omega) (by decide) (by decide)
      (fk := pf a.h0 B0 ++ ex) (fo := []) (fb := []) (by avc)
      (fun f hf => absurd hf (by simp)) ?hbc ?hnew hk (fun f hf => absurd hf (by simp))
    case hbc =>
      intro m hm
      obtain ⟨B, hB, h1, h2⟩ := hm (Fct.bd bP a.h0 P) (by simp [sJ, pf])
      obtain ⟨C, hC', hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 16)) (by simp [sJ, cf])
      obtain ⟨B', C', hB', hC'', hrel⟩ := hm (Fct.rel bP bQ) (by simp [sJ, cf])
      rw [hB] at hB'
      cases hB'
      rw [hC'] at hC''
      cases hC''
      exact ⟨B, C, hB, hC', h1, hrel, hC2⟩
    case hnew =>
      intro m B C B' hm hB hC h1 h2 h3
      obtain ⟨B1, hBB, hB1, hB2⟩ := hm (Fct.bd bP a.h0 P) (by simp [sJ, pf])
      rw [hB] at hBB
      cases hBB
      obtain ⟨Cc, hCC, hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 16)) (by simp [sJ, cf])
      rw [hC] at hCC
      cases hCC
      obtain ⟨D, B2, hD, hB2', hrel⟩ := hm (Fct.rel bDst bP) (by simp [sJ, pf])
      rw [hB] at hB2'
      cases hB2'
      refine hs_append (hs_cons ⟨B', lookup_update_self _ _ _, by omega, by omega⟩
        (hs_cons ⟨D, B', by rw [lookup_update_ne _ _ (by decide)]; exact hD,
          lookup_update_self _ _ _, by omega⟩ (hs_nil _))) (hs_upd exbP ?_)
      exact hs_mono hm (fun f hf => by simp [sJ, hf])

end InitECandidate.Solver.MemSafe.BalEnc
