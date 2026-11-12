import InitECandidate.Solver.MemSafe.BalEnc.Sec1
import InitECandidate.Solver.MemSafe.BalEnc.Names

set_option autoImplicit false

/-!
# A sorted list section (`listSec`)
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

/-- The facts of the output pointer `p` (above `dst`, at most `P`). -/
def pf (h0 P : Nat) : List Fct := [Fct.bd bP h0 P, Fct.rel bDst bP]

/-- Discharge `Av F x` for an explicit fact list, from the hypotheses in the context. -/
macro "av_tac" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | (intro x hx; exact hx.elim)))

theorem hX_code : guestCtx.code.lookup = guestCode := SourceCost.guestCtx_code

theorem fixedNames : ∀ x ∈ [bP, bQ, bI, bW, bDst, bTmp, bAd], True := fun _ _ => trivial

set_option maxHeartbeats 4000000 in
/-- **A list section.** -/
theorem hoareG_listSec {a : AwE σ} (hK : AwOK a) (hc : CsE a) {off E : Nat}
    {l n lp e c hlE hlP : MlS} {f2 : MlS} {args2 : List (ExpHOL 64)} {k : ProgHOL 64}
    (hnm : SecNm l n lp e c hlE hlP) {Tt : Nat} (hTt : Tt ∈ lstTys) (hE : lstE Tt = E)
    {A : Obj} (hAm : A ∈ a.Γ0) (hAty : A.ty = tAD)
    (hslot : (guestC.ty tAD).slot (off / 8) = .ptr Tt) (hoff : off % 8 = 0)
    (hmin : 8 * (off / 8) + 8 ≤ (guestC.ty tAD).minSz)
    {P : Nat} (hP : B0 ≤ P) (hP2 : P + 100 ≤ 2 ^ 59) {ex : List Fct}
    (hAd : Fct.eqv bAd A.base ∈ ex) (hTmp : wd bTmp ∈ ex)
    (hex : ∀ f ∈ ex, ∀ x ∈ [bP, bQ, bI, bW, l, n, lp, e, c, hlE, hlP], x ∉ f.vars)
    (hw2 : WriterOK a guestCtx f2) {Ret : ValueHOL 64 → Prop}
    (hk : HoareG σ guestCtx (APre a (Hs (pf a.h0 B0 ++ ex))) k (AQ a (Hs []) Ret)) :
    HoareG σ guestCtx (APre a (Hs (pf a.h0 P ++ ex))) (listSec off E l n lp e c hlE hlP f2 args2 k)
      (AQ a (Hs []) Ret) := by
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hwW : WriterOK a guestCtx (nm "rlp_encode_word") := writerOK_word hK hC hA hT
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  obtain ⟨l_bP, l_bQ, l_bI, l_bDst, l_bTmp, l_bW, l_bAd, n_bP, n_bQ, n_bI, n_bDst, n_bTmp, n_bW, n_bAd, lp_bP, lp_bQ, lp_bI, lp_bDst, lp_bTmp, lp_bW, lp_bAd, e_bP, e_bQ, e_bI, e_bDst, e_bTmp, e_bW, e_bAd, c_bP, c_bQ, c_bI, c_bDst, c_bTmp, c_bW, c_bAd, hlE_bP, hlE_bQ, hlE_bI, hlE_bDst, hlE_bTmp, hlE_bW, hlE_bAd, hlP_bP, hlP_bQ, hlP_bI, hlP_bDst, hlP_bTmp, hlP_bW, hlP_bAd, l_n, l_lp, l_e, l_c, l_hlE, l_hlP, n_lp, n_e, n_c, n_hlE, n_hlP, lp_e, lp_c, lp_hlE, lp_hlP, e_c, e_hlE, e_hlP, c_hlE, c_hlP, hlE_hlP⟩ := hnm
  obtain ⟨⟨fx_bP_bQ, fx_bP_bI, fx_bP_bDst, fx_bP_bTmp, fx_bP_bW, fx_bP_bAd, fx_bQ_bI, fx_bQ_bDst, fx_bQ_bTmp, fx_bQ_bW, fx_bQ_bAd, fx_bI_bDst, fx_bI_bTmp, fx_bI_bW, fx_bI_bAd, fx_bDst_bTmp, fx_bDst_bW, fx_bDst_bAd, fx_bTmp_bW, fx_bTmp_bAd, fx_bW_bAd⟩, ⟨fx_bQ_bP, fx_bI_bP, fx_bDst_bP, fx_bTmp_bP, fx_bW_bP, fx_bAd_bP, fx_bI_bQ, fx_bDst_bQ, fx_bTmp_bQ, fx_bW_bQ, fx_bAd_bQ, fx_bDst_bI, fx_bTmp_bI, fx_bW_bI, fx_bAd_bI, fx_bTmp_bDst, fx_bW_bDst, fx_bAd_bDst, fx_bW_bTmp, fx_bAd_bTmp, fx_bAd_bW⟩⟩ := fixNe
  have l_bP' := l_bP.symm
  have l_bQ' := l_bQ.symm
  have l_bI' := l_bI.symm
  have l_bDst' := l_bDst.symm
  have l_bTmp' := l_bTmp.symm
  have l_bW' := l_bW.symm
  have l_bAd' := l_bAd.symm
  have n_bP' := n_bP.symm
  have n_bQ' := n_bQ.symm
  have n_bI' := n_bI.symm
  have n_bDst' := n_bDst.symm
  have n_bTmp' := n_bTmp.symm
  have n_bW' := n_bW.symm
  have n_bAd' := n_bAd.symm
  have lp_bP' := lp_bP.symm
  have lp_bQ' := lp_bQ.symm
  have lp_bI' := lp_bI.symm
  have lp_bDst' := lp_bDst.symm
  have lp_bTmp' := lp_bTmp.symm
  have lp_bW' := lp_bW.symm
  have lp_bAd' := lp_bAd.symm
  have e_bP' := e_bP.symm
  have e_bQ' := e_bQ.symm
  have e_bI' := e_bI.symm
  have e_bDst' := e_bDst.symm
  have e_bTmp' := e_bTmp.symm
  have e_bW' := e_bW.symm
  have e_bAd' := e_bAd.symm
  have c_bP' := c_bP.symm
  have c_bQ' := c_bQ.symm
  have c_bI' := c_bI.symm
  have c_bDst' := c_bDst.symm
  have c_bTmp' := c_bTmp.symm
  have c_bW' := c_bW.symm
  have c_bAd' := c_bAd.symm
  have hlE_bP' := hlE_bP.symm
  have hlE_bQ' := hlE_bQ.symm
  have hlE_bI' := hlE_bI.symm
  have hlE_bDst' := hlE_bDst.symm
  have hlE_bTmp' := hlE_bTmp.symm
  have hlE_bW' := hlE_bW.symm
  have hlE_bAd' := hlE_bAd.symm
  have hlP_bP' := hlP_bP.symm
  have hlP_bQ' := hlP_bQ.symm
  have hlP_bI' := hlP_bI.symm
  have hlP_bDst' := hlP_bDst.symm
  have hlP_bTmp' := hlP_bTmp.symm
  have hlP_bW' := hlP_bW.symm
  have hlP_bAd' := hlP_bAd.symm
  have l_n' := l_n.symm
  have l_lp' := l_lp.symm
  have l_e' := l_e.symm
  have l_c' := l_c.symm
  have l_hlE' := l_hlE.symm
  have l_hlP' := l_hlP.symm
  have n_lp' := n_lp.symm
  have n_e' := n_e.symm
  have n_c' := n_c.symm
  have n_hlE' := n_hlE.symm
  have n_hlP' := n_hlP.symm
  have lp_e' := lp_e.symm
  have lp_c' := lp_c.symm
  have lp_hlE' := lp_hlE.symm
  have lp_hlP' := lp_hlP.symm
  have e_c' := e_c.symm
  have e_hlE' := e_hlE.symm
  have e_hlP' := e_hlP.symm
  have c_hlE' := c_hlE.symm
  have c_hlP' := c_hlP.symm
  have hlE_hlP' := hlE_hlP.symm
  have exl : Av ex l := fun f hf => hex f hf l (by simp)
  have exn : Av ex n := fun f hf => hex f hf n (by simp)
  have exlp : Av ex lp := fun f hf => hex f hf lp (by simp)
  have exe : Av ex e := fun f hf => hex f hf e (by simp)
  have exc : Av ex c := fun f hf => hex f hf c (by simp)
  have exhlE : Av ex hlE := fun f hf => hex f hf hlE (by simp)
  have exhlP : Av ex hlP := fun f hf => hex f hf hlP (by simp)
  have exbQ : Av ex bQ := fun f hf => hex f hf bQ (by simp)
  have exbI : Av ex bI := fun f hf => hex f hf bI (by simp)
  have exbW : Av ex bW := fun f hf => hex f hf bW (by simp)
  have exbP : Av ex bP := fun f hf => hex f hf bP (by simp)
  unfold listSec
  refine hoareG_decHI hK (x := l)
    (fx := [Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)]) (fo := []) (fb := [])
    (by av_tac) (fun f hf => absurd hf (by simp)) ?hnew ?body (fun f hf => absurd hf (by simp))
  case hnew =>
    intro s hs hP' v hv hsh
    obtain ⟨w, hw, hd, rfl⟩ := Struct.ev_load1_inv hv
    have hAdv : s.locals.lookup bAd = some (.val (.word A.base)) :=
      hP'.2 _ (List.mem_append_right _ hAd)
    rw [ev_add2 (ev_lw hAdv) (ev_cw _ off)] at hw
    cases hw
    refine hs_cons ⟨_, lookup_update_self _ _ _, ?_⟩ (hs_nil _)
    right
    have h1 := obj_field hc hP'.1 hAm (k := off / 8) (by rw [hAty]; exact hmin)
    rw [hAty, hslot] at h1
    have e1 : A.cell (off / 8) = A.base + BitVec.ofNat 64 off := by
      unfold Obj.cell
      congr 2
      omega
    rw [e1] at h1
    exact h1
  case body =>
    refine hoareG_loadSort hK hc hTt hE (fo := []) (fb := []) (by simp)
      (List.mem_append_right _ (List.mem_append_right _ hTmp)) l_n' n_lp' l_lp' n_bTmp lp_bTmp
      (by av_tac) (by av_tac) ?hrest (fun f hf => absurd hf (by simp))
      (fun f hf => absurd hf (by simp)) (fun f hf => absurd hf (by simp))
    case hrest =>
      refine hoareG_seqA (L2 := Hs (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex))))) (hoareG_assignA hK ?_) ?_
      · intro s hs hL v hv
        obtain ⟨Pv, hPv, h1, h2⟩ := hL (Fct.bd bP a.h0 P) (by simp [pf])
        rw [ev_add2 (ev_lw hPv) (ev_cw _ 9)] at hv
        cases hv
        exact hs_append (hs_cf_new fx_bP_bQ hPv (by omega) (by omega) (by omega))
          (hs_upd (by av_tac) hL)
      refine hoareG_seqA (L2 := Hs (wd bI :: (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))))) (hoareG_assignA hK ?_) ?_
      · intro s hs hL v hv
        rw [ev_cw] at hv
        cases hv
        exact hs_cons (bd_wd _ _ _) (hs_upd (by av_tac) hL)
      refine hoareG_seqA (L2 := Hs (wd bI :: (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))))) (hoareG_entryLoop hK hC hA hT (i := bI) (n := n) (b := bQ)
        (lp := lp) (e := e) (c := c) (hl := hlE) (E := E) (f2 := f2) (args2 := args2)
        (fs := (wd bI :: (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))))) (PB := P + 9) (Ret := Ret) c_bQ c_bW' fx_bW_bQ hlE_bQ c_hlE' hw2 hwW
        (by av_tac) (by av_tac) (by av_tac) (by av_tac) (by simp [cf]) (by omega) (by omega)
        ?hbup (by simp) ?hfi) ?hwrap
      case hbup =>
        intro f hf hv W hW
        have hAv : Av (wd bI :: (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))) bQ := by av_tac
        have hf' : f ∈ cf bP bQ a.h0 (P + 9) ∨ f ∈ wd bI :: (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex))) := by
          simp only [List.mem_cons, List.mem_append] at hf ⊢
          tauto
        rcases hf' with h | h
        · simp only [cf, List.mem_cons, List.not_mem_nil, or_false] at h
          rcases h with rfl | rfl
          · exact ⟨rfl, hW⟩
          · exact ⟨rfl, fx_bP_bQ⟩
        · exact absurd hv (hAv f h)
      case hfi =>
        intro f hf hv
        have hAv : Av (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))) bI := by av_tac
        have hf' : f = wd bI ∨ f ∈ (cf bP bQ a.h0 (P + 9) ++ (wd lp :: wd n :: ([Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L)] ++ (pf a.h0 P ++ ex)))) := by
          simp only [List.mem_cons] at hf
          tauto
        rcases hf' with h | h
        · exact h
        · exact absurd hv (hAv f h)
      case hwrap =>
        refine hoareG_wrap hK hC hA hT (UB := P + 9) (by omega) hlP_bP hlP_bQ
          (fk := pf a.h0 B0 ++ ex) (fo := []) (fb := []) (by av_tac)
          (fun f hf => absurd hf (by simp)) ?hbc ?hnew hk (fun f hf => absurd hf (by simp))
        case hbc =>
          intro m hm
          obtain ⟨B, hB, hB1, hB2⟩ := hm (Fct.bd bP a.h0 P) (by simp [pf])
          obtain ⟨C, hC', hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 9)) (by simp [cf])
          obtain ⟨B', C', hB', hC'', hrel⟩ := hm (Fct.rel bP bQ) (by simp [cf])
          rw [hB] at hB'
          cases hB'
          rw [hC'] at hC''
          cases hC''
          exact ⟨B, C, hB, hC', hB1, hrel, hC2⟩
        case hnew =>
          intro m B C B' hm hB hC h1 h2 h3
          obtain ⟨B1, hBB, hB1, hB2⟩ := hm (Fct.bd bP a.h0 P) (by simp [pf])
          rw [hB] at hBB
          cases hBB
          obtain ⟨Cc, hCC, hC1, hC2⟩ := hm (Fct.bd bQ a.h0 (P + 9)) (by simp [cf])
          rw [hC] at hCC
          cases hCC
          obtain ⟨D, B2, hD, hB2', hrel⟩ := hm (Fct.rel bDst bP) (by simp [pf])
          rw [hB] at hB2'
          cases hB2'
          refine hs_append (hs_cons ⟨B', lookup_update_self _ _ _, by omega, by omega⟩
            (hs_cons ⟨D, B', by rw [lookup_update_ne _ _ fx_bP_bDst]; exact hD,
              lookup_update_self _ _ _, by omega⟩ (hs_nil _))) ?_
          exact hs_upd exbP (hs_mono hm (fun f hf => List.mem_cons_of_mem _
            (List.mem_append_right _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _
              (List.mem_append_right _ (List.mem_append_right _ hf)))))))

end InitECandidate.Solver.MemSafe.BalEnc
