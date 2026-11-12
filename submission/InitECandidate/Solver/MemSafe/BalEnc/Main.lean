import InitECandidate.Solver.MemSafe.BalEnc.Sec5

set_option autoImplicit false

/-!
# `bal_encode_account` as an above-writer at `guestCS`, and at `guestC`
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

/-- **The precondition of `bal_encode_account`**: `ad` (argument 2) is null (`< nullMax`, e.g. the result
of a missed `htab_get`) or the base of a `tAD` object of the entry typing, `dst` (argument 0) lies in
`[h0, 2^60 - 16]`; `addr` and `tmp` are arbitrary words. Nothing else: the tables' strides, counts and the
list arrays are read off `G`. -/
def BalPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) (h0 : Nat) : Prop :=
  ∃ (dst addr ad tmp : BitVec 64), vs = [.val (.word dst), .val (.word addr), .val (.word ad), .val (.word tmp)] ∧
    Fits Γ (.nptr tAD) ad ∧ h0 ≤ dst.toNat ∧ dst.toNat + 16 ≤ 2 ^ 60

def scf (Γ0 : Gam) : Fct := Fct.prop bSc (fun T => Fits Γ0 (.ptr tHTl32) T)

def markf (hp : Nat) : Fct :=
  Fct.prop bMark (fun W => hp ≤ W.toNat ∧ W.toNat ≤ heapEnd ∧ W.toNat % 8 = 0)

/-- The result relation of the first write. -/
def Rw (P W : BitVec 64) : Prop :=
  ∃ k : Nat, W = BitVec.ofNat 64 k ∧ 1 ≤ k ∧ P.toNat + k ≤ B0 ∧ P.toNat < domTop + 8

/-- The facts that all sections carry. -/
def ex3 (Γ0 : Gam) (hp h0 : Nat) (A : Obj) (dst : BitVec 64) : List Fct :=
  [scf Γ0, markf hp, Fct.bd bDst h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd A.base, wd bTmp]

macro "avm" : tactic => `(tactic| (
  simp only [Av, wd, cf, pf, ex3, scf, markf, List.forall_mem_cons, List.forall_mem_append]
  try simp only [Fct.vars, List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
  repeat' constructor
  all_goals first | assumption | decide | (intro x hx; exact hx.elim)))

theorem ex3_avoid (Γ0 : Gam) (hp h0 : Nat) (A : Obj) (dst : BitVec 64) {x : MlS}
    (hx : x ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) : Av (ex3 Γ0 hp h0 A dst) x := by
  intro f hf
  simp only [ex3, List.mem_cons, List.not_mem_nil, or_false] at hf
  simp only [List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [scf, markf, wd, Fct.vars] <;> tauto


set_option maxHeartbeats 8000000 in
/-- **`bal_encode_account` at `guestCS`.** -/
theorem awSpecG_bal_cs :
    AWSpecG σ guestCtx guestCS (nwH (guestHooksR (σ := σ))) (nm "bal_encode_account") []
      BalPre (fun vs _ v _ => EncRetA vs v) := by
  refine awSpecG_of_hoareG (PV := EncRetA) hooksLawful_cs tagSlots_cs allocGlobs_cs ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  rw [hC] at hl
  obtain ⟨hbody, -, A1, B1, C1, D1, hvs, l1, l2, l3, l4⟩ := Mpt.lookupCode_four
    code_bal_encode_account (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hl
  subst hbody
  obtain ⟨dst, addr, ad, tmp, hvs', hFit, hd1, hd2⟩ := hPre
  subst hvs'
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  let a : AwE σ := ⟨guestCS, nwH (guestHooksR (σ := σ)), [], s0, Γ, p, h0⟩
  have hc : CsE a := ⟨rfl, rfl⟩
  rcases hFit with hnull | ⟨A, hAm, hAb, hAty⟩
  · -- a null `ad`: the load `lds (ad + 0)` leaves the memory domain, so no run returns
    have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
    have ha0 : ({ C := guestCS, H := nwH (guestHooksR (σ := σ)), gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 := rfl
    have hwB := writerOK_bytes hK hC hA hT
    refine hoareG_postA (L := Hs []) (Ret := fun _ => False) (L' := fun _ => True) (Ret' := EncRetA _)
      (hoareG_conseq (P := APre a (Hs [Fct.bd bDst a.h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd ad, wd bTmp])) (Q := AQ a (Hs []) (fun _ => False)) ?_
      (fun t _ ht => by
        subst ht
        refine ⟨awInv_init a hG hp hB, ?_⟩
        intro f hf
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
        rcases hf with rfl | rfl | rfl | rfl | rfl
        · exact ⟨dst, by rw [hloc]; exact l1, hd1, by omega⟩
        · show _ = _
          rw [hloc]; exact l1
        · exact bd_wide (by rw [hloc]; exact l2)
        · show _ = _
          rw [hloc]; exact l3
        · exact bd_wide (by rw [hloc]; exact l4))
      (fun r t _ _ h => h)) (fun _ _ => trivial) (fun v hv => hv.elim)
    unfold balBody
    refine hoareG_decHI hK (x := bP) (fx := [Fct.bd bP a.h0 (2 ^ 60 - 7), Fct.rel bDst bP]) (fo := [])
      (fb := []) (by avm) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
      (fun f hf => absurd hf (by simp))
    · obtain ⟨D, hD, h1, h2⟩ := hP'.2 (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp)
      rw [ev_add2 (ev_lw hD) (ev_cw _ 9)] at hv
      cases hv
      exact hs_cons ⟨D + BitVec.ofNat 64 9, lookup_update_self _ _ _, by bv_omega, by bv_omega⟩
        (hs_cons ⟨D, D + BitVec.ofNat 64 9, by rw [lookup_update_ne _ _ (by decide)]; exact hD,
          lookup_update_self _ _ _, by bv_omega⟩ (hs_nil _))
    obtain ⟨RetF, hfB, hRetK⟩ := hwB
    refine hoareG_decCallH hK hfB (rn := bW) (sh := .one) (fx := [Fct.rel2 bP bW Rw]) (fo := [])
      (fb := []) (by avm) (fun f hf => absurd hf (by simp)) ?hpre ?hnew ?body
      (fun f hf => absurd hf (by simp))
    case hpre =>
      intro s hs hP' vs hvs callee
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      obtain ⟨P0, hP0, h1, h2⟩ := hP'.2 (Fct.bd bP a.h0 (2 ^ 60 - 7)) (by simp)
      rw [ev_lw hP0] at e1
      cases e1
      exact ⟨P0, rfl, h1, by omega⟩
    case hnew =>
      intro s vs v st hL hvs hRet hsh
      obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
      obtain ⟨P0, hP0, h1, h2⟩ := hL (Fct.bd bP a.h0 (2 ^ 60 - 7)) (by simp)
      rw [ev_lw hP0] at e1
      cases e1
      obtain ⟨k, hk, hk1, hk2, hk3⟩ := hRetK _ v hRet P0 rfl
      subst hk
      exact hs_cons ⟨P0, BitVec.ofNat 64 k, by rw [lookup_update_ne _ _ (by decide)]; exact hP0,
        lookup_update_self _ _ _, k, rfl, hk1, hk2, hk3⟩ (hs_nil _)
    case body =>
      refine hoareG_seqA (L2 := Hs (pf a.h0 B0 ++ [Fct.bd bDst a.h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd ad, wd bTmp])) (hoareG_assignA hK (fun s hs hL v hv => ?_)) ?_
      · obtain ⟨P0, W, hP0, hW, k, hWk, hk1, hk2, hk3⟩ := hL (Fct.rel2 bP bW Rw) (by simp)
        obtain ⟨D, B1, hD, hB1, hrel⟩ := hL (Fct.rel bDst bP) (by simp)
        obtain ⟨D1, hD1, h1, h2⟩ := hL (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp)
        rw [hP0] at hB1
        cases hB1
        rw [hD] at hD1
        cases hD1
        rw [ev_add2 (ev_lw hP0) (ev_lw hW)] at hv
        cases hv
        subst hWk
        have hdt : domTop = 2 ^ 40 := rfl
        have hk64 : k < 2 ^ 64 := by omega
        refine hs_append (hs_cons ⟨P0 + BitVec.ofNat 64 k, lookup_update_self _ _ _,
          by bv_omega, by bv_omega⟩ (hs_cons ⟨D, P0 + BitVec.ofNat 64 k, ?_, lookup_update_self _ _ _,
          by bv_omega⟩ (hs_nil _))) (hs_cons ⟨D, ?_, h1, by bv_omega⟩ (hs_upd (by avm) ?_))
        · rw [lookup_update_ne _ _ (by decide)]
          exact hD
        · rw [lookup_update_ne _ _ (by decide)]
          exact hD
        · refine hs_mono hL (fun f hf => ?_)
          simp only [List.mem_cons, List.mem_append, List.not_mem_nil, or_false] at hf ⊢
          tauto
      refine hoareG_decCallH hK (asp_mark hK hC) (rn := bMark) (sh := .one) (fx := [markf a.p0.hp])
        (fo := []) (fb := []) (by avm) (fun f hf => absurd hf (by simp))
        (fun s hs hP' vs hvs callee => Option.some.inj (hvs.symm.trans evs_nil))
        (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => absurd hf (by simp))
      · obtain ⟨w, p', rfl, -, -, h1, h2, h3⟩ := hRet
        exact hs_cons ⟨w, lookup_update_self _ _ _, h1, h2, h3⟩ (hs_nil _)
      -- sc = lds (ad + 0): `ad` is null, so the load cannot succeed
      refine hoareG_decHI hK (x := bSc) (fx := [Fct.bd bSc 1 0]) (fo := []) (fb := [])
        (by avm) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
        (fun f hf => absurd hf (by simp))
      · exfalso
        obtain ⟨w, hw, hd, rfl⟩ := Struct.ev_load1_inv hv
        have hAdv : s.locals.lookup bAd = some (.val (.word ad)) := hP'.2 (Fct.eqv bAd ad) (by simp)
        rw [ev_add2 (ev_lw hAdv) (ev_cw _ 0)] at hw
        cases hw
        have := nullSafe_guestCtx _ (hs.2.1 ▸ hd)
        have h2 : (ad + BitVec.ofNat 64 0).toNat = ad.toNat := by simp
        unfold nullMax heapBase at *
        omega
      · refine Aw.hoareG_false (fun s hs => ?_)
        obtain ⟨w, _, h1, h2⟩ := hs.2 (Fct.bd bSc 1 0) (by simp)
        omega

  subst hAb
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hB0e : B0 = domTop + 128 := rfl
  have hdt : domTop = 2 ^ 40 := rfl
  have ha0 : ({ C := guestCS, H := nwH (guestHooksR (σ := σ)), gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 := rfl
  have hle : a.h0 ≤ a.p0.hp := hK.hle
  have hwP : WriterOK a guestCtx (nm "rlp_put_u256") := writerOK_put hK put_cs
  refine hoareG_conseq (P := APre a (Hs [Fct.bd bDst a.h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd A.base, wd bTmp])) (Q := AQ a (Hs []) (EncRetA _)) ?_
    (fun t _ ht => by
      subst ht
      refine ⟨awInv_init a hG hp hB, ?_⟩
      intro f hf
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
      rcases hf with rfl | rfl | rfl | rfl | rfl
      · exact ⟨dst, by rw [hloc]; exact l1, hd1, by omega⟩
      · show _ = _
        rw [hloc]; exact l1
      · exact bd_wide (by rw [hloc]; exact l2)
      · show _ = _
        rw [hloc]; exact l3
      · exact bd_wide (by rw [hloc]; exact l4))
    (fun r t _ _ h => ⟨h.1, fun hr => ⟨(h.2.1 hr).1, trivial⟩, h.2.2⟩)
  unfold balBody
  -- p = dst + 9
  refine hoareG_decHI hK (x := bP) (fx := [Fct.bd bP a.h0 (2 ^ 60 - 7), Fct.rel bDst bP]) (fo := [])
    (fb := []) (by avm) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨D, hD, h1, h2⟩ := hP'.2 (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp)
    rw [ev_add2 (ev_lw hD) (ev_cw _ 9)] at hv
    cases hv
    exact hs_cons ⟨D + BitVec.ofNat 64 9, lookup_update_self _ _ _, by bv_omega, by bv_omega⟩
      (hs_cons ⟨D, D + BitVec.ofNat 64 9, by rw [lookup_update_ne _ _ (by decide)]; exact hD,
        lookup_update_self _ _ _, by bv_omega⟩ (hs_nil _))
  -- w = rlp_encode_bytes(p, addr, 20)
  obtain ⟨RetF, hfB, hRetK⟩ := writerOK_bytes hK hC hA hT
  refine hoareG_decCallH hK hfB (rn := bW) (sh := .one) (fx := [Fct.rel2 bP bW Rw]) (fo := [])
    (fb := []) (by avm) (fun f hf => absurd hf (by simp)) ?hpre ?hnew ?body
    (fun f hf => absurd hf (by simp))
  case hpre =>
    intro s hs hP' vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨P0, hP0, h1, h2⟩ := hP'.2 (Fct.bd bP a.h0 (2 ^ 60 - 7)) (by simp)
    rw [ev_lw hP0] at e1
    cases e1
    exact ⟨P0, rfl, h1, by omega⟩
  case hnew =>
    intro s vs v st hL hvs hRet hsh
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨P0, hP0, h1, h2⟩ := hL (Fct.bd bP a.h0 (2 ^ 60 - 7)) (by simp)
    rw [ev_lw hP0] at e1
    cases e1
    obtain ⟨k, hk, hk1, hk2, hk3⟩ := hRetK _ v hRet P0 rfl
    subst hk
    exact hs_cons ⟨P0, BitVec.ofNat 64 k, by rw [lookup_update_ne _ _ (by decide)]; exact hP0,
      lookup_update_self _ _ _, k, rfl, hk1, hk2, hk3⟩ (hs_nil _)
  case body =>
    -- p = p + w
    refine hoareG_seqA (L2 := Hs (pf a.h0 B0 ++ [Fct.bd bDst a.h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd A.base, wd bTmp])) (hoareG_assignA hK (fun s hs hL v hv => ?_)) ?_
    · obtain ⟨P0, W, hP0, hW, k, hWk, hk1, hk2, hk3⟩ := hL (Fct.rel2 bP bW Rw) (by simp)
      obtain ⟨D, B1, hD, hB1, hrel⟩ := hL (Fct.rel bDst bP) (by simp)
      obtain ⟨D1, hD1, h1, h2⟩ := hL (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp)
      rw [hP0] at hB1
      cases hB1
      rw [hD] at hD1
      cases hD1
      rw [ev_add2 (ev_lw hP0) (ev_lw hW)] at hv
      cases hv
      subst hWk
      have hdt : domTop = 2 ^ 40 := rfl
      have hk64 : k < 2 ^ 64 := by omega
      refine hs_append (hs_cons ⟨P0 + BitVec.ofNat 64 k, lookup_update_self _ _ _,
        by bv_omega, by bv_omega⟩ (hs_cons ⟨D, P0 + BitVec.ofNat 64 k, ?_, lookup_update_self _ _ _,
        by bv_omega⟩ (hs_nil _))) (hs_cons ⟨D, ?_, h1, by bv_omega⟩ (hs_upd (by avm) ?_))
      · rw [lookup_update_ne _ _ (by decide)]
        exact hD
      · rw [lookup_update_ne _ _ (by decide)]
        exact hD
      · refine hs_mono hL (fun f hf => ?_)
        simp only [List.mem_cons, List.mem_append, List.not_mem_nil, or_false] at hf ⊢
        tauto
    -- mark = heap_mark()
    refine hoareG_decCallH hK (asp_mark hK hC) (rn := bMark) (sh := .one) (fx := [markf a.p0.hp])
      (fo := []) (fb := []) (by avm) (fun f hf => absurd hf (by simp))
      (fun s hs hP' vs hvs callee => Option.some.inj (hvs.symm.trans evs_nil))
      (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => absurd hf (by simp))
    · obtain ⟨w, p', rfl, -, -, h1, h2, h3⟩ := hRet
      exact hs_cons ⟨w, lookup_update_self _ _ _, h1, h2, h3⟩ (hs_nil _)
    refine hoareG_preA (L' := Hs (pf a.h0 B0 ++ (markf a.p0.hp :: [Fct.bd bDst a.h0 (2 ^ 60 - 16), Fct.eqv bDst dst, wd bAddr, Fct.eqv bAd A.base, wd bTmp]))) ?_ (fun m hm => hs_mono hm (fun f hf => by
      simp only [List.mem_cons, List.mem_append, List.not_mem_nil, or_false] at hf ⊢
      tauto))
    -- sc = lds (ad + 0)
    refine hoareG_decHI hK (x := bSc) (fx := [scf a.Γ0]) (fo := []) (fb := []) (by avm)
      (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
      (fun f hf => absurd hf (by simp))
    · obtain ⟨w, hw, hd, rfl⟩ := Struct.ev_load1_inv hv
      have hAdv : s.locals.lookup bAd = some (.val (.word A.base)) :=
        hP'.2 (Fct.eqv bAd A.base) (by simp)
      rw [ev_add2 (ev_lw hAdv) (ev_cw _ 0)] at hw
      cases hw
      refine hs_cons ⟨_, lookup_update_self _ _ _, ?_⟩ (hs_nil _)
      have h1 := obj_field hc hP'.1 hAm (k := 0) (by rw [hAty]; decide)
      rw [hAty, show (guestC.ty tAD).slot 0 = .ptr tHTl32 from rfl] at h1
      have e1 : A.cell 0 = A.base + BitVec.ofNat 64 0 := rfl
      rw [e1] at h1
      exact h1
    refine hoareG_preA (L' := Hs (pf a.h0 B0 ++ (ex3 a.Γ0 a.p0.hp a.h0 A dst))) ?_ (fun m hm => hs_mono hm (fun f hf => by
      simp only [ex3, List.mem_cons, List.mem_append, List.not_mem_nil, or_false] at hf ⊢
      tauto))
    -- slots = sorted_keys32(sc, tmp)
    refine hoareG_decCallH hK (asp_sorted_keys32 hK hc) (rn := bSlots) (sh := .comb [.one, .one])
      (fx := []) (fo := []) (fb := []) (by avm) (fun f hf => absurd hf (by simp))
      (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => hs_nil _) ?_
      (fun f hf => absurd hf (by simp))
    · obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨T, hT', hfit⟩ := hP'.2 (scf a.Γ0) (by simp [ex3])
      obtain ⟨Tm, hTm, -, -⟩ := hP'.2 (wd bTmp) (by simp [ex3])
      rw [ev_lw hT'] at e1
      rw [ev_lw hTm] at e2
      cases e1
      cases e2
      exact ⟨T, Tm, rfl, hfit, hs.2.1⟩
    have hAdM : Fct.eqv bAd A.base ∈ (ex3 a.Γ0 a.p0.hp a.h0 A dst) := by simp [ex3]
    have hTmpM : wd bTmp ∈ (ex3 a.Γ0 a.p0.hp a.h0 A dst) := by simp [ex3]
    have hwW : WriterOK a guestCtx (nm "rlp_encode_word") := writerOK_word hK hC hA hT
    have hwB : WriterOK a guestCtx (nm "rlp_encode_bytes") := writerOK_bytes hK hC hA hT
    refine hoareG_storSec hK hc (P := B0) le_rfl (by omega) (ex := (ex3 a.Γ0 a.p0.hp a.h0 A dst)) (show scf a.Γ0 ∈ ex3 a.Γ0 a.p0.hp a.h0 A dst by simp [ex3]) hTmpM
      (fun f hf x hx => ex3_avoid _ _ _ _ _ (x := x) ((by decide : ∀ y ∈ [bP, bQ, bI, bW, bSlot, bM, bL, bN, bLp, bR, bSv, bCs, bJ, bE, bC, bHl, bHl2, bHl3, bHl4], y ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) x hx) f hf) hwP (k := keysSec) ?_
    refine hoareG_keysSec hK hc hAm hAty rfl (by decide) (P := B0) le_rfl (by omega) (ex := (ex3 a.Γ0 a.p0.hp a.h0 A dst))
      hAdM hTmpM (fun f hf x hx => ex3_avoid _ _ _ _ _ (x := x) ((by decide : ∀ y ∈ [bP, bQ, bI, bW, bSr, bRk, bKept, bHasw, bSv2, bHl5], y ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) x hx) f hf) hwP (k := balSec) ?_
    refine hoareG_listSec hK hc (off := 16) (E := 40) (l := bL2) (n := bN2) (lp := bLp2) (e := bE2)
      (c := bC2) (hlE := bHl6) (hlP := bHl7) (f2 := nm "rlp_put_u256") (args2 := [ld4 bE2 8])
      (k := nonceSec) (SecNm.mk' (by decide)) (Tt := tLSTc) (by decide) (by decide) hAm hAty rfl
      (by decide) (by decide) (P := B0) le_rfl (by omega) (ex := (ex3 a.Γ0 a.p0.hp a.h0 A dst)) hAdM hTmpM
      (fun f hf x hx => ex3_avoid _ _ _ _ _ (x := x) ((by decide : ∀ y ∈ [bP, bQ, bI, bW, bL2, bN2, bLp2, bE2, bC2, bHl6, bHl7], y ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) x hx) f hf) hwP ?_
    refine hoareG_listSec hK hc (off := 24) (E := 16) (l := bL3) (n := bN3) (lp := bLp3) (e := bE3)
      (c := bC3) (hlE := bHl8) (hlP := bHl9) (f2 := nm "rlp_encode_word") (args2 := [ld1 bE3 8])
      (k := codeSec) (SecNm.mk' (by decide)) (Tt := tLSTn) (by decide) (by decide) hAm hAty rfl
      (by decide) (by decide) (P := B0) le_rfl (by omega) (ex := (ex3 a.Γ0 a.p0.hp a.h0 A dst)) hAdM hTmpM
      (fun f hf x hx => ex3_avoid _ _ _ _ _ (x := x) ((by decide : ∀ y ∈ [bP, bQ, bI, bW, bL3, bN3, bLp3, bE3, bC3, bHl8, bHl9], y ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) x hx) f hf) hwW ?_
    refine hoareG_listSec hK hc (off := 32) (E := 24) (l := bL4) (n := bN4) (lp := bLp4) (e := bE4)
      (c := bC4) (hlE := bHl10) (hlP := bHl11) (f2 := nm "rlp_encode_bytes")
      (args2 := [ld1 bE4 8, ld1 bE4 16]) (k := tailS) (SecNm.mk' (by decide)) (Tt := tLSTk) (by decide)
      (by decide) hAm hAty rfl (by decide) (by decide) (P := B0) le_rfl (by omega) (ex := (ex3 a.Γ0 a.p0.hp a.h0 A dst))
      hAdM hTmpM (fun f hf x hx => ex3_avoid _ _ _ _ _ (x := x) ((by decide : ∀ y ∈ [bP, bQ, bI, bW, bL4, bN4, bLp4, bE4, bC4, bHl10, bHl11], y ∉ [bSc, bMark, bDst, bAddr, bAd, bTmp]) x hx) f hf) hwB ?_
    -- the tail
    unfold tailS
    refine hoareG_seqA (L2 := Hs (pf a.h0 B0 ++ (ex3 a.Γ0 a.p0.hp a.h0 A dst))) (hoareG_callH hK (asp_release hK hC) ?_) ?_
    · intro s hs hP' vs hvs callee
      obtain ⟨W, hW, h1, h2, h3⟩ := hP'.2 (markf a.p0.hp) (by simp [ex3])
      have := evs_one (ev_lw hW) hvs
      subst this
      exact ⟨W, rfl, h1, h2, h3⟩
    -- payload = p - (dst + 9)
    refine hoareG_decHI hK (x := bPayload) (fx := [Fct.rel3 bDst bP bPayload (fun D P Y => Y.toNat + D.toNat + 9 = P.toNat), wd bPayload]) (fo := []) (fb := []) (by avm)
      (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
      (fun f hf => absurd hf (by simp))
    · obtain ⟨P0, hP0, h1, h2⟩ := hP'.2 (Fct.bd bP a.h0 B0) (by simp [pf])
      obtain ⟨D, hD, h3, h4⟩ := hP'.2 (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp [ex3])
      obtain ⟨D1, P1, hD1, hP1, hrel⟩ := hP'.2 (Fct.rel bDst bP) (by simp [pf])
      rw [hP0] at hP1
      cases hP1
      rw [hD] at hD1
      cases hD1
      rw [ev_sub2 (ev_lw hP0) (ev_add2 (ev_lw hD) (ev_cw _ 9))] at hv
      cases hv
      have hdt : domTop = 2 ^ 40 := rfl
      refine hs_cons ⟨D, P0, _, by rw [lookup_update_ne _ _ (by decide)]; exact hD,
        by rw [lookup_update_ne _ _ (by decide)]; exact hP0, lookup_update_self _ _ _, ?_⟩
        (hs_cons (bd_wd _ _ _) (hs_nil _))
      show (P0 - (D + BitVec.ofNat 64 9)).toNat + D.toNat + 9 = P0.toNat
      bv_omega
    -- hl12 = rlp_list_header_len(payload)
    refine hoareG_decCallH hK (asp_of_footRet hK (footRet_list_header_len hC) (fun vs x hx => hx.elim))
      (rn := bHl12) (sh := .one) (fx := [Fct.bd bHl12 1 9]) (fo := []) (fb := []) (by avm)
      (fun f hf => absurd hf (by simp)) (fun _ _ _ _ _ _ => trivial) ?hnew ?body
      (fun f hf => absurd hf (by simp))
    case hnew =>
      intro s vs v st hL hvs hRet hsh
      obtain ⟨Y, hY, -⟩ := hL (Fct.bd bPayload 0 Aw.WW) (by simp [wd])
      obtain ⟨v1, vs1, rfl, e1, -⟩ := evs_cons_inv hvs
      rw [ev_lw hY] at e1
      cases e1
      have hv := hRet Y rfl
      subst hv
      have hH := hdrLen_le (n := Y.toNat) (BitVec.isLt _)
      have hHH : (BitVec.ofNat 64 (hdrLen Y.toNat)).toNat = hdrLen Y.toNat := by
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      exact hs_cons (bd_new _ _ _ (by omega) (by omega)) (hs_nil _)
    case body =>
      -- memcpy(dst + hl12, dst + 9, payload)
      refine hoareG_seqA (L2 := Hs ([Fct.bd bHl12 1 9] ++ ([Fct.rel3 bDst bP bPayload (fun D P Y => Y.toNat + D.toNat + 9 = P.toNat), wd bPayload] ++ (pf a.h0 B0 ++ (ex3 a.Γ0 a.p0.hp a.h0 A dst)))))
        (hoareG_callH hK (asp_memcpy hK hC hA hT) ?_) ?_
      · intro s hs hP' vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨D, hD, h1, h2⟩ := hP'.2 (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp [ex3])
        obtain ⟨HL, hHL, g1, g2⟩ := hP'.2 (Fct.bd bHl12 1 9) (by simp)
        obtain ⟨Y, hY, -⟩ := hP'.2 (Fct.bd bPayload 0 Aw.WW) (by simp [wd])
        rw [ev_add2 (ev_lw hD) (ev_lw hHL)] at e1
        rw [ev_add2 (ev_lw hD) (ev_cw _ 9)] at e2
        rw [ev_lw hY] at e3
        cases e1
        cases e2
        cases e3
        have hh0 : a.h0 = h0 := rfl
        exact ⟨D + HL, Y, rfl, rfl, by show a.h0 ≤ _; bv_omega, by bv_omega⟩
      -- rlp_encode_list_header(dst, payload)
      refine hoareG_seqA (L2 := Hs (Fct.bd bDst a.h0 (domTop + 7) :: ([Fct.bd bHl12 1 9] ++
          ([Fct.rel3 bDst bP bPayload (fun D P Y => Y.toNat + D.toNat + 9 = P.toNat), wd bPayload] ++ (pf a.h0 B0 ++ (ex3 a.Γ0 a.p0.hp a.h0 A dst))))))
        (hoareG_callAs hK (asp_writer hK (footRet_encode_list_headerA hC hA hT)) ?_ ?_) ?_
      · intro s hs hP' vs hvs callee
        obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
        obtain ⟨D, hD, h1, h2⟩ := hP'.2 (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp [ex3])
        rw [ev_lw hD] at e1
        cases e1
        exact ⟨D, rfl, h1, by omega⟩
      · intro s vs v st hL hvs hRet
        obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
        obtain ⟨D, hD, h1, h2⟩ := hL (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp [ex3])
        obtain ⟨Y, hY, -⟩ := hL (Fct.bd bPayload 0 Aw.WW) (by simp [wd])
        rw [ev_lw hD] at e1
        rw [ev_lw hY] at e2
        cases e1
        cases e2
        have hr := (hRet D Y rfl rfl).1
        unfold InD at hr
        exact hs_cons ⟨D, hD, h1, by omega⟩ hL
      -- return hl12 + payload
      refine hoareG_returnA hK (fun s hs hL v hv => ?_)
      obtain ⟨D, hD, h1, h2⟩ := hL (Fct.bd bDst a.h0 (domTop + 7)) (by simp)
      obtain ⟨D0, hD0, h10, h20⟩ := hL (Fct.bd bDst a.h0 (2 ^ 60 - 16)) (by simp [ex3])
      obtain ⟨HL, hHL, g1, g2⟩ := hL (Fct.bd bHl12 1 9) (by simp)
      obtain ⟨Y, hY, -⟩ := hL (Fct.bd bPayload 0 Aw.WW) (by simp [wd])
      obtain ⟨D2, P2, Y2, hD2, hP2, hY2, hrel⟩ := hL (Fct.rel3 bDst bP bPayload (fun D P Y => Y.toNat + D.toNat + 9 = P.toNat)) (by simp)
      obtain ⟨P0, hP0, hp1, hp2⟩ := hL (Fct.bd bP a.h0 B0) (by simp [pf])
      have hDq : s.locals.lookup bDst = some (.val (.word dst)) := hL (Fct.eqv bDst dst) (by simp [ex3])
      rw [hD] at hD0 hD2 hDq
      rw [hY] at hY2
      rw [hP0] at hP2
      cases hD0
      cases hD2
      cases hY2
      cases hP2
      rw [ev_add2 (ev_lw hHL) (ev_lw hY)] at hv
      cases hv
      intro D3 hD3
      have e : D3 = dst := Option.some.inj hD3.symm
      have hDq : s.locals.lookup bDst = some (.val (.word dst)) := hL (Fct.eqv bDst dst) (by simp [ex3])
      subst e
      rw [hD] at hDq
      cases hDq
      refine ⟨by unfold InD; omega, HL.toNat + Y.toNat, ?_, by omega, by omega⟩
      congr 2

/-- **`bal_encode_account` at `guestC`: an above-writer that also writes list-array cells.**

Precondition `BalPre`: the argument list is `[dst, addr, ad, tmp]` with `ad` the base of a `tAD`
object of the entry typing `Γ`, `h0 ≤ dst` and `dst + 16 ≤ 2^60`; `addr` and `tmp` are arbitrary
words. The post is `EncRetA`: the returned length `k ≥ 1` has `dst + k ≤ domTop + 128` and `InD dst`.
The writes are `h0 ≤ x`, `WCell`, `LaCell` (cells of list arrays of the entry typing) or
unallocated cells. -/
theorem awSpecGW_bal_encode_account :
    AWSpecGW σ guestCtx guestC (guestHooksR (σ := σ)) (nm "bal_encode_account") [] LaCell
      BalPre (fun vs _ v _ => EncRetA vs v) :=
  awSpecGW_of_cs awSpecG_bal_cs

end InitECandidate.Solver.MemSafe.BalEnc

#print axioms InitECandidate.Solver.MemSafe.BalEnc.awSpecG_bal_cs
#print axioms InitECandidate.Solver.MemSafe.BalEnc.awSpecGW_bal_encode_account
