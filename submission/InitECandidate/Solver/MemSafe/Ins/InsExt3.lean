import InitECandidate.Solver.MemSafe.Ins.InsExt2

set_option autoImplicit false

/-!
# Ladder leaf: the extension node (tag 2): `iExt`
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

theorem iExt_G {sg : Sig}
    (hsg : sg.grows = true) {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 : BitVec 64} (hK0 : K0 = 2) (hLv : Lv.toNat ≤ KL.toNat)
    (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      iExt
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kvK := (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkvK
  have mem : ∀ {p : MlS × BitVec 64}, p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 → p ∈ kvK :=
    fun hp => List.mem_cons_of_mem _ hp
  have hnode : (nm "node", Nd) ∈ kvK := mem (by simp [kvT, kvJ])
  have hkey : (nm "key", K) ∈ kvK := mem (by simp [kvT, kvJ])
  have hklen : (nm "klen", KL) ∈ kvK := mem (by simp [kvT, kvJ])
  have hlevel : (nm "level", Lv) ∈ kvK := mem (by simp [kvT, kvJ])
  have hfrK : ∀ x : MlS, (x = nm "seg" ∨ x = nm "sl" ∨ x = nm "pl") → ∀ p ∈ kvK, p.1 ≠ x := by
    intro x hx p hp
    simp only [hkvK, kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hp
    rcases hx with rfl | rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      (dsimp only; decide)
  unfold iExt
  -- `var seg = lds (node + 32)`
  refine gp_decVJ ha.hH (Inv := Mid a K KL VP VL)
    (L1 := fun v m => LKV kvK m ∧ m.lookup (nm "seg") = some v ∧ ∃ W : BitVec 64, v = .val (.word W))
    (E1 := fun v Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧ ∀ W : BitVec 64, v = .val (.word W) →
      NIn Γ W (rd M (Nd + BitVec.ofNat 64 40)) ∧ W = rd M (Nd + BitVec.ofNat 64 32))
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun W hW => ?_⟩) ?_
    (fun t o h => mid_res ha.hH (Or.inr (Or.inl rfl)) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    exact ⟨lkv_set (s := s) hL (hfrK _ (Or.inl rfl)) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnode) 32 v hv
    rw [hv'] at hW
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
    subst hW
    exact ⟨(ext_facts hh'.1 (ndT_next hE.2 hK0)).1, rfl⟩
  intro v
  by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨W, rfl⟩ := hw
  let kv1 : List (MlS × BitVec 64) := (nm "seg", W) :: kvK
  have hfr1 : ∀ x : MlS, (x = nm "sl" ∨ x = nm "pl") → ∀ p ∈ kv1, p.1 ≠ x := by
    intro x hx p hp
    simp only [kv1, List.mem_cons] at hp
    rcases hp with rfl | hp
    · rcases hx with rfl | rfl <;> (dsimp only; decide)
    · exact hfrK x (by rcases hx with rfl | rfl <;> simp) p hp
  refine hoareG_pre (P := GI a (LKV kv1) (fun Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧
      NIn Γ W (rd M (Nd + BitVec.ofNat 64 40)) ∧ W = rd M (Nd + BitVec.ofNat 64 32))) ?_
    (fun s _ ⟨⟨hL, hseg, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hseg, Γ, q, he, hh, hsc,
      hE.1, hE.2 W rfl⟩)
  -- `var sl = lds (node + 40)`
  refine gp_decVJ ha.hH (Inv := Mid a K KL VP VL)
    (L1 := fun v m => LKV kv1 m ∧ m.lookup (nm "sl") = some v ∧ ∃ W2 : BitVec 64, v = .val (.word W2))
    (E1 := fun v Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧ ∀ W2 : BitVec 64, v = .val (.word W2) →
      NIn Γ W W2 ∧ W2 = rd M (Nd + BitVec.ofNat 64 40))
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE.1, fun W2 hW2 => ?_⟩) ?_
    (fun t o h => mid_res ha.hH (Or.inr (Or.inr (Or.inl rfl))) o h)
  · have hnode1 : (nm "node", Nd) ∈ kv1 := List.mem_cons_of_mem _ hnode
    have := Spec.Mpt.Dec.ev_ld (hL _ hnode1) 40 v hv
    exact ⟨lkv_set (s := s) hL (hfr1 _ (Or.inl rfl)) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hnode1 : (nm "node", Nd) ∈ kv1 := List.mem_cons_of_mem _ hnode
    have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnode1) 40 v hv
    rw [hv'] at hW2
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW2
    subst hW2
    exact ⟨hE.2.1, rfl⟩
  intro v2
  by_cases hw2 : ∃ W2 : BitVec 64, v2 = .val (.word W2)
  swap
  · exact hoareG_false fun s _ h => hw2 h.1.2.2
  obtain ⟨W2, rfl⟩ := hw2
  let kv2 : List (MlS × BitVec 64) := (nm "sl", W2) :: kv1
  have hfr2 : ∀ p ∈ kv2, p.1 ≠ nm "pl" := by
    intro p hp
    simp only [kv2, List.mem_cons] at hp
    rcases hp with rfl | hp
    · dsimp only; decide
    · exact hfr1 _ (Or.inr rfl) p hp
  refine hoareG_pre (P := GI a (LKV kv2) (fun Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧
      NIn Γ W W2 ∧ W2 = rd M (Nd + BitVec.ofNat 64 40))) ?_
    (fun s _ ⟨⟨hL, hsl, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hsl, Γ, q, he, hh, hsc,
      hE.1, (hE.2 W2 rfl)⟩)
  have hsegm : (nm "seg", W) ∈ kv2 := by simp [kv2, kv1]
  have hslm : (nm "sl", W2) ∈ kv2 := by simp [kv2]
  have hkey2 : (nm "key", K) ∈ kv2 := by simp [kv2, kv1, hkvK, kvT, kvJ]
  have hklen2 : (nm "klen", KL) ∈ kv2 := by simp [kv2, kv1, hkvK, kvT, kvJ]
  have hlevel2 : (nm "level", Lv) ∈ kv2 := by simp [kv2, kv1, hkvK, kvT, kvJ]
  -- `var pl = common_prefix_length(seg, sl, key + level, klen - level)`
  refine gp_decCallJ ha (sumA_of_csumm cpl_R) ((funSpec_of_funRet (Spec.Mpt.funRet_cpl hX)).and (cpl_mw hX))
    (by simp) (by simp)
    (L1 := fun v m => LKV kv2 m ∧ m.lookup (nm "pl") = some v ∧ ∃ PL : BitVec 64, v = .val (.word PL))
    (E1 := fun v Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧ NIn Γ W W2 ∧
      W2 = rd M (Nd + BitVec.ofNat 64 40) ∧ ∀ PL : BitVec 64, v = .val (.word PL) →
        PL.toNat ≤ W2.toNat ∧ PL.toNat ≤ (KL - Lv).toNat)
    (Inv := Mid a K KL VP VL)
    (fun s Γ q _ hL hh hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
      fun v hv _ => ?_⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfr2 v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun t o h => mid_res ha.hH (Or.inr (Or.inr (Or.inr (Or.inl rfl)))) o h)
  · have hev : evs s [lv (nm "seg"), lv (nm "sl"), kA, kB] =
        some [.val (.word W), .val (.word W2), .val (.word (K + Lv)), .val (.word (KL - Lv))] :=
      evs_cons (ev_lw (hL _ hsegm)) (evs_cons (ev_lw (hL _ hslm))
        (evs_cons (ev_add2 (ev_lw (hL _ hkey2)) (ev_lw (hL _ hlevel2)))
          (evs_cons (ev_sub2 (ev_lw (hL _ hklen2)) (ev_lw (hL _ hlevel2))) evs_nil)))
    obtain ⟨hret, hmem⟩ := hLc
    rw [hev] at hvs
    cases hvs
    obtain ⟨A, C, al, bl, pl, hvs', hv', h1, h2⟩ := hret v hv
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
    obtain ⟨-, hal, -, hbl, -⟩ := hvs'
    subst hal hbl
    have hv'' : v = .val (.word pl) := hv'
    refine ⟨eK_ext co.ext hE.1, nIn_ext co.ext hE.2.1, ?_, fun PL hPL => ?_⟩
    · rw [hmem]; exact hE.2.2
    · rw [hv''] at hPL
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hPL
      subst hPL
      exact ⟨h1, h2⟩
  intro v3
  by_cases hw3 : ∃ PL : BitVec 64, v3 = .val (.word PL)
  swap
  · exact hoareG_false fun s _ h => hw3 h.1.2.2
  obtain ⟨PL, rfl⟩ := hw3
  let kv3 : List (MlS × BitVec 64) := (nm "pl", PL) :: kv2
  have hplm : (nm "pl", PL) ∈ kv3 := by simp [kv3]
  have hslm3 : (nm "sl", W2) ∈ kv3 := List.mem_cons_of_mem _ hslm
  refine hoareG_pre (P := GI a (LKV kv3) (fun Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧ NIn Γ W W2 ∧
      W2 = rd M (Nd + BitVec.ofNat 64 40) ∧ PL.toNat ≤ W2.toNat ∧ PL.toNat ≤ (KL - Lv).toNat)) ?_
    (fun s _ ⟨⟨hL, hpl, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hpl, Γ, q, he, hh, hsc,
      hE.1, hE.2.1, hE.2.2.1, (hE.2.2.2 PL rfl).1, (hE.2.2.2 PL rfl).2⟩)
  by_cases hb1 : PL.toNat ≤ W2.toNat ∧ PL.toNat ≤ (KL - Lv).toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hb1 ⟨hE.2.2.2.1, hE.2.2.2.2⟩
  refine ite_val2 hplm hslm3 (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
  · -- `pl == sl`
    have hKLv : (KL - Lv).toNat = KL.toNat - Lv.toNat := by
      rw [BitVec.toNat_sub_of_le (by simpa [BitVec.le_def] using hLv)]
    have hPLb : PL.toNat + Lv.toNat ≤ KL.toNat := by have := hb1.2; omega
    have hsub : ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0, p ∈ kv3 := fun p hp =>
      List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _
        (List.mem_cons_of_mem _ hp)))
    refine hoareG_pre (iExtGo_G (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv)
      (Res := Res) (Sl := Sl) (K0 := K0) (PL := PL) ha hK0 hPLb) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨⟨extra_sub hL hsub, hL (nm "pl", PL) hplm⟩, Γ, q, he, hh, hsc, hE.1⟩
  · -- `pl != sl`
    refine hoareG_pre (iExtSplit_G hsg ha (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv)
      (Res := Res) (Sl := Sl) (K0 := K0) (W := W) (W2 := W2) (PL := PL) hK0
      hV0 hb1.1 hb1.2) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1, hE.2.2.1, hE.2.1⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iExt_G
