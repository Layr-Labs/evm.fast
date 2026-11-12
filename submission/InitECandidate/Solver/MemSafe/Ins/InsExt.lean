import InitECandidate.Solver.MemSafe.Ins.InsLeaf1

set_option autoImplicit false

/-!
# Ladder leaf: the extension node continues (`pl == sl`): `iExtGo`
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

/-- Slot 6 of an `NEXT` object is a `nodeU` cell. -/
theorem next_slot6 {o : Obj} (ht : o.ty = Types.tNEXT)
    (hsz : (Types.guestC.ty o.ty).minSz ≤ o.size) :
    o.HasSlot 6 ∧ (Types.guestC.ty o.ty).slot 6 = Types.nodeU := by
  rw [ht, Types.ty_NEXT] at hsz ⊢
  simp only [Types.nextTy] at hsz
  refine ⟨by unfold Obj.HasSlot; omega, ?_⟩
  simp [Types.nextTy, TyD.slot]

theorem ndT_next {Γ : Gam} {Nd K0 : BitVec 64} (h : NdT Γ Nd K0) (hK : K0 = 2) :
    ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNEXT := by
  rcases h with ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩
  all_goals first | exact ⟨o, ho, hb, ht⟩ | (rw [hK] at h0; cases h0)

/-- The facts after the loads of the extension case: `pl == sl`, so the walk continues. -/
def EXg (K KL Nd Lv Res Sl K0 : BitVec 64) (Γ : Gam) : Prop :=
  EK K KL Nd Lv Res Sl K0 Γ

/-- **`iExtGo`**: `r = node; next_node = lds node+48; next_slot = node+48; next_level = level + pl;
go = 1`. -/
theorem iExtGo_G {sg : Sig} {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 PL : BitVec 64} (hK0 : K0 = 2)
    (hPL : PL.toNat + Lv.toNat ≤ KL.toNat)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0) m ∧
          m.lookup (nm "pl") = some (.val (.word PL)))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      iExtGo
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hnodeM : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
  have hlevM : (nm "level", Lv) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
  have hnodeR : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd 0 0 0 := by simp [kvT, kvJ]
  unfold iExtGo
  -- `r = node`
  refine gp_seqJ (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd 0 0 0) m ∧
      m.lookup (nm "pl") = some (.val (.word PL)))
    (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL.1 _ hnodeM)))
    subst this
    exact ⟨lkvT_r hL.1, by rw [lk_keep (by decide) hL.2]⟩
  -- `next_node = lds node+48`
  refine gpj_seq (Inv1 := fun t => ∃ W3 : BitVec 64, GI a (fun m =>
      LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0) m ∧ m.lookup (nm "pl") = some (.val (.word PL)))
    (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ Fits Γ Types.nodeU W3) t) ?_ ?_
  · refine gpj_mono (gp_assignAV (L1 := fun (v : ValueHOL 64) m => ∃ W3 : BitVec 64, v = .val (.word W3) ∧
        (LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0) m ∧ m.lookup (nm "pl") = some (.val (.word PL))))
      (E1 := fun (v : ValueHOL 64) Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧
        ∃ W3 : BitVec 64, v = .val (.word W3) ∧ Fits Γ Types.nodeU W3)
      ha.hH (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => ?_)) ?_
    · have hv' := Spec.Mpt.Dec.ev_ld (hL.1 (nm "node", Nd) hnodeR) 48 v hv
      subst hv'
      exact ⟨_, rfl, lkvT_nn hL.1, by rw [lk_keep (by decide) hL.2]⟩
    · have hv' := Spec.Mpt.Dec.ev_ld (hL.1 (nm "node", Nd) hnodeR) 48 v hv
      exact ⟨hE, _, hv', (ext_facts hh.1 (ndT_next hE.2 hK0)).2⟩
    · rintro t ⟨v, ⟨W3, rfl, hlk⟩, Γ, q, he, hh, hsc, hE, W3', hW', hf⟩
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
      subst hW'
      exact ⟨W3, hlk, Γ, q, he, hh, hsc, hE, hf⟩
  · refine hoareG_ex fun W3 => ?_
    have hnodeN : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0 := by simp [kvT, kvJ]
    have hlevN : (nm "level", Lv) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0 := by simp [kvT, kvJ]
    refine gpj_of_gp (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 1 Nd W3 (Nd + BitVec.ofNat 64 48)
        (Lv + PL)) m ∧ m.lookup (nm "pl") = some (.val (.word PL)))
      (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ Fits Γ Types.nodeU W3) ?_ ?_
    · refine gp_seq (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 (Nd + BitVec.ofNat 64 48) 0) m ∧
          m.lookup (nm "pl") = some (.val (.word PL)))
        (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ Fits Γ Types.nodeU W3) ?_ ?_
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word (Nd + BitVec.ofNat 64 48)) :=
          Option.some.inj (hv.symm.trans (ev_add_cw (hL.1 (nm "node", Nd) hnodeN) 48))
        subst this
        exact ⟨lkvT_ns hL.1, by rw [lk_keep (by decide) hL.2]⟩
      refine gp_seq (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 (Nd + BitVec.ofNat 64 48)
          (Lv + PL)) m ∧ m.lookup (nm "pl") = some (.val (.word PL)))
        (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ Fits Γ Types.nodeU W3) ?_ ?_
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word (Lv + PL)) :=
          Option.some.inj (hv.symm.trans (ev_add2 (ev_lw (hL.1 (nm "level", Lv) (by simp [kvT, kvJ])))
            (ev_lw hL.2)))
        subst this
        exact ⟨lkvT_nl hL.1, by rw [lk_keep (by decide) hL.2]⟩
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word 1) := by
          have := ev_cw (σ := σ) s 1
          rw [this] at hv; exact (Option.some.inj hv).symm
        subst this
        exact ⟨lkvT_go hL.1, by rw [lk_keep (by decide) hL.2]⟩
    · intro t ⟨hL, Γ, q, he, hh, hsc, hE⟩
      obtain ⟨o, ho, hb, hty⟩ := ndT_next hE.1.2 hK0
      obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
      have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
      obtain ⟨hs6, hslot6⟩ := next_slot6 hty hsz
      have hKL := KL.isLt
      have hnl : (Lv + PL).toNat ≤ KL.toNat := by
        rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]; omega
      refine ⟨Nd, Lv, Res, Sl, 1, Nd, W3, Nd + BitVec.ofNat 64 48, Lv + PL, hL.1, Γ, q, he, hh, hsc,
        hE.1.1.1, rt_of_ty (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, hb, hty⟩, hE.2,
        Or.inr ⟨o, ho, 6, hs6, hslot6, ?_⟩, hnl⟩
      unfold Obj.cell; rw [hb]

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iExtGo_G
