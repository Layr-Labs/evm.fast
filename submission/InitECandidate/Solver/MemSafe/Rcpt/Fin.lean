import InitECandidate.Solver.MemSafe.Aw.Logs
import InitECandidate.Solver.MemSafe.Aw.Code

set_option autoImplicit false

/-!
# `rlp_finish_list` and `rlp_encode_list_header` with exact footprints

* `footRet_encode_list_headerX`: writes the cells of `[D, D + hdrLen N)`.
* `footRet_finish_listX`: from `D + 9 ≤ PE ≤ scratchEnd`, writes the cells of
  `[D, D + hdrLen PL + PL)` with `PL = PE - (D + 9)` and returns `hdrLen PL + PL`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def LhPreX (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some N ∧ D.toNat + hdrLen N.toNat ≤ scratchEnd

def LhRX (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some N ∧ Overlap D.toNat (hdrLen N.toNat) a

theorem footRet_encode_list_headerX (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_list_header") LhPreX LhRX (fun _ _ => True) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_encode_list_header (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  let Rf := LhRX [.val (.word D), .val (.word N)]
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup plN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, fun _ _ => trivial⟩
  refine hoareG_tailFoot (footRet_rlp_write_header hC hA) fun t _ hpre vs' hvs' => ?_
  obtain ⟨hd, hn⟩ := hpre.1
  rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 192) (evs_cons (ev_lw hn) evs_nil))] at hvs'
  cases hvs'
  refine ⟨⟨D, rfl, fun N2 hN2 => ?_⟩, fun a ⟨D2, N2, hD2, hN2, h⟩ => ?_, fun _ _ => trivial⟩
  · cases hN2
    exact hb
  · cases hD2
    cases hN2
    exact ⟨D, N, rfl, rfl, h⟩

def FinPreX (vs : List (ValueHOL 64)) : Prop :=
  ∃ D PE : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some PE ∧ D.toNat + 9 ≤ PE.toNat ∧
    PE.toNat ≤ scratchEnd

def FinRX (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D PE : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some PE ∧
    Overlap D.toNat (hdrLen (PE.toNat - (D.toNat + 9)) + (PE.toNat - (D.toNat + 9))) a

def FinRetX (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D PE : BitVec 64, argW vs 0 = some D → argW vs 1 = some PE →
    v = .val (.word (BitVec.ofNat 64 (hdrLen (PE.toNat - (D.toNat + 9)) +
      (PE.toNat - (D.toNat + 9)))))

theorem footRet_finish_listX (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_finish_list") FinPreX FinRX FinRetX := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_finish_list (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨PE, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', PE', hD, hPE, hDP, hPS⟩ := hP
  cases hD
  cases hPE
  have hse : scratchEnd < 2 ^ 62 := by decide
  let Rf := FinRX [.val (.word D), .val (.word PE)]
  have hR : ∀ a, Overlap D.toNat (hdrLen (PE.toNat - (D.toNat + 9)) +
      (PE.toNat - (D.toNat + 9))) a → Rf a := fun a h => ⟨D, PE, rfl, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64
      (hdrLen (PE.toNat - (D.toNat + 9)) + (PE.toNat - (D.toNat + 9)))))
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup peN = some (.val (.word PE))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D2 PE2 hD2 hPE2 => by
      cases hD2
      cases hPE2
      exact h.2.2 w hw⟩
  have e9 : (D + BitVec.ofNat 64 9).toNat = D.toNat + 9 := toNat_addc (by omega)
  refine hoareG_decL (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s _ hL v hv _
  rw [ev_sub2 (ev_lw hL.2) (ev_add2 (ev_lw hL.1) (ev_cw _ 9))] at hv
  cases hv
  set PL : BitVec 64 := PE - (D + BitVec.ofNat 64 9) with hPL
  have ePL : PL.toNat = PE.toNat - (D.toNat + 9) := by
    rw [hPL, BitVec.toNat_sub_of_le (by rw [BitVec.le_def, e9]; exact hDP), e9]
  let Lp : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup payN = some (.val (.word PL))
  have hLp : ∀ m, m = s.locals.update (payN, .val (.word PL)) → Lp m := by
    intro m h
    subst h
    refine ⟨?_, lookup_update_self _ _ _⟩
    rw [lookup_update_ne _ _ (by decide)]; exact hL.1
  refine hoareG_preL (L' := Lp) ?_ hLp
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_list_header_len hC)
    (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
  intro s2 vs v2 _ hL2 hvs2 hret2 _
  rw [evs_one (ev_lw hL2.2) hvs2] at hret2
  have hv2 := hret2 PL rfl
  subst hv2
  have hH := hdrLen_le PL.isLt
  have hHH : (BitVec.ofNat 64 (hdrLen PL.toNat)).toNat = hdrLen PL.toNat := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup payN = some (.val (.word PL)) ∧
    m.lookup hlN = some (.val (.word (BitVec.ofNat 64 (hdrLen PL.toNat))))
  have hLk : ∀ m, m = s2.locals.update (hlN, .val (.word (BitVec.ofNat 64 (hdrLen PL.toNat)))) →
      Lk m := by
    intro m h
    subst h
    refine ⟨?_, ?_, lookup_update_self _ _ _⟩
    · rw [lookup_update_ne _ _ (by decide)]; exact hL2.1
    · rw [lookup_update_ne _ _ (by decide)]; exact hL2.2
  have hdh : (D + BitVec.ofNat 64 (hdrLen PL.toNat)).toNat = D.toNat + hdrLen PL.toNat := by
    rw [toNat_add2 (D := D) (I := BitVec.ofNat 64 (hdrLen PL.toNat)) (by rw [hHH]; omega), hHH]
  have hPLle : PL.toNat + 9 + D.toNat ≤ scratchEnd := by omega
  refine hoareG_preL (L' := Lk) ?_ hLk
  refine hoareG_seqL (L2 := Lk) ?_ ?_
  · refine hoareG_callFoot (foot_memcpy hC hA) (fun t _ hpre vs3 hvs3 => ?_)
    obtain ⟨hd, hp, hh⟩ := hpre.1
    rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
      (evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 9)) (evs_cons (ev_lw hp) evs_nil))] at hvs3
    cases hvs3
    refine ⟨⟨_, _, rfl, rfl, Or.inr (by rw [hdh]; omega)⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
    cases hD2
    cases hN2
    refine hR a ?_
    rw [hdh] at hov
    unfold Overlap at hov ⊢
    rw [← ePL]
    omega
  · refine hoareG_seqL (L2 := Lk) ?_ ?_
    · refine hoareG_callFoot (footRet_encode_list_headerX hC hA).foot (fun t _ hpre vs3 hvs3 => ?_)
      obtain ⟨hd, hp, hh⟩ := hpre.1
      rw [evs_cons (ev_lw hd) (evs_cons (ev_lw hp) evs_nil)] at hvs3
      cases hvs3
      refine ⟨⟨D, PL, rfl, rfl, by omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      refine hR a ?_
      unfold Overlap at hov ⊢
      rw [← ePL]
      omega
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      rw [ev_add2 (ev_lw hL.2.2) (ev_lw hL.2.1)] at hw
      cases hw
      show _ = _
      congr 2
      rw [ofNat_add_bv (by omega), ePL]

end InitECandidate.Solver.MemSafe.Rcpt

#print axioms InitECandidate.Solver.MemSafe.Rcpt.footRet_encode_list_headerX
#print axioms InitECandidate.Solver.MemSafe.Rcpt.footRet_finish_listX
