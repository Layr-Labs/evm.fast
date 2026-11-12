import InitECandidate.Solver.MemSafe.Ins.Store

set_option autoImplicit false

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- `br + 32 + 8 * ld8 k`. -/
def childAddrB (br k : MlS) : ExpHOL 64 :=
  .op .add [lv br, cw 32, .panop .mul [.loadByte (lv k), cw 8]]

theorem ev_childAddrB {s : State σ} {br k : MlS} {B K A : BitVec 64}
    (hb : s.locals.lookup br = some (.val (.word B))) (hk : s.locals.lookup k = some (.val (.word K)))
    (h : ev s (childAddrB br k) = some (.val (.word A))) :
    ∃ w : BitVec 64, ev s (.loadByte (lv k)) = some (.val (.word w)) ∧ A = B + (32 + w * 8) := by
  unfold childAddrB at h
  obtain ⟨vs, hvs⟩ := ev_op_evs h
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, -⟩ := evs_cons_inv hvs2
  obtain ⟨vm, hvm⟩ := ev_panop_evs h3
  obtain ⟨u1, us1, rfl, hu1, -⟩ := evs_cons_inv hvm
  obtain ⟨w, rfl, -⟩ := ev_loadByte_word hu1
  refine ⟨w, hu1, ?_⟩
  rw [ev_add3 (ev_lw hb) (ev_cw s 32) (ev_mul2 hu1 (ev_cw s 8))] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  rw [← h]
  simp


def LKV (kv : List (MlS × BitVec 64)) (m : LocalsH) : Prop :=
  ∀ p ∈ kv, m.lookup p.1 = some (.val (.word p.2))

theorem lkv_set {kv : List (MlS × BitVec 64)} {s : State σ} (h : LKV kv s.locals) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (v : ValueHOL 64) : LKV kv (setVarHOLFinite x v s).locals :=
  fun p hp => lk_keep (hx p hp) (h p hp)

theorem lkv_res {kv : List (MlS × BitVec 64)} {m m0 : LocalsH} (h : LKV kv m) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) : LKV kv (m.resVarEq (x, m0.lookup x)) := by
  intro p hp
  rw [lookup_resVarEq_ne _ _ (Ne.symm (hx p hp))]
  exact h p hp

theorem ctor_leaf_sp : ctorNames.contains (nm "node_new_leaf") = true := by decide_cbv
theorem ctor_ext_sp : ctorNames.contains (nm "node_new_ext") = true := by decide_cbv
theorem ctor_branch_sp : ctorNames.contains (nm "node_new_branch") = true := by decide_cbv

/-- `var lf = node_new_leaf(k + 1, l - 1, v, vl); st br + 32 + 8 * ld8 k, lf`. -/
def cbLeaf (nk nl nv nvl nlf br : MlS) : ProgHOL 64 :=
  .decCall nlf .one (nm "node_new_leaf")
    [.op .add [lv nk, cw 1], .op .sub [lv nl, cw 1], lv nv, lv nvl]
    (.store (childAddrB br nk) (lv nlf))

theorem cbLeaf_G {sg : Sig} (hsg : sg.grows = true)
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {nk nl nv nvl nlf br : MlS} {K Lw V VL B : BitVec 64}
    (hk : (nk, K) ∈ kv) (hl : (nl, Lw) ∈ kv) (hv : (nv, V) ∈ kv) (hvl : (nvl, VL) ∈ kv)
    (hbr : (br, B) ∈ kv) (hf : ∀ p ∈ kv, p.1 ≠ nlf) (hLw : Lw ≠ 0)
    {EΓ : Gam → Prop}
    (hEn : ∀ Γ, EΓ Γ → NIn Γ K Lw ∧ Hooks.VInR Types.tVAL Γ V VL ∧
      ∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH)
    (hEx : ∀ Γ Γ', EΓ Γ → Ext Γ Γ' → EΓ Γ')
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ))
      (cbLeaf nk nl nv nvl nlf br)
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  unfold cbLeaf
  refine gp_decCall ha node_new_leaf_guestR (ctor_sp hX ctor_leaf_sp)
    (by simp [Node.nlSig]) (fun _ => hsg)
    (L1 := fun v m => LKV kv m ∧ m.lookup nlf = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ _ => EΓ Γ ∧ ∀ W : BitVec 64, v = .val (.word W) → Fits Γ Types.nodeU W)
    (L2 := LKV kv) (E2 := fun Γ _ _ => EΓ Γ)
    (fun s Γ q _ hL hh hE vs1 hvs => by
      have hvs' : evs s [.op .add [lv nk, cw 1], .op .sub [lv nl, cw 1], lv nv, lv nvl] =
          some [.val (.word (K + 1)), .val (.word (Lw - 1)), .val (.word V), .val (.word VL)] :=
        evs_cons (ev_add2 (ev_lw (hL _ hk)) (ev_cw s 1)) (evs_cons (ev_sub2 (ev_lw (hL _ hl))
          (ev_cw s 1)) (evs_cons (ev_lw (hL _ hv)) (evs_cons (ev_lw (hL _ hvl)) evs_nil)))
      rw [hvs'] at hvs
      cases hvs
      obtain ⟨hnin, hvin, -⟩ := hEn Γ hE
      refine ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs').1,
        fun x hx => argCells_any (by simp [Node.nlSig]) hx,
        fun _ => ⟨K + 1, Lw - 1, V, VL, rfl, ?_, hvin⟩⟩
      exact nIn_sub (pl := 1) hnin (by
        have : Lw.toNat ≠ 0 := fun h0 => hLw (BitVec.eq_of_toNat_eq (by simpa using h0))
        simp; omega))
    (fun s st vs1 callee r Γ Γ' q q' _ _ _ _ hE hLc _ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv _ => ⟨hEx _ _ hE co.ext, fun W hW => by
        subst hW; exact co.ret _ hv 0 _ W rfl (by simp [flattenHOL])⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hf v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun m0 m h0 h => lkv_res h hf)
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  refine gp_post (L := fun m => LKV kv m ∧ m.lookup nlf = some (.val (.word W)))
    (E := fun Γ _ _ => EΓ Γ ∧ Fits Γ Types.nodeU W) ?_ (fun m h => h.1) (fun Γ q M h => h.1)
  refine hoareG_pre (gp_stWX ha (L := fun m => LKV kv m ∧ m.lookup nlf = some (.val (.word W)))
    (E := fun Γ _ _ => EΓ Γ ∧ Fits Γ Types.nodeU W) (fun s v hL hv => ⟨W, ?_⟩) ?_ ?_)
    (fun s _ ⟨⟨hL, hlf, _⟩, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨⟨hL, hlf⟩, Γ, q, he, hh, hsc, hE.1, hE.2 W rfl⟩)
  · rw [ev_lw hL.2] at hv; exact (Option.some.inj hv).symm
  · intro s Γ q A V hL hh hE hA he
    obtain ⟨w, hw, hAe⟩ := ev_childAddrB (hL.1 _ hbr) (hL.1 _ hk) hA
    have hnl := hEn Γ hE.1
    have hVW : V = W := by
      rw [ev_lw hL.2] at he; simpa using he.symm
    have hlt : w.toNat < 16 := by
      have hn := nibble_of_nIn hh.1 hnl.1 (k := 0) (by
        have : Lw.toNat ≠ 0 := fun h0 => hLw (BitVec.eq_of_toNat_eq (by simpa using h0))
        omega)
      rw [show K + BitVec.ofNat 64 0 = K by simp] at hn
      obtain ⟨w', hw', hlt'⟩ := loadByte_lt16 (ev_lw (hL.1 _ hk)) hn hw
      have hww : w = w' := by simpa using hw'
      rw [hww]; exact hlt'
    obtain ⟨-, -, o, ho, hob, hot⟩ := hnl
    obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
    obtain ⟨hs1, hs2⟩ := nbranch_slot hot hsz (j := 4 + w.toNat) (by omega) (by omega)
    refine ⟨o, ho, 4 + w.toNat, hs1, hs2, ?_, ?_⟩
    · rw [hAe]; unfold Obj.cell; rw [hob]
      have hw8 : (BitVec.ofNat 64 (8 * (4 + w.toNat))) = 32 + w * 8 := by
        apply BitVec.eq_of_toNat_eq
        simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
        have : w.toNat < 16 := hlt
        have h32 : (32 : BitVec 64).toNat = 32 := rfl
        have h8 : (8 : BitVec 64).toNat = 8 := rfl
        rw [h32, h8]
        omega
      rw [hw8]
    · show Fits Γ ((Types.guestC.ty o.ty).slot (4 + w.toNat)) V
      rw [nbranch_child hot (by omega) (by omega)]
      rw [hVW]; exact hE.2
  · intro s Γ q A V _ _ hE _ _
    exact hE

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.cbLeaf_G
#print axioms InitECandidate.Solver.MemSafe.Ins.ev_childAddrB
