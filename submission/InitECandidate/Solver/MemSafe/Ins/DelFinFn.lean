import InitECandidate.Solver.MemSafe.Ins.DelFin
import InitECandidate.Solver.MemSafe.Ins.Inval

set_option autoImplicit false

/-!
# `_delete_ext_finish`: the summary
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

def dxSig : Sig := ⟨[.fits Types.nodeU, .any, .any, .fits Types.nodeU], [.fits Types.nodeU], [], true⟩

/-- `node` is an extension object, `(seg, sl)` a `` slice, `nc` null or a node. -/
def DxPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ N SEG SL NC : BitVec 64,
    vs = [.val (.word N), .val (.word SEG), .val (.word SL), .val (.word NC)] ∧
    (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ NIn Γ SEG SL ∧ Fits Γ Types.nodeU NC

def DxE0 (N SEG SL NC : BitVec 64) (Γ : Gam) : Prop :=
  (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ NIn Γ SEG SL ∧ Fits Γ Types.nodeU NC

theorem dxE0_ext {N SEG SL NC : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : DxE0 N SEG SL NC Γ) : DxE0 N SEG SL NC Γ' :=
  ⟨obT_ext he h.1, nIn_ext he h.2.1, fits_ext he h.2.2⟩

/-- Tag `K0 ∉ {0, 3}` leaves a leaf or an extension. -/
theorem ndT_leafext {Γ : Gam} {NC K0 : BitVec 64} (h : NdT Γ NC K0) (h0 : K0 ≠ 0) (h3 : K0 ≠ 3) :
    (K0 = 1 ∧ ∃ o ∈ Γ, o.base = NC ∧ o.ty = Types.tNLEAF) ∨
      (K0 = 2 ∧ ∃ o ∈ Γ, o.base = NC ∧ o.ty = Types.tNEXT) := by
  rcases h with ⟨o, ho, hb, ht, hk⟩ | ⟨o, ho, hb, ht, hk⟩ | ⟨o, ho, hb, ht, hk⟩ | ⟨o, ho, hb, ht, hk⟩
  · exact absurd hk h0
  · exact Or.inl ⟨hk, o, ho, hb, ht⟩
  · exact Or.inr ⟨hk, o, ho, hb, ht⟩
  · exact absurd hk h3

theorem dxFin_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dxSig [] vs s0 Γ0 p0) guestCtx)
    {N SEG SL NC : BitVec 64} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dxSig [] vs s0 Γ0 p0)
        (LKV [(nm "node", N), (nm "seg", SEG), (nm "sl", SL), (nm "nc", NC)])
        (fun Γ _ _ => DxE0 N SEG SL NC Γ))
      dxBody
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dxSig [] vs s0 Γ0 p0)
        (fun _ => True) (fun _ _ _ => True)
        (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧
          ∃ w, v = .val (.word w) ∧ Rt Γ' w)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dxSig [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv0 : List (MlS × BitVec 64) :=
    [(nm "node", N), (nm "seg", SEG), (nm "sl", SL), (nm "nc", NC)] with hkv0
  have hnode : (nm "node", N) ∈ kv0 := by simp [kv0]
  have hseg : (nm "seg", SEG) ∈ kv0 := by simp [kv0]
  have hsl : (nm "sl", SL) ∈ kv0 := by simp [kv0]
  have hnc : (nm "nc", NC) ∈ kv0 := by simp [kv0]
  have hfck : ∀ p ∈ kv0, p.1 ≠ nm "ck" := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  unfold dxBody
  refine gp_seq (L := LKV kv0) (E := fun Γ _ _ => DxE0 N SEG SL NC Γ) ?_ ?_
  · -- `if nc == 0 { return 0; }`
    refine ite_val hnc (fun s h => h.1) (fun hc => ?_) (fun hc => gp_skip fun s h => h)
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
    rw [ev_cw] at hv
    cases hv
    exact rv_rt (Or.inl rfl)
  -- `var ck = lds (nc + 0)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "ck") = some v ∧ ∃ K0 : BitVec 64, v = .val (.word K0))
    (E1 := fun v Γ _ _ => DxE0 N SEG SL NC Γ ∧ ∀ K0 : BitVec 64, v = .val (.word K0) → NdT Γ NC K0)
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun K0 hK0 => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnc) 0 v hv
    exact ⟨lkv_set (s := s) hL hfck v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · obtain ⟨o, ho, hb, ht⟩ := node_real ha hs (k := 0) (by omega) hE.2.2 (hL _ hnc) hv
    have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnc) 0 v hv
    rw [hv'] at hK0
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hK0
    subst hK0
    have := ndT_of_obj hh'.1 ho ht
    rw [hb] at this
    simpa using this
  intro v
  by_cases hw : ∃ K0 : BitVec 64, v = .val (.word K0)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨K0, rfl⟩ := hw
  set kvK : List (MlS × BitVec 64) := (nm "ck", K0) :: kv0 with hkvK
  let E1 : Gam → Prop := fun Γ => DxE0 N SEG SL NC Γ ∧ NdT Γ NC K0
  have hE1x : ∀ Γ Γ', Ext Γ Γ' → E1 Γ → E1 Γ' := fun Γ Γ' he h => ⟨dxE0_ext he h.1, ndT_ext he h.2⟩
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ _ _ => E1 Γ)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 K0 rfl⟩)
  have hkm : (nm "ck", K0) ∈ kvK := by simp [kvK]
  have hnodeK : (nm "node", N) ∈ kvK := List.mem_cons_of_mem _ hnode
  have hncK : (nm "nc", NC) ∈ kvK := List.mem_cons_of_mem _ hnc
  -- the branch case
  refine gp_seq (L := LKV kvK) (E := fun Γ _ _ => E1 Γ ∧ K0 ≠ 3) ?_ ?_
  · refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_seq (L := LKV kvK) (E := fun Γ _ _ => E1 Γ) ?_ ?_
      · exact extChildSt_G ha hnodeK hncK (EΓ := E1) (fun Γ h => ⟨h.1.1, h.1.2.2⟩)
      · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
        rw [ev_lw (hL _ hnodeK)] at hv
        cases hv
        obtain ⟨o, ho, hb, ht⟩ := hE.1.1
        exact rv_rt (rt_of_obj (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, hb, ht⟩)
    · have hne : K0 ≠ 3 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE, hne⟩
  -- the hashed case
  refine gp_seq (L := LKV kvK) (E := fun Γ _ _ => E1 Γ ∧ K0 ≠ 3 ∧ K0 ≠ 0) ?_ ?_
  · refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_of_funRet (funRet_mpt_fail hX))
        (by simp) (by simp)
        (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
          fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
        (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
          ⟨scrOld_nf0_co haC co rfl, fun ⟨v, hv⟩ => (hLc v hv).elim⟩)
    · have hne : K0 ≠ 0 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE.1, hE.2, hne⟩
  -- the concatenation and the new node
  set EK2 : Gam → Prop := fun Γ => E1 Γ ∧ K0 ≠ 3 ∧ K0 ≠ 0 with hEK2
  have hEK2x : ∀ Γ Γ', Ext Γ Γ' → EK2 Γ → EK2 Γ' := fun Γ Γ' he h => ⟨hE1x _ _ he h.1, h.2⟩
  have hfcat : ∀ p ∈ kvK, p.1 ≠ nm "cat" := by
    intro p hp
    simp only [kvK, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  have hsegK : (nm "seg", SEG) ∈ kvK := List.mem_cons_of_mem _ hseg
  have hslK : (nm "sl", SL) ∈ kvK := List.mem_cons_of_mem _ hsl
  have hleafext : ∀ Γ, EK2 Γ → ∃ o ∈ Γ, o.base = NC ∧ (o.ty = Types.tNLEAF ∨ o.ty = Types.tNEXT) := by
    intro Γ h
    rcases ndT_leafext h.1.2 h.2.2 h.2.1 with ⟨-, o, ho, hb, ht⟩ | ⟨-, o, ho, hb, ht⟩
    · exact ⟨o, ho, hb, Or.inl ht⟩
    · exact ⟨o, ho, hb, Or.inr ht⟩
  unfold dxCat
  refine gp_decCallA ha sumSpecA_nibbles_concat_R (funSpec_nc_val hX) (by simp [MptH.ncSig])
    (fun _ => rfl)
    (L1 := fun v m => LKV kvK m ∧ m.lookup (nm "cat") = some v ∧ ∃ CAT : BitVec 64, v = .val (.word CAT))
    (E1 := fun v Γ _ M => EK2 Γ ∧ ∀ CAT : BitVec 64, v = .val (.word CAT) →
      NIn Γ CAT (SL + rd M (NC + BitVec.ofNat 64 40)))
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
      ⟨scrOld_nf0_co haC co rfl, fun v hv hsh => ?_⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfcat v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ _ => trivial)
  · have hany := anyArgsG (a := a) (sg' := MptH.ncSig) (Γ := Γ) (q := q) (by simp [MptH.ncSig]) rfl hvs
    refine ⟨hany.1, hany.2, fun callee => ?_⟩
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [evs_nil] at hr4
    cases hr4
    have e1 : v1 = .val (.word SEG) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hsegK)))
    have e2 : v2 = .val (.word SL) := Option.some.inj (h2.symm.trans (ev_lw (hL _ hslK)))
    have e3 := Spec.Mpt.Dec.ev_ld (hL _ hncK) 32 v3 h3
    have e4 := Spec.Mpt.Dec.ev_ld (hL _ hncK) 40 v4 h4
    subst e1 e2 e3 e4
    intro AL BL hAL hBL
    simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq, HolWordLab.word.injEq] at hAL hBL
    subst hAL hBL
    exact nIn_sum_lt hE.1.1.2.1 (slice_of_node hh.1 (hleafext Γ hE))
  · -- the call's result: adopt the buffer
    subst hv
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [evs_nil] at hr4
    cases hr4
    have e1 : v1 = .val (.word SEG) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hsegK)))
    have e2 : v2 = .val (.word SL) := Option.some.inj (h2.symm.trans (ev_lw (hL _ hslK)))
    have e3 := Spec.Mpt.Dec.ev_ld (hL _ hncK) 32 v3 h3
    have e4 := Spec.Mpt.Dec.ev_ld (hL _ hncK) 40 v4 h4
    subst e1 e2 e3 e4
    have hsl' := slice_of_node co.heap0.1 (hleafext Γ hE)
    have hGs : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := co.heap0.1
    obtain ⟨p', out, hv', hp', hord', hmono, hbe, h8, hb, hhp, hfr, hbyte⟩ :=
      hLc _ rfl _ _ _ _ rfl (by
        dsimp only
        have h1 : SL.toNat ≤ 2 ^ 32 := nIn_len_le hE.1.1.2.1
        have h2 : (rd s.memory (NC + BitVec.ofNat 64 40)).toNat ≤ 2 ^ 32 := nIn_len_le hsl'
        omega)
        (fun j hj => Hooks.nibble_of_G hGs hE.1.1.2.1 hj)
        (fun j hj => Hooks.nibble_of_G hGs hsl' hj)
        q hpe (heap_ord co.heap0)
        (fun h0 => nIn_hp rfl co.heap0 hE.1.1.2.1 h0) (fun h0 => nIn_hp rfl co.heap0 hsl' h0)
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    have hSLb : SL.toNat ≤ 2 ^ 32 := nIn_len_le hE.1.1.2.1
    have hBLb : (rd s.memory (NC + BitVec.ofNat 64 40)).toNat ≤ 2 ^ 32 := nIn_len_le hsl'
    have hE32 : heapEnd < 2 ^ 32 := by decide
    have hlen : (SL + rd s.memory (NC + BitVec.ofNat 64 40)).toNat =
        SL.toNat + (rd s.memory (NC + BitVec.ofNat 64 40)).toNat := by
      rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
    have hbyte' : ∀ j, j < (SL + rd s.memory (NC + BitVec.ofNat 64 40)).toNat →
        Hooks.byteAt st.memory st.be (out + BitVec.ofNat 64 j) < 16 := by
      intro j hj
      rw [hlen] at hj
      have h := hbyte j hj
      have hbe' : st.be = (callEntryStateHOLFinite s callee).be := hbe
      rw [hbe']
      exact h
    obtain ⟨Γ'', hx, hh2, hsc2, hN, hnew, hge⟩ := buf_adopt ha haC rfl rfl co rfl
      (len := SL + rd s.memory (NC + BitVec.ofNat 64 40))
      (M := SL.toNat + (rd s.memory (NC + BitVec.ofNat 64 40)).toNat) h8 hb hhp hfr (by rw [hlen]) hbyte'
    -- `nc`'s length cell is unchanged by the call
    obtain ⟨o, ho, hob, hot⟩ := hleafext Γ hE
    have hnode : o.ty ∈ Node.nodeTys := by rcases hot with h | h <;> simp [Node.nodeTys, h]
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := by
      obtain ⟨p1, hp1, hord, hLy, -⟩ := co.heap0.1
      exact (hLy.1 o ho).2.2.2.1
    have hs5 : o.HasSlot 5 := by
      rcases hot with h | h
      · rw [h, Types.ty_NLEAF] at hsz; simp only [Types.nleafTy] at hsz; unfold Obj.HasSlot; omega
      · rw [h, Types.ty_NEXT] at hsz; simp only [Types.nextTy] at hsz; unfold Obj.HasSlot; omega
    have hpr5 : (a.Cb.ty o.ty).slot 5 = .prot := by
      show (Types.guestC.ty o.ty).slot 5 = .prot
      rcases hot with h | h <;> rw [h] <;> decide
    have hfrm := prot_frame co ho hs5 hpr5 hnode rfl rfl
    have hc5 : o.cell 5 = NC + BitVec.ofNat 64 40 := by rw [Obj.cell, hob]
    rw [hc5] at hfrm
    refine ⟨Γ'', hx, hh2, hsc2, hEK2x _ _ (ext_trans co.ext hx) hE, fun CAT hCAT => ?_⟩
    rw [hv'] at hCAT
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hCAT
    subst hCAT
    rw [show rd st.memory (NC + BitVec.ofNat 64 40) = rd s.memory (NC + BitVec.ofNat 64 40) from
      rd_eq_of_mem hfrm]
    exact hN
  intro v
  by_cases hw : ∃ CAT : BitVec 64, v = .val (.word CAT)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨CAT, rfl⟩ := hw
  set kvC : List (MlS × BitVec 64) := (nm "cat", CAT) :: kvK with hkvC
  refine hoareG_pre (P := GI a (LKV kvC) (fun Γ _ M => EK2 Γ ∧
      NIn Γ CAT (SL + rd M (NC + BitVec.ofNat 64 40)))) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE.1,
      hE.2 CAT rfl⟩)
  have hfcl : ∀ p ∈ kvC, p.1 ≠ nm "cl" := by
    intro p hp
    simp only [kvC, kvK, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  have hslC : (nm "sl", SL) ∈ kvC := List.mem_cons_of_mem _ hslK
  have hncC : (nm "nc", NC) ∈ kvC := List.mem_cons_of_mem _ hncK
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kvC m ∧ m.lookup (nm "cl") = some v ∧ ∃ CL : BitVec 64, v = .val (.word CL))
    (E1 := fun v Γ _ _ => EK2 Γ ∧ ∀ CL : BitVec 64, v = .val (.word CL) → NIn Γ CAT CL)
    (L2 := fun _ => True) (E2 := fun _ _ _ => True)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, fun CL hCL => ?_⟩) ?_
    (fun _ _ _ _ => trivial)
  · obtain ⟨x, hx⟩ := Spec.Mpt.Leaves.ev_word_of_op hv
    exact ⟨lkv_set (s := s) hL hfcl v, by simp [setVarHOLFinite, FUPDATE], x, hx⟩
  · obtain ⟨x, y, hx, hy, rfl⟩ := Spec.Mpt.Leaves.ev_add2_inv' hv
    have ex : x = SL := by
      have := (Option.some.inj (hx.symm.trans (ev_lw (hL _ hslC))))
      simpa using this
    have ey := Spec.Mpt.Dec.ev_ld (hL _ hncC) 40 _ hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hCL ey
    subst ex
    rw [← hCL, ey]
    exact hE.2
  intro v
  by_cases hw : ∃ CL : BitVec 64, v = .val (.word CL)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨CL, rfl⟩ := hw
  set kvL : List (MlS × BitVec 64) := (nm "cl", CL) :: kvC with hkvL
  refine hoareG_pre (P := GI a (LKV kvL) (fun Γ _ _ => EK2 Γ ∧ NIn Γ CAT CL)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE.1,
      hE.2 CL rfl⟩)
  have hckL : (nm "ck", K0) ∈ kvL := by simp [kvL, kvC, kvK]
  have hncL : (nm "nc", NC) ∈ kvL := by simp [kvL, kvC, kvK, kv0]
  have hcatL : (nm "cat", CAT) ∈ kvL := by simp [kvL, kvC]
  have hclL : (nm "cl", CL) ∈ kvL := by simp [kvL]
  refine gp_seq (L := LKV kvL) (E := fun Γ _ _ => (EK2 Γ ∧ NIn Γ CAT CL) ∧ K0 ≠ 2) ?_ ?_
  · refine ite_val hckL (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · have hK2 : K0 = 2 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
      refine gp_tail ha node_new_extT_guestR (ctor_sp hX ctor_ext_sp) (by simp [Node.neSig])
        (fun _ => rfl) ?_ ?_
      · intro s Γ q _ hL hh hE vs1 hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        have e1 : v1 = .val (.word CAT) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hcatL)))
        have e2 : v2 = .val (.word CL) := Option.some.inj (h2.symm.trans (ev_lw (hL _ hclL)))
        have e3 := Spec.Mpt.Dec.ev_ld (hL _ hncL) 48 v3 h3
        subst e1 e2 e3
        have hext : ∃ o ∈ Γ, o.base = NC ∧ o.ty = Types.tNEXT := by
          rcases ndT_leafext hE.1.1.2 hE.1.2.2 hE.1.2.1 with ⟨h1', -⟩ | ⟨-, h⟩
          · exact absurd (h1'.symm.trans hK2) (by decide)
          · exact h
        exact ⟨argsOK_ext (ext_facts hh.1 hext).2, fun x => argCells_fitsany (by simp [Node.neSig]),
          fun _ => ⟨CAT, CL, _, rfl, hE.2⟩⟩
      · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
        refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
        obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
        exact rv_rt (rt_of_obj (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)
    · have hne : K0 ≠ 2 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE, hne⟩
  · refine gp_tail ha node_new_leafT_guestR (ctor_sp hX ctor_leaf_sp) (by simp [Node.nlSig])
      (fun _ => rfl) ?_ ?_
    · intro s Γ q _ hL hh hE vs1 hvs
      obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
      obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
      rw [evs_nil] at hr4
      cases hr4
      have e1 : v1 = .val (.word CAT) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hcatL)))
      have e2 : v2 = .val (.word CL) := Option.some.inj (h2.symm.trans (ev_lw (hL _ hclL)))
      have e3 := Spec.Mpt.Dec.ev_ld (hL _ hncL) 48 v3 h3
      have e4 := Spec.Mpt.Dec.ev_ld (hL _ hncL) 56 v4 h4
      subst e1 e2 e3 e4
      have hleaf : ∃ o ∈ Γ, o.base = NC ∧ o.ty = Types.tNLEAF := by
        rcases ndT_leafext hE.1.1.1.2 hE.1.1.2.2 hE.1.1.2.1 with ⟨-, h⟩ | ⟨h2', -⟩
        · exact h
        · exact absurd h2' hE.2
      obtain ⟨o, ho, hob, hot⟩ := hleaf
      have hvo := Hooks.vIn_of_leaf hh.1 ho hot
      rw [hob] at hvo
      exact ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs).1,
        fun x hx => argCells_any (by simp [Node.nlSig]) hx,
        fun _ => ⟨CAT, CL, _, _, rfl, hE.1.2, hvo⟩⟩
    · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
      refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
      obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
      exact rv_rt (rt_of_obj (t := Types.tNLEAF) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)

/-- **`_delete_ext_finish`'s summary** at `guestHooksR`. -/
theorem sumSpecA_delete_ext_finish_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_delete_ext_finish") dxSig
      (fun vs s Γ => DxPre vs s Γ) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧ Rt Γ' w) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ∃ w, v = .val (.word w) ∧ Rt Γ' w)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dx hl
  obtain ⟨N, SEG, SL, NC, rfl, hn, hseg, hnc⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dxSig [] _ s0 Γ0 p0 with hadef
  let kv0 : List (MlS × BitVec 64) := [(nm "node", N), (nm "seg", SEG), (nm "sl", SL), (nm "nc", NC)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => DxE0 N SEG SL NC Γ))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w, v = .val (.word w) ∧ Rt Γ' w)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hn, hseg, hnc⟩
  · intro r t _ _ h
    exact gp_final h
  exact dxFin_G ha

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dxFin_G
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_delete_ext_finish_G
