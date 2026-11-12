import InitECandidate.Solver.MemSafe.Ins.Split

set_option autoImplicit false

/-!
# `_split_extension`: the three pieces

```
  var br = node_new_branch(); var sal = sl - pl;
  A: if sal == 1 { st br+32+8*ld8(seg+pl), child; }
  B: if 1 < sal { var ex = node_new_ext(seg+pl+1, sal-1, child); st br+32+8*ld8(seg+pl), ex; }
  C: var kal = rl - pl; if kal == 0 { st br+160, vptr; st br+168, vlen } else {
       var idx = ld8(rk+pl); if ld(br+32+8*idx) != 0 { mpt_fail(11) }
       var lf = node_new_leaf(rk+pl+1, kal-1, vptr, vlen); st br+32+8*idx, lf }
```
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def segPl : ExpHOL 64 := .op .add [lv (nm "seg"), lv (nm "pl")]

def sxA : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "sal")) (cw 1))
    (.store (childAddrE (nm "br") segPl) (lv (nm "child"))) .skip

def sxB : ProgHOL 64 :=
  .ite (.cmp .lower (cw 1) (lv (nm "sal")))
    (.decCall (nm "ex") .one (nm "node_new_ext")
      [.op .add [lv (nm "seg"), lv (nm "pl"), cw 1], .op .sub [lv (nm "sal"), cw 1], lv (nm "child")]
      (.store (childAddrE (nm "br") segPl) (lv (nm "ex")))) .skip

def sxC : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "kal")) (cw 0))
    (valPair (nm "vptr") (nm "vlen") (nm "br"))
    (.dec (nm "idx") .one (.loadByte (.op .add [lv (nm "rk"), lv (nm "pl")]))
      (.seq (.ite (.cmp .notEqual (.load .one (childAddrI (nm "br") (nm "idx"))) (cw 0))
          (.call (some (none, none)) (nm "mpt_fail") [cw 11]) .skip)
        (.decCall (nm "lf") .one (nm "node_new_leaf")
          [.op .add [lv (nm "rk"), lv (nm "pl"), cw 1], .op .sub [lv (nm "kal"), cw 1],
           lv (nm "vptr"), lv (nm "vlen")]
          (.store (childAddrI (nm "br") (nm "idx")) (lv (nm "lf"))))))

def sxBody : ProgHOL 64 :=
  .dec (nm "seg") .one (.load .one (.op .add [lv (nm "node"), cw 32]))
    (.dec (nm "sl") .one (.load .one (.op .add [lv (nm "node"), cw 40]))
      (.dec (nm "child") .one (.load .one (.op .add [lv (nm "node"), cw 48]))
        (.decCall (nm "br") .one (nm "node_new_branch") []
          (.dec (nm "sal") .one (.op .sub [lv (nm "sl"), lv (nm "pl")])
            (.seq sxA (.seq sxB
              (.dec (nm "kal") .one (.op .sub [lv (nm "rl"), lv (nm "pl")])
                (.seq sxC (.return (lv (nm "br"))))))))))) 

def params_sx : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "rk", .one), (nm "rl", .one), (nm "vptr", .one), (nm "vlen", .one),
   (nm "pl", .one)]

theorem entry_sx : fnEntry Guest.Software.guestFn__split_extension =
    (nm "_split_extension", params_sx, sxBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_sx :
    guestCode (nm "_split_extension") = some (params_sx, sxBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 274) (by decide)) ⟨_, rfl⟩
    entry_sx

theorem argsOK_ext' {C : Cfg} {Γ : Gam} {q : Ptrs} {v1 v2 : ValueHOL 64} {CH : BitVec 64}
    (h : Fits Γ Types.nodeU CH) :
    ArgsOK C Γ q Node.neSig.params [v1, v2, .val (.word CH)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Node.neSig] at hpt hv <;> subst hpt <;> subst hv
  · trivial
  · trivial
  · exact ⟨CH, rfl, h⟩

theorem fits_of_ty {Γ : Gam} {X' : BitVec 64} {t : Nat} (ht : t ∈ Node.nodeTys)
    (h : ∃ o ∈ Γ, o.base = X' ∧ o.ty = t) : Fits Γ Types.nodeU X' := by
  obtain ⟨o, ho, hb, hty⟩ := h
  exact Or.inr ⟨o, ho, hb, hty ▸ ht⟩

theorem sub_sub_one {SL PL : BitVec 64} (h : PL.toNat < SL.toNat) :
    SL - PL - BitVec.ofNat 64 1 = SL - (PL + BitVec.ofNat 64 1) := by
  apply BitVec.eq_of_toNat_eq
  have h1 : PL.toNat + 1 < 2 ^ 64 := by have := SL.isLt; omega
  have e1 : (PL + BitVec.ofNat 64 1).toNat = PL.toNat + 1 := by
    rw [BitVec.toNat_add]; simp only [BitVec.toNat_ofNat]; omega
  have e2 : (BitVec.ofNat 64 1).toNat = 1 := by simp
  rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, e2]; rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; omega)]; omega),
    BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; omega),
    BitVec.toNat_sub_of_le (by rw [BitVec.le_def, e1]; omega), e1, e2]
  omega

/-- Piece A. -/
theorem sxA_G {sg : Sig} {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {SAL SL SEG PL CH B : BitVec 64}
    (hsal : (nm "sal", SAL) ∈ kv) (hseg : (nm "seg", SEG) ∈ kv) (hpl : (nm "pl", PL) ∈ kv)
    (hch : (nm "child", CH) ∈ kv) (hbr : (nm "br", B) ∈ kv)
    (hSAL : SAL = SL - PL)
    {EΓ : Gam → Prop} (hPLf : ∀ Γ, EΓ Γ → PL.toNat ≤ SL.toNat)
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧
      Fits Γ Types.nodeU CH ∧ NIn Γ SEG SL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ)) sxA
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  by_cases hPL : PL.toNat ≤ SL.toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hPL (hPLf Γ hE)
  unfold sxA
  refine ite_val hsal (fun s h => h.1) (fun hc => ?_) (fun hc => gp_skip fun s h => h)
  have h1 : SAL = BitVec.ofNat 64 1 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
  have hlt : PL.toNat < SL.toNat := by
    have : (SL - PL).toNat = 1 := by rw [← hSAL, h1]; rfl
    rw [BitVec.toNat_sub_of_le (by simpa [BitVec.le_def] using hPL)] at this
    omega
  refine childSt_G ha hbr hch (fun Γ h => ⟨(hEn Γ h).1, (hEn Γ h).2.1⟩) ?_
  intro s Γ A hL hG hE hAe
  obtain ⟨w, hw, hA⟩ := ev_childAddrE (hL _ hbr) hAe
  have hev : ev s segPl = some (.val (.word (SEG + PL))) :=
    ev_add2 (ev_lw (hL _ hseg)) (ev_lw (hL _ hpl))
  obtain ⟨w', hw', hlt16⟩ := ldb_lt16 hG (hEn Γ hE).2.2 hlt hev hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  subst hw'
  exact ⟨w, hlt16, hA⟩

/-- Piece B. -/
theorem sxB_G {sg : Sig} (hsg : sg.grows = true) {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {SAL SL SEG PL CH B : BitVec 64}
    (hsal : (nm "sal", SAL) ∈ kv) (hseg : (nm "seg", SEG) ∈ kv) (hpl : (nm "pl", PL) ∈ kv)
    (hch : (nm "child", CH) ∈ kv) (hbr : (nm "br", B) ∈ kv)
    (hfex : ∀ p ∈ kv, p.1 ≠ nm "ex")
    (hSAL : SAL = SL - PL)
    {EΓ : Gam → Prop} (hPLf : ∀ Γ, EΓ Γ → PL.toNat ≤ SL.toNat)
    (hEx : ∀ Γ Γ', EΓ Γ → Ext Γ Γ' → EΓ Γ')
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧
      Fits Γ Types.nodeU CH ∧ NIn Γ SEG SL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ)) sxB
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  by_cases hPL : PL.toNat ≤ SL.toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hPL (hPLf Γ hE)
  unfold sxB
  refine ite_valL hsal (fun s h => h.1) (fun hc => ?_) (fun hc => gp_skip fun s h => h)
  have hlt : PL.toNat < SL.toNat := by
    have h1' : 1 < SAL.toNat := by
      have := hc
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq] at this
      exact BitVec.lt_def.mp this
    rw [hSAL, BitVec.toNat_sub_of_le (by simpa [BitVec.le_def] using hPL)] at h1'
    omega
  refine gp_decCall ha node_new_extT_guestR (ctor_sp hX ctor_ext_sp) (by simp [Node.neSig])
    (fun _ => hsg)
    (L1 := fun v m => LKV kv m ∧ m.lookup (nm "ex") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ _ => EΓ Γ ∧
      ∀ W : BitVec 64, v = .val (.word W) → ∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNEXT)
    (L2 := LKV kv) (E2 := fun Γ _ _ => EΓ Γ)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ => ⟨hEx _ _ hE co.ext, fun W hW => by
        obtain ⟨o, ho, hvo, hot⟩ := hQ v hv
        subst hW
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
        exact ⟨o, ho, hvo.symm, hot⟩⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfex v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun m0 m h0 h => lkv_res h hfex)
  · obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e3 : v3 = .val (.word CH) := Option.some.inj (h3.symm.trans (ev_lw (hL _ hch)))
    subst e3
    have e1 : v1 = .val (.word (SEG + (PL + BitVec.ofNat 64 1))) :=
      Option.some.inj (h1.symm.trans (ev_add3 (ev_lw (hL _ hseg)) (ev_lw (hL _ hpl)) (ev_cw s 1)))
    have e2 : v2 = .val (.word (SAL - BitVec.ofNat 64 1)) :=
      Option.some.inj (h2.symm.trans (ev_sub2 (ev_lw (hL _ hsal)) (ev_cw s 1)))
    subst e1 e2
    refine ⟨argsOK_ext' (hEn Γ hE).2.1, fun x => argCells_fitsany (by simp [Node.neSig]),
      fun _ => ⟨SEG + (PL + BitVec.ofNat 64 1), SAL - BitVec.ofNat 64 1, CH, rfl, ?_⟩⟩
    have hP1 : (PL + BitVec.ofNat 64 1).toNat ≤ SL.toNat := by
      have e : (PL + BitVec.ofNat 64 1).toNat = PL.toNat + 1 := by
        rw [BitVec.toNat_add]; simp only [BitVec.toNat_ofNat]
        have := SL.isLt; omega
      omega
    rw [hSAL, sub_sub_one hlt]
    exact nIn_sub (hEn Γ hE).2.2 hP1
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  let kv' : List (MlS × BitVec 64) := (nm "ex", W) :: kv
  let EΓ' : Gam → Prop := fun Γ => EΓ Γ ∧ ∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNEXT
  have hEx' : ∀ Γ Γ', EΓ' Γ → Ext Γ Γ' → EΓ' Γ' := fun Γ Γ' h he => ⟨hEx _ _ h.1 he, obT_ext he h.2⟩
  have hexm : (nm "ex", W) ∈ kv' := by simp [kv']
  refine gp_post (L := LKV kv') (E := fun Γ _ _ => EΓ' Γ) ?_
    (fun m h p hp => h p (List.mem_cons_of_mem _ hp)) (fun Γ q M h => h.1)
  refine hoareG_pre (P := GI a (LKV kv') (fun Γ _ _ => EΓ' Γ)) ?_
    (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1, hE.2 W rfl⟩)
  swap
  · intro p hp
    simp only [kv', List.mem_cons] at hp
    rcases hp with rfl | hp
    · exact hlb
    · exact hL p hp
  refine childSt_G ha (kv := kv') (EΓ := EΓ') (ea := childAddrE (nm "br") segPl)
    (List.mem_cons_of_mem _ hbr) hexm
    (fun Γ h => ⟨(hEn Γ h.1).1, fits_of_ty (t := Types.tNEXT) (by simp [Node.nodeTys]) h.2⟩) ?_
  intro s Γ A hL hG hE hAe
  have hseg' : (nm "seg", SEG) ∈ kv' := List.mem_cons_of_mem _ hseg
  have hpl' : (nm "pl", PL) ∈ kv' := List.mem_cons_of_mem _ hpl
  obtain ⟨w, hw, hA⟩ := ev_childAddrE (hL _ (List.mem_cons_of_mem _ hbr)) hAe
  have hev : ev s segPl = some (.val (.word (SEG + PL))) :=
    ev_add2 (ev_lw (hL _ hseg')) (ev_lw (hL _ hpl'))
  obtain ⟨w', hw', hlt16⟩ := ldb_lt16 hG (hEn Γ hE.1).2.2 hlt hev hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  subst hw'
  exact ⟨w, hlt16, hA⟩

/-- Piece C. -/
theorem sxC_G {sg : Sig} (hsg : sg.grows = true)
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {KAL RK RL PL VP VL B : BitVec 64}
    (hkal : (nm "kal", KAL) ∈ kv) (hrk : (nm "rk", RK) ∈ kv) (hpl : (nm "pl", PL) ∈ kv)
    (hvp : (nm "vptr", VP) ∈ kv) (hvl : (nm "vlen", VL) ∈ kv) (hbr : (nm "br", B) ∈ kv)
    (hfidx : ∀ p ∈ kv, p.1 ≠ nm "idx") (hflf : ∀ p ∈ kv, p.1 ≠ nm "lf")
    (hKAL : KAL = RL - PL)
    {EΓ : Gam → Prop} (hPLf : ∀ Γ, EΓ Γ → PL.toNat ≤ RL.toNat) (hEx : ∀ Γ Γ', EΓ Γ → Ext Γ Γ' → EΓ Γ')
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧ NIn Γ RK RL ∧
      Hooks.VInR Types.tVAL Γ VP VL ∧ FrB p0 B 176)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ)) sxC
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  by_cases hPL : PL.toNat ≤ RL.toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hPL (hPLf Γ hE)
  unfold sxC
  refine ite_val hkal (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
  · exact valStore_G ha hvp hvl hbr (EΓ := EΓ) (fun Γ h => ⟨(hEn Γ h).1, (hEn Γ h).2.2.1, (hEn Γ h).2.2.2⟩)
  have hne : KAL ≠ 0 := by
    intro h0; subst h0
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
  have hlt : PL.toNat < RL.toNat := by
    have h1 : KAL.toNat ≠ 0 := fun h0 => hne (BitVec.eq_of_toNat_eq (by simpa using h0))
    rw [hKAL, BitVec.toNat_sub_of_le (by simpa [BitVec.le_def] using hPL)] at h1
    omega
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv m ∧ m.lookup (nm "idx") = some v ∧ ∃ I : BitVec 64, v = .val (.word I))
    (E1 := fun v Γ _ _ => EΓ Γ ∧ ∀ I : BitVec 64, v = .val (.word I) → I.toNat < 16)
    (L2 := LKV kv) (L3 := LKV kv) (E2 := fun Γ _ _ => EΓ Γ)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun I hI => ?_⟩) ?_
    (fun m0 m h0 h => lkv_res h hfidx)
  · obtain ⟨w, rfl, -⟩ := ev_loadByte_word hv
    exact ⟨lkv_set (s := s) hL hfidx _, by simp [setVarHOLFinite, FUPDATE], _, rfl⟩
  · have hev : ev s (.op .add [lv (nm "rk"), lv (nm "pl")]) = some (.val (.word (RK + PL))) :=
      ev_add2 (ev_lw (hL _ hrk)) (ev_lw (hL _ hpl))
    obtain ⟨w', hw', hlt16⟩ := ldb_lt16 hh'.1 (hEn Γ hE).2.1 hlt hev hv
    rw [hw'] at hI
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hI
    subst hI
    exact hlt16
  intro v
  by_cases hw : ∃ I : BitVec 64, v = .val (.word I)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨I, rfl⟩ := hw
  let kv1 : List (MlS × BitVec 64) := (nm "idx", I) :: kv
  let EΓ1 : Gam → Prop := fun Γ => EΓ Γ ∧ I.toNat < 16
  have hEx1 : ∀ Γ Γ', EΓ1 Γ → Ext Γ Γ' → EΓ1 Γ' := fun Γ Γ' h he => ⟨hEx _ _ h.1 he, h.2⟩
  have hidx : (nm "idx", I) ∈ kv1 := by simp [kv1]
  have hbr1 : (nm "br", B) ∈ kv1 := List.mem_cons_of_mem _ hbr
  have hflf1 : ∀ p ∈ kv1, p.1 ≠ nm "lf" := by
    intro p hp
    simp only [kv1, List.mem_cons] at hp
    rcases hp with rfl | hp
    · show nm "idx" ≠ nm "lf"; decide
    · exact hflf p hp
  refine gp_post (L := LKV kv1) (E := fun Γ _ _ => EΓ1 Γ) ?_
    (fun m h p hp => h p (List.mem_cons_of_mem _ hp)) (fun Γ q M h => h.1)
  refine hoareG_pre (P := GI a (LKV kv1) (fun Γ _ _ => EΓ1 Γ)) ?_
    (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1, hE.2 I rfl⟩)
  swap
  · intro p hp
    simp only [kv1, List.mem_cons] at hp
    rcases hp with rfl | hp
    · exact hlb
    · exact hL p hp
  refine gp_seq (L := LKV kv1) (E := fun Γ _ _ => EΓ1 Γ) ?_ ?_
  · refine hoareG_ite ?_ (gp_skip fun s h => h.1)
    refine hoareG_pre (P := GI a (LKV kv1) (fun Γ _ _ => EΓ1 Γ)) ?_ (fun s _ h => h.1)
    refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_true _) (by simp) (by simp)
      (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
        ⟨scrOld_nf0_co haC co rfl, fun _ => hEx1 _ _ hE co.ext⟩)
  · refine gp_decCall ha node_new_leafT_guestR (ctor_sp hX ctor_leaf_sp) (by simp [Node.nlSig])
      (fun _ => hsg)
      (L1 := fun v m => LKV kv1 m ∧ m.lookup (nm "lf") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
      (E1 := fun v Γ _ _ => EΓ1 Γ ∧
        ∀ W : BitVec 64, v = .val (.word W) → ∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNLEAF)
      (L2 := LKV kv1) (E2 := fun Γ _ _ => EΓ1 Γ)
      (fun s Γ q _ hL hh2 hE vs1 hvs => by
        have hrk1 : (nm "rk", RK) ∈ kv1 := List.mem_cons_of_mem _ hrk
        have hpl1 : (nm "pl", PL) ∈ kv1 := List.mem_cons_of_mem _ hpl
        have hkal1 : (nm "kal", KAL) ∈ kv1 := List.mem_cons_of_mem _ hkal
        have hvp1 : (nm "vptr", VP) ∈ kv1 := List.mem_cons_of_mem _ hvp
        have hvl1 : (nm "vlen", VL) ∈ kv1 := List.mem_cons_of_mem _ hvl
        have hvs' : evs s [.op .add [lv (nm "rk"), lv (nm "pl"), cw 1], .op .sub [lv (nm "kal"), cw 1],
            lv (nm "vptr"), lv (nm "vlen")] = some [.val (.word (RK + (PL + BitVec.ofNat 64 1))),
              .val (.word (KAL - BitVec.ofNat 64 1)), .val (.word VP), .val (.word VL)] :=
          evs_cons (ev_add3 (ev_lw (hL _ hrk1)) (ev_lw (hL _ hpl1)) (ev_cw s 1))
            (evs_cons (ev_sub2 (ev_lw (hL _ hkal1)) (ev_cw s 1))
              (evs_cons (ev_lw (hL _ hvp1)) (evs_cons (ev_lw (hL _ hvl1)) evs_nil)))
        rw [hvs'] at hvs
        cases hvs
        obtain ⟨-, hnin, hvin, -⟩ := hEn Γ hE.1
        refine ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs').1,
          fun x hx => argCells_any (by simp [Node.nlSig]) hx,
          fun _ => ⟨RK + (PL + BitVec.ofNat 64 1), KAL - BitVec.ofNat 64 1, VP, VL, rfl, ?_, hvin⟩⟩
        have hP1 : (PL + BitVec.ofNat 64 1).toNat ≤ RL.toNat := by
          have e : (PL + BitVec.ofNat 64 1).toNat = PL.toNat + 1 := by
            rw [BitVec.toNat_add]; simp only [BitVec.toNat_ofNat]
            have := RL.isLt; omega
          omega
        rw [hKAL, sub_sub_one hlt]
        exact nIn_sub hnin hP1)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
        fun v hv _ => ⟨hEx1 _ _ hE co.ext, fun W hW => by
          obtain ⟨o, ho, hvo, hot⟩ := hQ v hv
          subst hW
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
          exact ⟨o, ho, hvo.symm, hot⟩⟩⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hflf1 v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun m0 m h0 h => lkv_res h hflf1)
    intro v
    by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨W, rfl⟩ := hw
    let kv2 : List (MlS × BitVec 64) := (nm "lf", W) :: kv1
    let EΓ2 : Gam → Prop := fun Γ => EΓ1 Γ ∧ ∃ o ∈ Γ, o.base = W ∧ o.ty = Types.tNLEAF
    have hlfm : (nm "lf", W) ∈ kv2 := by simp [kv2]
    refine gp_post (L := LKV kv2) (E := fun Γ _ _ => EΓ2 Γ) ?_
      (fun m h p hp => h p (List.mem_cons_of_mem _ hp)) (fun Γ q M h => h.1)
    refine hoareG_pre (P := GI a (LKV kv2) (fun Γ _ _ => EΓ2 Γ)) ?_
      (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1, hE.2 W rfl⟩)
    swap
    · intro p hp
      simp only [kv2, List.mem_cons] at hp
      rcases hp with rfl | hp
      · exact hlb
      · exact hL p hp
    refine childSt_G ha (kv := kv2) (EΓ := EΓ2) (ea := childAddrI (nm "br") (nm "idx"))
      (List.mem_cons_of_mem _ hbr1) hlfm
      (fun Γ h => ⟨(hEn Γ h.1.1).1, fits_of_ty (t := Types.tNLEAF) (by simp [Node.nodeTys]) h.2⟩) ?_
    intro s Γ A hL hG hE hAe
    have := ev_childAddrI (hL _ (List.mem_cons_of_mem _ hbr1)) (hL _ (List.mem_cons_of_mem _ hidx)) hAe
    exact ⟨I, hE.1.2, this⟩

def sxSig : Sig := ⟨[.any, .any, .any, .any, .any, .any], [.fits Types.nodeU], [], true⟩

/-- The precondition: `node` is an extension object of `Γ`, `(rk, rl)` a `` slice, `pl` at most
`rl` and at most the node's segment length (read at the entry state). -/
def SxPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ N RK RL VP VL PL : BitVec 64,
    vs = [.val (.word N), .val (.word RK), .val (.word RL), .val (.word VP), .val (.word VL),
      .val (.word PL)] ∧
    (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ NIn Γ RK RL ∧ PL.toNat ≤ RL.toNat ∧
    PL.toNat ≤ (rd s.memory (N + 40)).toNat ∧ Hooks.VInR Types.tVAL Γ VP VL

def SxF (N RK RL VP VL PL W W2 W3 : BitVec 64) (Γ : Gam) : Prop :=
  (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ NIn Γ RK RL ∧ PL.toNat ≤ RL.toNat ∧
    PL.toNat ≤ W2.toNat ∧ NIn Γ W W2 ∧ (Fits Γ Types.nodeU W3 ∧ Hooks.VInR Types.tVAL Γ VP VL)

theorem sxF_ext {N RK RL VP VL PL W W2 W3 : BitVec 64} {Γ Γ' : Gam}
    (h : SxF N RK RL VP VL PL W W2 W3 Γ) (he : Ext Γ Γ') : SxF N RK RL VP VL PL W W2 W3 Γ' :=
  ⟨obT_ext he h.1, nIn_ext he h.2.1, h.2.2.1, h.2.2.2.1, nIn_ext he h.2.2.2.2.1,
    fits_ext he h.2.2.2.2.2.1, Hooks.vInR_ext he h.2.2.2.2.2.2⟩

theorem lkv_cons {kv : List (MlS × BitVec 64)} {m : LocalsH} {x : MlS} {W : BitVec 64}
    (h : LKV kv m) (hx : m.lookup x = some (.val (.word W))) : LKV ((x, W) :: kv) m := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact hx
  · exact h p hp

/-- The entry facts, in terms of the memory. -/
def SxE (N RK RL VP VL PL : BitVec 64) (Γ : Gam) (M : Mem) : Prop :=
  (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ NIn Γ RK RL ∧ PL.toNat ≤ RL.toNat ∧
    PL.toNat ≤ (rd M (N + 40)).toNat ∧ NIn Γ (rd M (N + 32)) (rd M (N + 40)) ∧
    (Fits Γ Types.nodeU (rd M (N + 48)) ∧ Hooks.VInR Types.tVAL Γ VP VL)

theorem sxE_init {Γ : Gam} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {N RK RL VP VL PL : BitVec 64}
    (hn : ∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) (hk : NIn Γ RK RL) (h1 : PL.toNat ≤ RL.toNat)
    (h2 : PL.toNat ≤ (rd s.memory (N + 40)).toNat) (hv : Hooks.VInR Types.tVAL Γ VP VL) :
    SxE N RK RL VP VL PL Γ s.memory := by
  refine ⟨hn, hk, h1, h2, slice_of_node hG (by
    obtain ⟨o, ho, hb, ht⟩ := hn; exact ⟨o, ho, hb, Or.inr ht⟩), ?_, hv⟩
  obtain ⟨o, ho, hb, ht⟩ := hn
  obtain ⟨p, hp, hord, hbase, hend, hcases⟩ := Band.node_facts hG ho
    (by simp [Band.nodeTys, ht])
  subst hb
  rcases hcases with ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -, -, hf⟩ | ⟨h, -⟩
  · exact absurd (h.symm.trans ht) (by decide)
  · exact absurd (h.symm.trans ht) (by decide)
  · exact hf
  · exact absurd (h.symm.trans ht) (by decide)

theorem lkv_new {kv : List (MlS × BitVec 64)} {s : State σ} (h : LKV kv s.locals) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (w : BitVec 64) :
    LKV ((x, w) :: kv) (setVarHOLFinite x (.val (.word w)) s).locals :=
  lkv_cons (lkv_set h hx _) (by simp [setVarHOLFinite, FUPDATE])

/-- **`_split_extension`'s summary** at `guestHooksR`. -/
theorem sumSpecA_split_extension_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_split_extension") sxSig
      (fun vs s Γ => SxPre vs s Γ) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ∃ o ∈ Γ', v = .val (.word o.base) ∧
    o.ty = Types.tNBRANCH) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_sx hl
  obtain ⟨N, RK, RL, VP, VL, PL, rfl, hn, hk, h1, h2, hvv⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sxSig [] _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "node", N), (nm "rk", RK), (nm "rl", RL), (nm "vptr", VP),
    (nm "vlen", VL), (nm "pl", PL)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
    · exact (hbind 4 (by decide) (by simp)).1
    · exact (hbind 5 (by decide) (by simp)).1
  have hnode : (nm "node", N) ∈ kv0 := by simp [kv0]
  have hk0 : ∀ x : MlS, (x = nm "seg" ∨ x = nm "sl" ∨ x = nm "child") → ∀ p ∈ kv0, p.1 ≠ x := by
    intro x hx p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hx with rfl | rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ M => SxE N RK RL VP VL PL Γ M))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
        ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, sxE_init hh.1 hn hk h1 h2 hvv⟩
  · intro r t _ _ h
    exact gp_final h
  unfold sxBody
  -- `var seg = lds (node + 32)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "seg") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ M => SxE N RK RL VP VL PL Γ M ∧
      ∀ W : BitVec 64, v = .val (.word W) → W = rd M (N + BitVec.ofNat 64 32))
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun W hW => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    exact ⟨lkv_set (s := s) hL (hk0 _ (Or.inl rfl)) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    rw [hv'] at hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
    exact hW.symm
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  -- `var sl = lds (node + 40)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "seg") = some (.val (.word W)) ∧
      m.lookup (nm "sl") = some v ∧ ∃ W2 : BitVec 64, v = .val (.word W2))
    (E1 := fun v Γ _ M => SxE N RK RL VP VL PL Γ M ∧ W = rd M (N + BitVec.ofNat 64 32) ∧
      ∀ W2 : BitVec 64, v = .val (.word W2) → W2 = rd M (N + BitVec.ofNat 64 40))
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, hE.2 W rfl, fun W2 hW2 => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 40 v hv
    exact ⟨lkv_set (s := s) hL.1 (hk0 _ (Or.inr (Or.inl rfl))) v,
      by rw [lk_keep (by decide) hL.2.1], by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 40 v hv
    rw [hv'] at hW2
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW2
    exact hW2.symm
  intro v2
  by_cases hw2 : ∃ W2 : BitVec 64, v2 = .val (.word W2)
  swap
  · exact hoareG_false fun s _ h => hw2 h.1.2.2.2
  obtain ⟨W2, rfl⟩ := hw2
  -- `var child = lds (node + 48)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "seg") = some (.val (.word W)) ∧
      m.lookup (nm "sl") = some (.val (.word W2)) ∧
      m.lookup (nm "child") = some v ∧ ∃ W3 : BitVec 64, v = .val (.word W3))
    (E1 := fun v Γ _ M => SxE N RK RL VP VL PL Γ M ∧ W = rd M (N + BitVec.ofNat 64 32) ∧
      W2 = rd M (N + BitVec.ofNat 64 40) ∧
      ∀ W3 : BitVec 64, v = .val (.word W3) → W3 = rd M (N + BitVec.ofNat 64 48))
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_)
    (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, hE.2.1, hE.2.2 W2 rfl, fun W3 hW3 => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 48 v hv
    exact ⟨lkv_set (s := s) hL.1 (hk0 _ (Or.inr (Or.inr rfl))) v,
      by rw [lk_keep (by decide) hL.2.1], by rw [lk_keep (by decide) hL.2.2.1],
      by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL.1 _ hnode) 48 v hv
    rw [hv'] at hW3
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW3
    exact hW3.symm
  intro v3
  by_cases hw3 : ∃ W3 : BitVec 64, v3 = .val (.word W3)
  swap
  · exact hoareG_false fun s _ h => hw3 h.1.2.2.2.2
  obtain ⟨W3, rfl⟩ := hw3
  let kvM : List (MlS × BitVec 64) := [(nm "seg", W), (nm "sl", W2), (nm "child", W3)] ++ kv0
  have hlM : ∀ m : LocalsH, LKV kv0 m → m.lookup (nm "seg") = some (.val (.word W)) →
      m.lookup (nm "sl") = some (.val (.word W2)) → m.lookup (nm "child") = some (.val (.word W3)) →
      LKV kvM m := by
    intro m h0 h1 h2 h3 p hp
    simp only [kvM, List.cons_append, List.nil_append, List.mem_cons] at hp
    rcases hp with rfl | rfl | rfl | hp
    · exact h1
    · exact h2
    · exact h3
    · exact h0 p hp
  have hconv : ∀ (Γ : Gam) (M : Mem), SxE N RK RL VP VL PL Γ M → W = rd M (N + BitVec.ofNat 64 32) →
      W2 = rd M (N + BitVec.ofNat 64 40) → W3 = rd M (N + BitVec.ofNat 64 48) →
      SxF N RK RL VP VL PL W W2 W3 Γ := by
    intro Γ M ⟨c1, c2, c3, c4, c5, c6⟩ e1 e2 e3
    subst e1 e2 e3
    exact ⟨c1, c2, c3, c4, c5, c6⟩
  refine hoareG_pre (P := GI a (LKV kvM) (fun Γ _ _ => SxF N RK RL VP VL PL W W2 W3 Γ)) ?_
    (fun s _ ⟨⟨hL, hseg, hsl, hch, _⟩, Γ, q, he, hh', hsc, hE⟩ => ⟨hlM _ hL hseg hsl hch, Γ, q, he, hh', hsc,
      hconv Γ _ hE.1 hE.2.1 hE.2.2.1 (hE.2.2.2 W3 rfl)⟩)
  have hfrM : ∀ p ∈ kvM, p.1 ≠ nm "br" := by
    intro p hp; simp only [kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine gp_decCall ha node_new_branchT_guestR (ctor_sp hX ctor_branch_sp) (by simp [Node.nbSig])
    (fun _ => rfl)
    (L1 := fun v m => LKV kvM m ∧ m.lookup (nm "br") = some v ∧ ∃ B : BitVec 64, v = .val (.word B))
    (E1 := fun v Γ _ _ => SxF N RK RL VP VL PL W W2 W3 Γ ∧
      ∀ B : BitVec 64, v = .val (.word B) → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧
        FrB a.p0 B 176)
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp [Node.nbSig]) rfl hvs).1,
      fun x hx => argCells_any (by simp [Node.nbSig]) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ => ⟨sxF_ext hE co.ext, fun B hB => by
        obtain ⟨o, ho, hvo, hot, hfr⟩ := hQ v hv q co.heap0.2.1
        subst hB
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
        exact ⟨⟨o, ho, hvo.symm, hot⟩, frB_of_ret haC co.heap0.2.2.1 co.heap ho hvo.symm hot hfr⟩⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfrM v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro v
  by_cases hw : ∃ B : BitVec 64, v = .val (.word B)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨B, rfl⟩ := hw
  let kvB : List (MlS × BitVec 64) := (nm "br", B) :: kvM
  let EM : Gam → Prop := fun Γ => SxF N RK RL VP VL PL W W2 W3 Γ ∧
    (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧ FrB a.p0 B 176
  have hExM : ∀ Γ Γ', EM Γ → Ext Γ Γ' → EM Γ' := fun Γ Γ' h he =>
    ⟨sxF_ext h.1 he, obT_ext he h.2.1, h.2.2⟩
  have hbrB : (nm "br", B) ∈ kvB := by simp [kvB]
  refine hoareG_pre (P := GI a (LKV kvB) (fun Γ _ _ => EM Γ)) ?_
    (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hlb, Γ, q, he, hh, hsc, hE.1, (hE.2 B rfl).1, (hE.2 B rfl).2⟩)
  have hfrB : ∀ p ∈ kvB, p.1 ≠ nm "sal" := by
    intro p hp; simp only [kvB, kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  -- `var sal = sl - pl`
  have hsl' : (nm "sl", W2) ∈ kvB := by simp [kvB, kvM, kv0]
  have hpl' : (nm "pl", PL) ∈ kvB := by simp [kvB, kvM, kv0]
  refine gp_dec ha.hH (L1 := LKV ((nm "sal", W2 - PL) :: kvB)) (L2 := fun _ => True) (L3 := fun _ => True)
    (fun s hs hL v hv => ?_) ?_ (fun _ _ _ _ => trivial)
  · have : v = .val (.word (W2 - PL)) :=
      Option.some.inj (hv.symm.trans (ev_sub2 (ev_lw (hL _ hsl')) (ev_lw (hL _ hpl'))))
    subst this
    exact lkv_new hL hfrB _
  let kvS : List (MlS × BitVec 64) := (nm "sal", W2 - PL) :: kvB
  have hmem : ∀ x ∈ kvB, x ∈ kvS := fun x hx => List.mem_cons_of_mem _ hx
  have hsalS : (nm "sal", W2 - PL) ∈ kvS := by simp [kvS]
  have hsegS : (nm "seg", W) ∈ kvS := by simp [kvS, kvB, kvM]
  have hplS : (nm "pl", PL) ∈ kvS := by simp [kvS, kvB, kvM, kv0]
  have hchS : (nm "child", W3) ∈ kvS := by simp [kvS, kvB, kvM]
  have hbrS : (nm "br", B) ∈ kvS := by simp [kvS, kvB]
  refine gp_seq (L := LKV kvS) (E := fun Γ _ _ => EM Γ) ?_ ?_
  · exact sxA_G ha hsalS hsegS hplS hchS hbrS rfl (EΓ := EM) (fun Γ h => h.1.2.2.2.1)
      (fun Γ h => ⟨h.2.1, h.1.2.2.2.2.2.1, h.1.2.2.2.2.1⟩)
  have hfexS : ∀ p ∈ kvS, p.1 ≠ nm "ex" := by
    intro p hp; simp only [kvS, kvB, kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine gp_seq (L := LKV kvS) (E := fun Γ _ _ => EM Γ) ?_ ?_
  · exact sxB_G rfl ha hsalS hsegS hplS hchS hbrS hfexS rfl (EΓ := EM) (fun Γ h => h.1.2.2.2.1)
      hExM (fun Γ h => ⟨h.2.1, h.1.2.2.2.2.2.1, h.1.2.2.2.2.1⟩)
  -- `var kal = rl - pl`
  have hfrS : ∀ p ∈ kvS, p.1 ≠ nm "kal" := by
    intro p hp; simp only [kvS, kvB, kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  have hrlS : (nm "rl", RL) ∈ kvS := by simp [kvS, kvB, kvM, kv0]
  have hrkS : (nm "rk", RK) ∈ kvS := by simp [kvS, kvB, kvM, kv0]
  have hvpS : (nm "vptr", VP) ∈ kvS := by simp [kvS, kvB, kvM, kv0]
  have hvlS : (nm "vlen", VL) ∈ kvS := by simp [kvS, kvB, kvM, kv0]
  refine gp_dec ha.hH (L1 := LKV ((nm "kal", RL - PL) :: kvS)) (L2 := fun _ => True) (L3 := fun _ => True)
    (fun s hs hL v hv => ?_) ?_ (fun _ _ _ _ => trivial)
  · have : v = .val (.word (RL - PL)) :=
      Option.some.inj (hv.symm.trans (ev_sub2 (ev_lw (hL _ hrlS)) (ev_lw (hL _ hplS))))
    subst this
    exact lkv_new hL hfrS _
  let kvK : List (MlS × BitVec 64) := (nm "kal", RL - PL) :: kvS
  have hkalK : (nm "kal", RL - PL) ∈ kvK := by simp [kvK]
  have hK : ∀ x ∈ kvS, x ∈ kvK := fun x hx => List.mem_cons_of_mem _ hx
  have hfidx : ∀ p ∈ kvK, p.1 ≠ nm "idx" := by
    intro p hp; simp only [kvK, kvS, kvB, kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  have hflf : ∀ p ∈ kvK, p.1 ≠ nm "lf" := by
    intro p hp; simp only [kvK, kvS, kvB, kvM, kv0, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  refine gp_seq (L := LKV kvK) (E := fun Γ _ _ => EM Γ) ?_ ?_
  · exact sxC_G rfl ha hkalK (hK _ hrkS) (hK _ hplS) (hK _ hvpS) (hK _ hvlS) (hK _ hbrS)
      hfidx hflf rfl (EΓ := EM) (fun Γ h => h.1.2.2.1) hExM
      (fun Γ h => ⟨h.2.1, h.1.2.1, h.1.2.2.2.2.2.2, h.2.2⟩)
  · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
    rw [ev_lw (hL _ (hK _ hbrS))] at hv
    cases hv
    obtain ⟨o, ho, hb, ht⟩ := hE.2.1
    refine ⟨retOK_fits1 (fits_of_ty (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, ht⟩),
      o, ho, by rw [hb], ht⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_split_extension_G
