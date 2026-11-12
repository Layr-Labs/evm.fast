import InitECandidate.Solver.MemSafe.BalEnc.Sec2
import InitECandidate.Solver.MemSafe.Aw.Htr

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

/-- The loop invariant of the storage-changes loop. -/
def sJ (h0 P : Nat) (ex : List Fct) : List Fct :=
  wd bI :: (cf bP bQ h0 (P + 16) ++ (pf h0 P ++ ex))

def mfact (Γ0 : Gam) : Fct :=
  Fct.str2 bM (fun A B => (A ≠ 0 → Fits Γ0 (.ptr tLSTc) B) ∧ (A = 0 → B = 0))

def lfactS (Γ0 : Gam) : Fct := Fct.prop bL (fun L => L = 0 ∨ Fits Γ0 (.ptr tLSTc) L)

/-- Discharge `Av F x` for concrete names. -/
macro "avc" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, sJ, mfact, lfactS, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | decide | (intro x hx; exact hx.elim)))


set_option maxHeartbeats 8000000 in
/-- **The body of the storage-changes loop** keeps `sJ`. -/
theorem hoareG_slotBody {a : AwE σ} (hK : AwOK a) (hc : CsE a) {P : Nat} (hP : B0 ≤ P)
    (hP2 : P + 100 ≤ 2 ^ 59) {ex : List Fct}
    (hSc : Fct.prop bSc (fun T => Fits a.Γ0 (.ptr tHTl32) T) ∈ ex) (hTmp : wd bTmp ∈ ex)
    (hex : ∀ f ∈ ex, ∀ x ∈ [bP, bQ, bI, bW, bSlot, bM, bL, bN, bLp, bR, bSv, bCs, bJ, bE, bC, bHl,
      bHl2, bHl3], x ∉ f.vars)
    (hwP : WriterOK a guestCtx (nm "rlp_put_u256")) {Ret : ValueHOL 64 → Prop} :
    HoareG σ guestCtx (APre a (Hs (sJ a.h0 P ex))) slotBody (AQ a (Hs (sJ a.h0 P ex)) Ret) := by
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hwW : WriterOK a guestCtx (nm "rlp_encode_word") := writerOK_word hK hC hA hT
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
  unfold slotBody
  -- slot
  refine hoareG_decHI hK (x := bSlot) (fx := [wd bSlot]) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by avc) (by avc)
    (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => hf)
  · obtain ⟨W, rfl⟩ := val_of_shapeEq_one hsh
    exact hs_cons (bd_wd _ _ _) (hs_nil _)
  -- m = htab_get(sc, slot)
  refine hoareG_decCallH hK (asp_htab_get hK hc) (fx := [mfact a.Γ0]) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex))
    (by avc) (by avc) ?hpre ?hnew ?_ (fun f hf => hf)
  case hpre =>
    intro s hs hP' vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨SC, hSC, hfit⟩ := hP'.2 _ (show Fct.prop bSc (fun T => Fits a.Γ0 (.ptr tHTl32) T) ∈ ([wd bSlot] ++ (sJ a.h0 P ex)) by simp [sJ, hSc])
    obtain ⟨K, hKk, -, -⟩ := hP'.2 _ (show wd bSlot ∈ ([wd bSlot] ++ (sJ a.h0 P ex)) by simp)
    rw [ev_lw hSC] at e1
    rw [ev_lw hKk] at e2
    cases e1
    cases e2
    exact ⟨SC, K, rfl, hfit⟩
  case hnew =>
    intro s vs v st hL hvs hRet hsh
    obtain ⟨A, B, rfl⟩ := rstruct_of_shape' hsh
    exact hs_cons ⟨A, B, lookup_update_self _ _ _, hRet A B rfl⟩ (hs_nil _)
  -- l = m.1
  refine hoareG_decHI hK (x := bL) (fx := [lfactS a.Γ0]) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by avc) (by avc)
    (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => hf)
  · obtain ⟨A, B, hm, hAB⟩ := hP'.2 _ (show mfact a.Γ0 ∈ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))) by simp)
    rw [ev_rfield (Struct.ev_lw' hm) 1] at hv
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at hv
    cases hv
    refine hs_cons ⟨B, lookup_update_self _ _ _, ?_⟩ (hs_nil _)
    by_cases hA : A = 0
    · exact Or.inl (hAB.2 hA)
    · exact Or.inr (hAB.1 hA)
  -- n, lp, sort
  refine hoareG_loadSort hK hc (l := bL) (n := bN) (lp := bLp) (by decide : tLSTc ∈ lstTys)
    (by decide : lstE tLSTc = 40) (fs := ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by simp [lfactS])
    (by simp [sJ, hTmp]) (by decide) (by decide) (by decide) (by decide) (by decide) (by avc) (by avc)
    ?hrest (fun f hf => hf) (by avc) (by avc)
  case hrest =>
    -- r = q + 9
    refine hoareG_decHI hK (x := bR) (fx := cf bQ bR a.h0 (P + 25)) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex))
      (by avc) (by avc) (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => hf)
    · obtain ⟨Q, hQ, h1, h2⟩ := hP'.2 (Fct.bd bQ a.h0 (P + 16)) (by simp [sJ, cf])
      rw [ev_add2 (ev_lw hQ) (ev_cw _ 9)] at hv
      cases hv
      exact hs_cf_new (by decide) hQ (by omega) (by omega) (by omega)
    -- sv = u256_from_be(slot, 32)
    refine hoareG_decCallH hK (asp_u256_from_be hK hc) (rn := bSv) (fx := []) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex))
      (by avc) (by avc) (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => hs_nil _) ?_
      (fun f hf => hf)
    -- w = put(r, sv); r = r + w
    refine hoareG_stepH hK (fs := (cf bQ bR a.h0 (P + 25) ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) (fs' := (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) hwP (by decide) (by avc)
      (fun m hm => ?_) (fun m T W hm hT hlt hle => hs_cf_up (by decide) (by avc) hm hT hlt hle) ?_
    · obtain ⟨w, hw, h1, h2⟩ := hm (Fct.bd bR a.h0 (P + 25)) (by simp [cf])
      exact ⟨w, hw, h1, by omega⟩
    -- cs = r + 9
    refine hoareG_decHI hK (x := bCs) (fx := cf bR bCs a.h0 (B0 + 9)) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex))
      (by avc) (by avc) (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => hf)
    · obtain ⟨R, hR, h1, h2⟩ := hP'.2 (Fct.bd bR a.h0 B0) (by simp [cf])
      rw [ev_add2 (ev_lw hR) (ev_cw _ 9)] at hv
      cases hv
      exact hs_cf_new (by decide) hR (by omega) (by omega) (by omega)
    -- j = 0
    refine hoareG_decHI hK (x := bJ) (fx := [wd bJ]) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by avc) (by avc)
      (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => hf)
    · rw [ev_cw] at hv
      cases hv
      exact hs_cons (bd_wd _ _ _) (hs_nil _)
    -- the entry loop
    refine hoareG_seqA (L2 := Hs ([wd bJ] ++ (cf bR bCs a.h0 (B0 + 9) ++ (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))))) (hoareG_entryLoop hK hC hA hT (i := bJ) (n := bN) (b := bCs)
      (lp := bLp) (e := bE) (c := bC) (hl := bHl) (E := 40) (f2 := nm "rlp_put_u256")
      (args2 := [ld4 bE 8]) (fs := ([wd bJ] ++ (cf bR bCs a.h0 (B0 + 9) ++ (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))))) (PB := B0 + 9) (Ret := Ret) (by decide) (by decide)
      (by decide) (by decide) (by decide) hwP hwW (by avc) (by avc) (by avc) (by avc)
      (by simp [cf]) (by omega) (by omega) ?hbup (by simp) ?hfi) ?hwrap
    case hbup =>
      intro f hf hv W hW
      have hAv : Av (wd bJ :: (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) bCs := by avc
      have hf' : f ∈ cf bR bCs a.h0 (B0 + 9) ∨ f ∈ wd bJ :: (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex)))))) := by
        simp only [List.mem_cons, List.mem_append] at hf ⊢
        tauto
      rcases hf' with h | h
      · simp only [cf, List.mem_cons, List.not_mem_nil, or_false] at h
        rcases h with rfl | rfl
        · exact ⟨rfl, hW⟩
        · exact ⟨rfl, by decide⟩
      · exact absurd hv (hAv f h)
    case hfi =>
      intro f hf hv
      have hAv : Av (cf bR bCs a.h0 (B0 + 9) ++ (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) bJ := by avc
      have hf' : f = wd bJ ∨ f ∈ (cf bR bCs a.h0 (B0 + 9) ++ (cf bQ bR a.h0 B0 ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) := by
        simp only [List.mem_cons, List.mem_append] at hf ⊢
        tauto
      rcases hf' with h | h
      · exact h
      · exact absurd hv (hAv f h)
    case hwrap =>
      refine hoareG_wrap hK hC hA hT (UB := B0 + 9) (by omega) (by decide) (by decide)
        (fk := (cf bQ bR a.h0 (B0 + 9) ++ (wd bLp :: wd bN :: ([lfactS a.Γ0] ++ ([mfact a.Γ0] ++ ([wd bSlot] ++ (sJ a.h0 P ex))))))) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by avc) (by avc) ?hbc1 ?hnew1 ?hk1 (fun f hf => hf)
      case hbc1 =>
        intro m hm
        obtain ⟨B, hB, h1, h2⟩ := hm (Fct.bd bR a.h0 B0) (by simp [cf])
        obtain ⟨C, hC', hC1, hC2⟩ := hm (Fct.bd bCs a.h0 (B0 + 9)) (by simp [cf])
        obtain ⟨B', C', hB', hC'', hrel⟩ := hm (Fct.rel bR bCs) (by simp [cf])
        rw [hB] at hB'
        cases hB'
        rw [hC'] at hC''
        cases hC''
        exact ⟨B, C, hB, hC', h1, hrel, hC2⟩
      case hnew1 =>
        intro m B C B' hm hB hC h1 h2 h3
        obtain ⟨B1, hBB, hB1, hB2⟩ := hm (Fct.bd bR a.h0 B0) (by simp [cf])
        rw [hB] at hBB
        cases hBB
        obtain ⟨Cc, hCC, hC1, hC2⟩ := hm (Fct.bd bCs a.h0 (B0 + 9)) (by simp [cf])
        rw [hC] at hCC
        cases hCC
        obtain ⟨Q, B2, hQ, hB2', hrel⟩ := hm (Fct.rel bQ bR) (by simp [cf])
        rw [hB] at hB2'
        cases hB2'
        refine hs_append (hs_cons ⟨B', lookup_update_self _ _ _, by omega, by omega⟩
          (hs_cons ⟨Q, B', by rw [lookup_update_ne _ _ (by decide)]; exact hQ,
            lookup_update_self _ _ _, by omega⟩ (hs_nil _))) (hs_upd (by avc) ?_)
        exact hs_mono hm (fun f hf => List.mem_append_right _ (List.mem_append_right _
          (List.mem_append_right _ hf)))
      case hk1 =>
        refine hoareG_wrap hK hC hA hT (UB := B0 + 9) (by omega) (by decide) (by decide)
          (fk := (sJ a.h0 P ex)) (fo := (sJ a.h0 P ex)) (fb := (sJ a.h0 P ex)) (by avc) (by avc) ?hbc2 ?hnew2 ?hk2 (fun f hf => hf)
        case hbc2 =>
          intro m hm
          obtain ⟨B, hB, h1, h2⟩ := hm (Fct.bd bQ a.h0 (P + 16)) (by simp [sJ, cf])
          obtain ⟨C, hC', hC1, hC2⟩ := hm (Fct.bd bR a.h0 (B0 + 9)) (by simp [cf])
          obtain ⟨B', C', hB', hC'', hrel⟩ := hm (Fct.rel bQ bR) (by simp [cf])
          rw [hB] at hB'
          cases hB'
          rw [hC'] at hC''
          cases hC''
          exact ⟨B, C, hB, hC', h1, hrel, hC2⟩
        case hnew2 =>
          intro m B C B' hm hB hC h1 h2 h3
          obtain ⟨B1, hBB, hB1, hB2⟩ := hm (Fct.bd bQ a.h0 (P + 16)) (by simp [sJ, cf])
          rw [hB] at hBB
          cases hBB
          obtain ⟨Cc, hCC, hC1, hC2⟩ := hm (Fct.bd bR a.h0 (B0 + 9)) (by simp [cf])
          rw [hC] at hCC
          cases hCC
          obtain ⟨Pp, B2, hPp, hB2', hrel⟩ := hm (Fct.rel bP bQ) (by simp [sJ, cf])
          rw [hB] at hB2'
          cases hB2'
          have hmj : Hs (sJ a.h0 P ex) m := hs_mono hm (fun f hf => by simp [hf])
          have hI : (wd bI).holds m := hmj _ (by simp [sJ])
          have hpf : Hs (pf a.h0 P) m := hs_mono hmj (fun f hf => by simp [sJ, hf])
          have hex' : Hs ex m := hs_mono hmj (fun f hf => by simp [sJ, hf])
          refine hs_cons (bd_upd (by decide) hI) (hs_append (hs_cons ⟨B', lookup_update_self _ _ _,
            by omega, by omega⟩ (hs_cons ⟨Pp, B', by rw [lookup_update_ne _ _ (by decide)]; exact hPp,
              lookup_update_self _ _ _, by omega⟩ (hs_nil _))) (hs_append (hs_upd (by avc) hpf)
            (hs_upd exbQ hex')))
        case hk2 =>
          refine hoareG_assignA hK (fun s _ hL v hv => ?_)
          obtain ⟨I, hI, -, -⟩ := hL (wd bI) (by simp [sJ])
          rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
          cases hv
          refine hs_wd_set hL (fun f hf hv => ?_)
          have hAv : Av (cf bP bQ a.h0 (P + 16) ++ (pf a.h0 P ++ ex)) bI := by avc
          rcases List.mem_cons.mp hf with h | h
          · exact h
          · exact absurd hv (hAv f h)

end InitECandidate.Solver.MemSafe.BalEnc
