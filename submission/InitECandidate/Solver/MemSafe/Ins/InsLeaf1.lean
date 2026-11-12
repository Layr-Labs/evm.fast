import InitECandidate.Solver.MemSafe.Ins.InsKit

set_option autoImplicit false

/-!
# Ladder leaf: `r = _insert_into_leaf(node, key + level, klen - level, vptr, vlen)`
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

/-- The tag-`k` facts: the state of the ladder after `var k = lds node + 0`. -/
def EK (K KL Nd Lv Res Sl K0 : BitVec 64) (Γ : Gam) : Prop :=
  MidF K KL Nd Lv Res Sl 0 0 0 0 Γ ∧ NdT Γ Nd K0

theorem eK_ext {K KL Nd Lv Res Sl K0 : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ')
    (h : EK K KL Nd Lv Res Sl K0 Γ) : EK K KL Nd Lv Res Sl K0 Γ' :=
  ⟨midF_ext he h.1, ndT_ext he h.2⟩

theorem kvK_sub {K KL VP VL Nd Lv Res Sl G R NN NS NL K0 : BitVec 64} {m : LocalsH}
    (h : LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) m) :
    LKV (kvT K KL VP VL Nd Lv Res Sl G R NN NS NL) m := fun p hp => h p (List.mem_cons_of_mem _ hp)

theorem mid_of_ret {a : Act σ} {K KL VP VL Nd Lv Res Sl : BitVec 64}
    {t : State σ}
    (h : ∃ v : ValueHOL 64, GI a (fun m => ∃ W : BitVec 64, v = .val (.word W) ∧
        LKV (kvT K KL VP VL Nd Lv Res Sl 0 W 0 0 0) m)
      (fun Γ _ _ => ∃ W : BitVec 64, v = .val (.word W) ∧ MidF K KL Nd Lv Res Sl W 0 0 0 Γ) t) :
    Mid a K KL VP VL t := by
  obtain ⟨v, ⟨W, rfl, hlk⟩, Γ, q, he, hh, hsc, W', hW', hE⟩ := h
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
  subst hW'
  exact ⟨Nd, Lv, Res, Sl, 0, W, 0, 0, 0, hlk, Γ, q, he, hh, hsc, hE⟩

/-- **Leaf `r = _insert_into_leaf(node, key + level, klen - level, vptr, vlen)`** (tag 1). -/
theorem lfIns_G {sg : Sig} (hsg : sg.grows = true)
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 : BitVec 64} (hK0 : K0 = 1) (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      (.call (some (some (.local, nm "r"), none)) (nm "_insert_into_leaf")
        [lv (nm "node"), kA, kB, lv (nm "vptr"), lv (nm "vlen")])
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv := (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkv
  have mem : ∀ {p : MlS × BitVec 64}, p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 → p ∈ kv :=
    fun hp => List.mem_cons_of_mem _ hp
  have hnode : (nm "node", Nd) ∈ kv := mem (by simp [kvT, kvJ])
  have hkey : (nm "key", K) ∈ kv := mem (by simp [kvT, kvJ])
  have hklen : (nm "klen", KL) ∈ kv := mem (by simp [kvT, kvJ])
  have hlevel : (nm "level", Lv) ∈ kv := mem (by simp [kvT, kvJ])
  have hvptr : (nm "vptr", VP) ∈ kv := mem (by simp [kvT, kvJ])
  have hvlen : (nm "vlen", VL) ∈ kv := mem (by simp [kvT, kvJ])
  have hrm : (nm "r", (0 : BitVec 64)) ∈ kv := mem (by simp [kvT])
  refine gpj_mono (gp_callAVC ha (cs := leafCaps) capSub_leaf_ins (sumSpecA_insert_into_leaf_G) (funSpec_true _)
    (by simp [ilSig]) (fun _ => hsg)
    (L1 := fun v m => ∃ W : BitVec 64, v = .val (.word W) ∧
      LKV (kvT K KL VP VL Nd Lv Res Sl 0 W 0 0 0) m)
    (E1 := fun v Γ _ _ => ∃ W : BitVec 64, v = .val (.word W) ∧ MidF K KL Nd Lv Res Sl W 0 0 0 Γ)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ hh hext hh' hmo hnf => ⟨hQ.1, fun v hv => ?_⟩)
    (fun s st v hL hvalid => by
      obtain ⟨V, rfl⟩ := valid_one (hL _ hrm) hvalid
      exact ⟨V, rfl, lkvT_r (kvK_sub (fun p hp => hL p hp))⟩)) (fun t h => mid_of_ret h)
  · have hev : evs s [lv (nm "node"), kA, kB, lv (nm "vptr"), lv (nm "vlen")] =
        some [.val (.word Nd), .val (.word (K + Lv)), .val (.word (KL - Lv)), .val (.word VP),
          .val (.word VL)] := by
      refine evs_cons (ev_lw (hL _ hnode)) (evs_cons (ev_add2 (ev_lw (hL _ hkey)) (ev_lw (hL _ hlevel)))
        (evs_cons (ev_sub2 (ev_lw (hL _ hklen)) (ev_lw (hL _ hlevel)))
          (evs_cons (ev_lw (hL _ hvptr)) (evs_cons (ev_lw (hL _ hvlen)) evs_nil))))
    rw [hev] at hvs
    cases hvs
    refine ⟨(anyArgsG (a := a) (sg' := ilSig) (Γ := Γ) (q := q) (by simp [ilSig]) rfl
      (by rw [hev])).1, fun x => argCells_any (by simp [ilSig]), fun callee => ?_⟩
    obtain ⟨o, ho, hb, hty, -⟩ : ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNLEAF ∧ K0 = 1 := by
      rcases hE.2 with h | h | h | h
      · obtain ⟨o, ho, hb, ht, h0⟩ := h; rw [hK0] at h0; cases h0
      · exact h
      · obtain ⟨o, ho, hb, ht, h0⟩ := h; rw [hK0] at h0; cases h0
      · obtain ⟨o, ho, hb, ht, h0⟩ := h; rw [hK0] at h0; cases h0
    exact ⟨Nd, K + Lv, KL - Lv, VP, VL, rfl, ⟨o, ho, hb, hty⟩,
      nIn_sub hE.1.1.2.2.2.2 hE.1.1.2.2.2.1, Hooks.vInR_ext hh.2.2.2.1 hV0⟩
  · have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh.2.1
    obtain ⟨o, ho, hvo, hot⟩ := hQ.2 v hv q q' hq0 hh'.2.1
    exact ⟨o.base, hvo, midF_setR (midF_ext hext hE.1) (rt_of_ty hot ⟨o, ho, rfl, rfl⟩)⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.lfIns_G
