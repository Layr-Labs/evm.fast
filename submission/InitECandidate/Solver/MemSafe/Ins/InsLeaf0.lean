import InitECandidate.Solver.MemSafe.Ins.InsLadder

set_option autoImplicit false

/-!
# Ladder leaf: `r = node_new_leaf(key + level, klen - level, vptr, vlen)` (the empty-subtree case)
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

theorem midF_setR {K KL Nd Lv Res Sl R NN NS NL R' : BitVec 64} {Γ : Gam}
    (h : MidF K KL Nd Lv Res Sl R NN NS NL Γ) (hR : Rt Γ R') :
    MidF K KL Nd Lv Res Sl R' NN NS NL Γ := ⟨h.1, hR, h.2.2⟩

theorem rt_of_ty {Γ : Gam} {w : BitVec 64} {t : Nat} (ht : t ∈ Node.nodeTys)
    (h : ∃ o ∈ Γ, o.base = w ∧ o.ty = t) : Rt Γ w := by
  obtain ⟨o, ho, hb, hty⟩ := h
  exact Or.inr ⟨o, ho, hb, hty ▸ ht⟩

/-- **Leaf `r = node_new_leaf(key + level, klen - level, vptr, vlen)`.** -/
theorem lf0_G {sg : Sig} (hsg : sg.grows = true) {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl : BitVec 64} (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => MidF K KL Nd Lv Res Sl 0 0 0 0 Γ))
      (.call (some (some (.local, nm "r"), none)) (nm "node_new_leaf")
        [kA, kB, lv (nm "vptr"), lv (nm "vlen")])
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hrm : (nm "r", (0 : BitVec 64)) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT]
  refine gpj_mono (gp_callAV ha node_new_leafT_guestR (ctor_sp hX ctor_leaf_sp) (by simp [Node.nlSig])
    (fun _ => hsg)
    (L1 := fun v m => ∃ W : BitVec 64, v = .val (.word W) ∧
      LKV (kvT K KL VP VL Nd Lv Res Sl 0 W 0 0 0) m)
    (E1 := fun v Γ _ _ => ∃ W : BitVec 64, v = .val (.word W) ∧
      MidF K KL Nd Lv Res Sl W 0 0 0 Γ)
    (fun s Γ q _ hL hh hE vs1 hvs => by
      have hm : ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0, s.locals.lookup p.1 = some (.val (.word p.2)) :=
        hL
      have hk : (nm "key", K) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
      have hl : (nm "klen", KL) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
      have hlv : (nm "level", Lv) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
      have hvp : (nm "vptr", VP) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
      have hvl : (nm "vlen", VL) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
      have hvs' : evs s [kA, kB, lv (nm "vptr"), lv (nm "vlen")] =
          some [.val (.word (K + Lv)), .val (.word (KL - Lv)), .val (.word VP), .val (.word VL)] :=
        evs_cons (ev_add2 (ev_lw (hm _ hk)) (ev_lw (hm _ hlv))) (evs_cons (ev_sub2 (ev_lw (hm _ hl))
          (ev_lw (hm _ hlv))) (evs_cons (ev_lw (hm _ hvp)) (evs_cons (ev_lw (hm _ hvl)) evs_nil)))
      rw [hvs'] at hvs
      cases hvs
      exact ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs').1,
        fun x hx => argCells_any (by simp [Node.nlSig]) hx,
        fun _ => ⟨K + Lv, KL - Lv, VP, VL, rfl, nIn_sub hE.1.2.2.2.2 hE.1.2.2.2.1,
          Hooks.vInR_ext hh.2.2.2.1 hV0⟩⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_sp_co haC co hLc,
      fun v hv => by
        obtain ⟨o, ho, hvo, hot⟩ := hQ v hv
        exact ⟨o.base, hvo, midF_setR (midF_ext co.ext hE)
          (rt_of_ty (t := Types.tNLEAF) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)⟩⟩)
    (fun s st v hL hvalid => by
      obtain ⟨V, rfl⟩ := valid_one (hL _ hrm) hvalid
      exact ⟨V, rfl, lkvT_r hL⟩)) ?_
  rintro t ⟨v, ⟨W, rfl, hlk⟩, Γ, q, he, hh, hsc, W', hW', hE⟩
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
  subst hW'
  exact ⟨Nd, Lv, Res, Sl, 0, W, 0, 0, 0, hlk, Γ, q, he, hh, hsc, hE⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.lf0_G
