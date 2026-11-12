import InitECandidate.Solver.MemSafe.PtC.S2

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cpt_c3A {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    (hQT : LocIns QT) (C : Cx2 E En S rp rl buf n CV w)
    (hk : ∀ (En' : Env) (S' : FS) (a b c : BitVec 64) (pr : List (BitVec 64)), pr.length = 4 →
      CxB E En' S' rp rl buf n CV w [(nm "price", wv pr), (nm "intrinsic", wv [a, b, c])]
        [Fct.prop (a.toNat ≤ 2 ^ 24)] → CW' (PA E En' S') ptS23 (cbd ptS23) QT) :
    CW' (PA E En S) ptS14 (cbd ptS14) QT := by
  unfold ptS14
  refine cw_dec_validate (locIns_resIns hQT _) (fun g ty h => (C.1.gl g ty h).1) ?_
  intro a b c
  have C1 := cx2_prop C (x := nm "intrinsic") (by decide) (by decide) (wv [a, b, c]) (a.toNat ≤ 2 ^ 24)
  have hex1 := ex_cons (ex_nil En) (x := nm "intrinsic") (by simp) (wv [a, b, c])
  have hfx1 : FXs (fun f => S f ∨ f = Fct.prop (a.toNat ≤ 2 ^ 24)) [Fct.prop (a.toNat ≤ 2 ^ 24)] := by
    intro f hf; simp at hf; subst hf; exact Or.inr rfl
  unfold ptS15
  refine cw_seqN hn_skip ?_
  unfold ptS16
  refine cw_decF (locIns_resIns hQT _) (C1.1.un _ (by decide)) ?_
  unfold ptS17
  refine cw_decNoNF (locIns_resIns hQT _) tab_check_transaction
    (callOK_lvbufs csOK_tbl_sk ⟨by simp, by simp⟩ (by decide) (by intro g h; simp at h) check_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | _ | i <;> simp at h
        subst h
        exact ⟨nm "sender", w, rfl, C1.2.1, C1.2.2.2⟩)
      (fun g ty h => (C1.1.gl g ty h).1)) ?_
  intro v hsh
  obtain ⟨pr, hpr, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
  have C2 := cx2_set C1 (x := nm "price") (by decide) (by decide) (wv pr)
  have hex2 := ex_cons hex1 (x := nm "price") (by simp <;> decide) (wv pr)
  unfold ptS18
  refine cw_seqN hn_skip ?_
  unfold ptS19
  refine cw_decAnyU (locIns_resIns hQT _) tab_calculate_total_blob_gas (by simp) rfl blobtotal_fin rfl
    (fun g ty h => (C2.1.gl g ty h).1) (C2.1.un _ (by decide)) ?_
  unfold ptS20
  refine cw_decNoNFU (locIns_resIns hQT _) tab_get_account
    (callOK_lvbufs csOK_tbl ⟨by simp, by simp⟩ (by decide) (by intro g h; simp at h) getacct_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | i <;> simp at h
        subst h
        exact ⟨nm "sender", w, rfl, C2.2.1, C2.2.2.2⟩)
      (fun g ty h => (C2.1.gl g ty h).1)) (C2.1.un _ (by decide)) ?_
  unfold ptS21
  refine cw_seqN hn_skip ?_
  unfold ptS22
  refine cw_decF (locIns_resIns hQT _) (C2.1.un _ (by decide)) ?_
  exact hk _ _ a b c pr hpr ⟨C2, hex2, hfx1⟩

/-- Piece B: `ptS23` to `ptS28` (blob fee branch, `gas`, `egf`, `execution_gas`). -/

theorem cpt_c3B {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {a b c : BitVec 64} {pr : List (BitVec 64)} {fs : List Fct}
    (hQT : LocIns QT)
    (C : CxB E En S rp rl buf n CV w [(nm "price", wv pr), (nm "intrinsic", wv [a, b, c])] fs)
    (hk : ∀ (En' : Env) (S' : FS) (eg : BitVec 64),
      CxB E En' S' rp rl buf n CV w
        [(nm "execution_gas", .val (.word eg)), (nm "price", wv pr), (nm "intrinsic", wv [a, b, c])] fs →
      CW' (PA E En' S') ptS29 (cbd ptS29) QT) :
    CW' (PA E En S) ptS23 (cbd ptS23) QT := by
  obtain ⟨C2, hex2, hfx⟩ := C
  unfold ptS23
  refine cw_seqN (P1 := PA E En S) ?_ ?_
  · unfold ptS25
    refine hn_ite ?_ (hn_pre hn_skip (fun s _ h => h.1))
    refine hn_pre ?_ (fun s _ h => h.1)
    unfold ptS222
    refine hdecAnyU (QT := fun r t => r = none ∧ PA E En S t)
      (resIns_PA (C2.1.un _ (by decide))) tab_calculate_blob_gas_price (by simp) rfl blobprice_fin rfl
      (fun g ty h => (C2.1.gl g ty h).1) (C2.1.un _ (by decide)) ?_
    unfold ptS223
    refine hdecAnyU (resIns_PA (C2.1.un _ (by decide))) tab_fee_mul (by simp) rfl feemul_fin rfl
      (fun g ty h => (C2.1.gl g ty h).1) (C2.1.un _ (by decide)) ?_
    unfold ptS224
    exact hassignF (C2.1.un _ (by decide))
  unfold ptS24
  refine cw_decF (locIns_resIns hQT _) (C2.1.un _ (by decide)) ?_
  unfold ptS26
  refine cw_decAnyU (locIns_resIns hQT _) tab_fee_mul (by simp) rfl feemul_fin rfl
    (fun g ty h => (C2.1.gl g ty h).1) (C2.1.un _ (by decide)) ?_
  unfold ptS27
  refine cw_decF (locIns_resIns hQT _) (C2.1.un _ (by decide)) ?_
  unfold ptS28
  refine cw_decW (locIns_resIns hQT _) fun eg => ?_
  have C3 := cx2_set C2 (x := nm "execution_gas") (by decide) (by decide) (.val (.word eg))
  have hex3 := ex_cons hex2 (x := nm "execution_gas") (by simp <;> decide) (.val (.word eg))
  exact hk _ _ eg ⟨C3, hex3, hfx⟩

/-- Piece C: `ptS29` to `ptS31` (`regular_budget`, `mgas`, `reservoir`). -/

theorem cpt_c3C {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {a b c eg : BitVec 64} {pr : List (BitVec 64)}
    (hQT : LocIns QT)
    (C : CxB E En S rp rl buf n CV w
      [(nm "execution_gas", .val (.word eg)), (nm "price", wv pr), (nm "intrinsic", wv [a, b, c])]
      [Fct.prop (a.toNat ≤ 2 ^ 24)])
    (hk : ∀ (En' : Env) (S' : FS) (z rs : BitVec 64),
      CxB E En' S' rp rl buf n CV w
        [(nm "reservoir", .val (.word rs)), (nm "mgas", .val (.word z)),
          (nm "regular_budget", .val (.word (BitVec.ofNat 64 16777216 - a))),
          (nm "execution_gas", .val (.word eg)), (nm "price", wv pr), (nm "intrinsic", wv [a, b, c])]
        [Fct.prop (z.toNat ≤ 2 ^ 24)] → CW' (PA E En' S') ptS32 (cbd ptS32) QT) :
    CW' (PA E En S) ptS29 (cbd ptS29) QT := by
  obtain ⟨C3, hex3, hfx1⟩ := C
  unfold ptS29
  refine cw_decT (w := BitVec.ofNat 64 16777216 - a) (locIns_resIns hQT _) ?_ ?_
  · intro s hpa v hv
    have h1 := ex_get hex3 (x := nm "intrinsic") (v := wv [a, b, c]) (by simp)
    have := evI_sub (evI_cw s 16777216) (evI_rf (evI_lv (hpa.2 _ _ h1)) (i := 0) (by simp)) v hv
    simpa using this
  have C4 := cx2_set C3 (x := nm "regular_budget") (by decide) (by decide)
    (.val (.word (BitVec.ofNat 64 16777216 - a)))
  have hex4 := ex_cons hex3 (x := nm "regular_budget") (by simp <;> decide)
    (.val (.word (BitVec.ofNat 64 16777216 - a)))
  refine cw_ghost (P := (BitVec.ofNat 64 16777216 - a).toNat ≤ 2 ^ 24) (fun s hs => ?_) ?_
  · have ha : a.toNat ≤ 2 ^ 24 := pa_prop hs (hfx1 _ (List.mem_cons_self ..))
    rw [BitVec.toNat_sub]
    simp only [BitVec.toNat_ofNat]
    omega
  have C5 := cx2_addp C4 ((BitVec.ofNat 64 16777216 - a).toNat ≤ 2 ^ 24)
  have hfx5 := fxs_addp hfx1 ((BitVec.ofNat 64 16777216 - a).toNat ≤ 2 ^ 24)
  unfold ptS30
  refine cw_dec_min (rb := BitVec.ofNat 64 16777216 - a) (eg := eg) (locIns_resIns hQT _)
    (fun s hpa => evI_lv (hpa.2 _ _ (ex_get hex4 (x := nm "regular_budget") (by simp))))
    (fun s hpa => evI_lv (hpa.2 _ _ (ex_get hex4 (x := nm "execution_gas") (by simp))))
    (fun g ty h => (C5.1.gl g ty h).1) ?_
  intro z
  have C6 := cx2_prop C5 (x := nm "mgas") (by decide) (by decide) (.val (.word z))
    (z.toNat ≤ (BitVec.ofNat 64 16777216 - a).toNat)
  have hex6 := ex_cons hex4 (x := nm "mgas") (by simp <;> decide) (.val (.word z))
  have hfx6 := fxs_addp hfx5 (z.toNat ≤ (BitVec.ofNat 64 16777216 - a).toNat)
  refine cw_ghost (P := z.toNat ≤ 2 ^ 24) (fun s hs => ?_) ?_
  · have h1 := pa_prop hs (fxs_get hfx6 (f := Fct.prop (z.toNat ≤ (BitVec.ofNat 64 16777216 - a).toNat)) (List.mem_cons_self ..))
    have h2 := pa_prop hs (fxs_get hfx6 (f := Fct.prop ((BitVec.ofNat 64 16777216 - a).toNat ≤ 2 ^ 24)) (List.mem_cons_of_mem _ (List.mem_cons_self ..)))
    omega
  have C7 := cx2_addp C6 (z.toNat ≤ 2 ^ 24)
  have hfx7 := fxs_addp hfx6 (z.toNat ≤ 2 ^ 24)
  unfold ptS31
  refine cw_decW (locIns_resIns hQT _) fun rs => ?_
  have C8 := cx2_set C7 (x := nm "reservoir") (by decide) (by decide) (.val (.word rs))
  have hex8 := ex_cons hex6 (x := nm "reservoir") (by simp <;> decide) (.val (.word rs))
  exact hk _ _ z rs ⟨C8, hex8, fun f hf => by rw [List.mem_singleton] at hf; subst hf; exact hfx7 _ (List.mem_cons_self ..)⟩

/-- Piece D: `ptS32` to `ptS37`. -/

theorem cpt_c3D {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64} {ex : List (MlS × ValueHOL 64)}
    {fs : List Fct} (hQT : LocIns QT) (C : CxB E En S rp rl buf n CV w ex fs)
    (hk : CxB E En S rp rl buf n CV w ex fs → CW' (PA E En S) ptS38 (cbd ptS38) QT) :
    CW' (PA E En S) ptS32 (cbd ptS32) QT := by
  have C8 := C.1
  unfold ptS32
  refine cw_seqN (hn_callC tab_increment_nonce
    (callOK_lvbufs csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) (by intro g hg; simpa using hg) incnonce_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | i <;> simp at h
        subst h
        exact ⟨nm "sender", w, rfl, C8.2.1, C8.2.2.2⟩)
      (fun g ty h => (C8.1.gl g ty h).1))) ?_
  unfold ptS33
  refine cw_decF (locIns_resIns hQT _) (C8.1.un _ (by decide)) ?_
  unfold ptS34
  refine cw_seqN (hn_callAssign tab_u256_sub
    (callOK_any csOK_nil (by simp) rfl u256sub_fin (fun s _ vs hvs => by rw [evs_length hvs]; rfl)
      (fun g ty h => (C8.1.gl g ty h).1)) (C8.1.un _ (by decide))) ?_
  unfold ptS35
  refine cw_seqN (hn_callAssign tab_u256_sub
    (callOK_any csOK_nil (by simp) rfl u256sub_fin (fun s _ vs hvs => by rw [evs_length hvs]; rfl)
      (fun g ty h => (C8.1.gl g ty h).1)) (C8.1.un _ (by decide))) ?_
  unfold ptS36
  refine cw_seqN (hn_callC tab_set_account_balance
    (callOK_lvbufs csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) (by intro g hg; simpa using hg) setbal_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | _ | i <;> simp at h
        subst h
        exact ⟨nm "sender", w, rfl, C8.2.1, C8.2.2.2⟩)
      (fun g ty h => (C8.1.gl g ty h).1))) ?_
  unfold ptS37
  refine cw_seqN hn_skip ?_
  exact hk C

/-- **Chunk 3**: `ptS14` (validate_transaction) to `ptS38`. -/

theorem cpt_c3 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    (hQT : LocIns QT) (C : Cx2 E En S rp rl buf n CV w)
    (hk : ∀ (En' : Env) (S' : FS) (a b c : BitVec 64) (pr : List (BitVec 64)) (mg rs : BitVec 64),
      Cx3 E En' S' rp rl buf n CV w a b c pr mg rs → CW' (PA E En' S') ptS38 (cbd ptS38) QT) :
    CW' (PA E En S) ptS14 (cbd ptS14) QT :=
  cpt_c3A hQT C fun En1 S1 a b c pr hpr C1 =>
  cpt_c3B hQT C1 fun En2 S2 eg C2 =>
  cpt_c3C hQT C2 fun En3 S3 z rs C3 =>
  cpt_c3D hQT C3 fun C4 =>
  hk _ _ a b c pr z rs ⟨C4.1, ex_get C4.2.1 (by simp), ex_get C4.2.1 (by simp), hpr, ex_get C4.2.1 (by simp),
    ex_get C4.2.1 (by simp), C4.2.2 _ (List.mem_cons_self ..)⟩

end InitECandidate.Solver.MemSafe.PtC
