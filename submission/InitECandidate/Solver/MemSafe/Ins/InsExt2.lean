import InitECandidate.Solver.MemSafe.Ins.InsCpl

set_option autoImplicit false

/-!
# Ladder leaf: the extension node splits (`pl != sl`): `iExtSplit`
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

theorem extra_sub {kvx kv : List (MlS × BitVec 64)} {m : LocalsH} (h : LKV kvx m)
    (hs : ∀ p ∈ kv, p ∈ kvx) : LKV kv m := fun p hp => h p (hs p hp)

/-- After `r` is set (to a `Rt` word), the locals are a `Mid` state. -/
theorem mid_of_r {a : Act σ} {K KL VP VL Nd Lv Res Sl R : BitVec 64} {t : State σ}
    (hL : LKV (kvT K KL VP VL Nd Lv Res Sl 0 R 0 0 0) t.locals) {Γ : Gam} {q : Ptrs}
    (he : Ext a.Γ0 Γ) (hh : Heap a Γ q t) (hsc : ScrOld a.Γ0 Γ)
    (hE : MidF K KL Nd Lv Res Sl R 0 0 0 Γ) : Mid a K KL VP VL t :=
  ⟨Nd, Lv, Res, Sl, 0, R, 0, 0, 0, hL, Γ, q, he, hh, hsc, hE⟩

/-- **`iExtSplit`**: `var br = _split_extension(node, key + level, klen - level, vptr, vlen, pl);
if 0 < pl { r = node_new_ext(seg, pl, br) } else { r = br }`. -/
theorem iExtSplit_G {sg : Sig}
    (hsg : sg.grows = true) {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 W W2 PL : BitVec 64} (hK0 : K0 = 2)
    (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL) (hPLle : PL.toNat ≤ W2.toNat) (hPLkl : PL.toNat ≤ (KL - Lv).toNat)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "pl", PL) :: (nm "sl", W2) :: (nm "seg", W) :: (nm "k", K0) ::
          kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ M => EK K KL Nd Lv Res Sl K0 Γ ∧ W2 = rd M (Nd + 40) ∧ NIn Γ W W2))
      iExtSplit
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv := (nm "pl", PL) :: (nm "sl", W2) :: (nm "seg", W) :: (nm "k", K0) ::
    kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkv
  have mem : ∀ {p : MlS × BitVec 64}, p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 → p ∈ kv :=
    fun hp => by simp only [hkv, List.mem_cons]; exact Or.inr (Or.inr (Or.inr (Or.inr hp)))
  have hnode : (nm "node", Nd) ∈ kv := mem (by simp [kvT, kvJ])
  have hkey : (nm "key", K) ∈ kv := mem (by simp [kvT, kvJ])
  have hklen : (nm "klen", KL) ∈ kv := mem (by simp [kvT, kvJ])
  have hlevel : (nm "level", Lv) ∈ kv := mem (by simp [kvT, kvJ])
  have hvptr : (nm "vptr", VP) ∈ kv := mem (by simp [kvT, kvJ])
  have hvlen : (nm "vlen", VL) ∈ kv := mem (by simp [kvT, kvJ])
  have hplm : (nm "pl", PL) ∈ kv := by simp [hkv]
  have hsegm : (nm "seg", W) ∈ kv := by simp [hkv]
  have hbrfresh : ∀ p ∈ kv, p.1 ≠ nm "br" := by
    intro p hp
    simp only [hkv, kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      (dsimp only; decide)
  unfold iExtSplit
  refine gp_decCallJ ha (sumSpecA_split_extension_G) (funSpec_true _) (by simp [sxSig])
    (fun _ => hsg)
    (L1 := fun v m => LKV kv m ∧ m.lookup (nm "br") = some v ∧ ∃ B : BitVec 64, v = .val (.word B))
    (E1 := fun v Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ NIn Γ W W2) ∧
      ∀ B : BitVec 64, v = .val (.word B) → ∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH)
    (Inv := Mid a K KL VP VL)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨hQ.1, fun v hv _ => ?_⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hbrfresh v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun t o h => mid_res ha.hH (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))) o h)
  · -- the arguments
    have hev : evs s [lv (nm "node"), kA, kB, lv (nm "vptr"), lv (nm "vlen"), lv (nm "pl")] =
        some [.val (.word Nd), .val (.word (K + Lv)), .val (.word (KL - Lv)), .val (.word VP),
          .val (.word VL), .val (.word PL)] :=
      evs_cons (ev_lw (hL _ hnode)) (evs_cons (ev_add2 (ev_lw (hL _ hkey)) (ev_lw (hL _ hlevel)))
        (evs_cons (ev_sub2 (ev_lw (hL _ hklen)) (ev_lw (hL _ hlevel)))
          (evs_cons (ev_lw (hL _ hvptr)) (evs_cons (ev_lw (hL _ hvlen))
            (evs_cons (ev_lw (hL _ hplm)) evs_nil)))))
    rw [hev] at hvs
    cases hvs
    refine ⟨(anyArgsG (a := a) (sg' := sxSig) (Γ := Γ) (q := q) (by simp [sxSig]) rfl
      (by rw [hev])).1, fun x => argCells_any (by simp [sxSig]), fun callee => ?_⟩
    exact ⟨Nd, K + Lv, KL - Lv, VP, VL, PL, rfl, ndT_next hE.1.2 hK0,
      nIn_sub hE.1.1.1.2.2.2.2 hE.1.1.1.2.2.2.1, hPLkl, by rw [hE.2.1] at hPLle; exact hPLle,
      Hooks.vInR_ext hh.2.2.2.1 hV0⟩
  · -- the result
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans co.heap0.2.1
    refine ⟨⟨eK_ext co.ext hE.1, nIn_ext co.ext hE.2.2⟩, fun B hB => ?_⟩
    obtain ⟨o, ho, hvo, hot⟩ := hQ.2 v hv q q' hq0 co.heap.2.1
    subst hB
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hvo
    exact ⟨o, ho, hvo.symm, hot⟩
  intro v
  by_cases hw : ∃ B : BitVec 64, v = .val (.word B)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨B, rfl⟩ := hw
  let kvB : List (MlS × BitVec 64) := (nm "br", B) :: kv
  let EB : Gam → Prop := fun Γ => EK K KL Nd Lv Res Sl K0 Γ ∧
    (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧ NIn Γ W W2
  have hbrB : (nm "br", B) ∈ kvB := by simp [kvB]
  have memB : ∀ {p : MlS × BitVec 64}, p ∈ kv → p ∈ kvB := fun hp => List.mem_cons_of_mem _ hp
  have hT0 : ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0, p ∈ kvB := fun p hp => memB (mem hp)
  refine hoareG_pre (P := GI a (LKV kvB) (fun Γ _ _ => EB Γ)) ?_
    (fun s _ ⟨⟨hL, hlb, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨?_, Γ, q, he, hh, hsc, hE.1.1, hE.2 B rfl, hE.1.2⟩)
  swap
  · intro p hp
    simp only [kvB, List.mem_cons] at hp
    rcases hp with rfl | hp
    · exact hlb
    · exact hL p hp
  have hrm : (nm "r", (0 : BitVec 64)) ∈ kvB := hT0 _ (by simp [kvT])
  have hplB : (nm "pl", PL) ∈ kvB := memB hplm
  have hsegB : (nm "seg", W) ∈ kvB := memB hsegm
  refine ite_valL hplB (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
  · -- `r = node_new_ext(seg, pl, br)`
    refine gpj_mono (gp_callAV ha node_new_extT_guestR (ctor_sp hX ctor_ext_sp) (by simp [Node.neSig])
      (fun _ => hsg)
      (L1 := fun v m => ∃ R : BitVec 64, v = .val (.word R) ∧
        LKV (kvT K KL VP VL Nd Lv Res Sl 0 R 0 0 0) m)
      (E1 := fun v Γ _ _ => ∃ R : BitVec 64, v = .val (.word R) ∧
        MidF K KL Nd Lv Res Sl R 0 0 0 Γ)
      (fun s Γ q _ hL hh hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
        fun v hv => by
          obtain ⟨o, ho, hvo, hot⟩ := hQ v hv
          exact ⟨o.base, hvo, midF_setR (midF_ext co.ext hE.1.1)
            (rt_of_ty (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)⟩⟩)
      (fun s st v hL hvalid => by
        obtain ⟨V, rfl⟩ := valid_one (hL _ hrm) hvalid
        exact ⟨V, rfl, lkvT_r (extra_sub hL hT0)⟩)) (fun t h => mid_of_ret h)
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e3 : v3 = .val (.word B) := Option.some.inj (h3.symm.trans (ev_lw (hL _ hbrB)))
    have e1 : v1 = .val (.word W) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hsegB)))
    have e2 : v2 = .val (.word PL) := Option.some.inj (h2.symm.trans (ev_lw (hL _ hplB)))
    subst e3 e1 e2
    obtain ⟨o, ho, hb, hty⟩ := hE.2.1
    exact ⟨argsOK_ext' (fits_of_ty (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, hty⟩),
      fun x => argCells_fitsany (by simp [Node.neSig]),
      fun _ => ⟨W, PL, B, rfl, nIn_prefix hE.2.2 hPLle⟩⟩
  · -- `r = br`
    refine gpj_of_gp (L := LKV (kvT K KL VP VL Nd Lv Res Sl 0 B 0 0 0))
      (E := fun Γ _ _ => EB Γ) ?_ (fun t ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ?_)
    · refine gp_post (L := LKV (kvT K KL VP VL Nd Lv Res Sl 0 B 0 0 0)) (E := fun Γ _ _ => EB Γ) ?_
        (fun m h => h) (fun Γ q M h => h)
      refine gp_assign ha.hH (fun s hs hL v hv => ?_)
      have : v = .val (.word B) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hbrB)))
      subst this
      exact lkvT_r (extra_sub hL hT0)
    · obtain ⟨o, ho, hb, hty⟩ := hE.2.1
      exact mid_of_r hL he hh hsc (midF_setR hE.1.1
        (rt_of_ty (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, hty⟩))

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iExtSplit_G
