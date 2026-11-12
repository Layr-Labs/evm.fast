import InitECandidate.Solver.MemSafe.Ins.Tail

set_option autoImplicit false

/-!
# `node_new_leaf` / `node_new_ext` with their types

Like `Dn.sumSpecA_node_new_branchT`: the returned word is the base of a fresh object of `Γ'` of type
`tNLEAF` / `tNEXT` (the plain summaries only say `fits nodeU`, which also allows a null word).
The proofs are the plain ones with `ctor_core` replaced by `ctor_coreT` (`hoareG_ctorStoresT`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH InitECandidate.Solver.MemSafe.Node
open InitECandidate.Solver.MemSafe.Dn (hoareG_ctorStoresT BrRx LfPre ExPre)

variable {σ : Type} {X : Ctx 64}

/-- `ctor_core` with the type of the new object in the post. -/
theorem ctor_coreT {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H)
    (hAS : AllocSpec σ X (nm "alloc") .heap)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []) {Sp : Nat → BitVec 64 → Prop}
    {ty n : Nat} (hO : ObjSpec a ty n Sp) (hn : n < 2 ^ 64) {ps : List (MlS × BitVec 64)}
    (hps : ∀ q ∈ ps, q.1 ≠ ndN) {xs : List (Nat × ExpHOL 64)}
    (hxs : ∀ kx ∈ xs, 8 * kx.1 + 8 ≤ n ∧ ∃ x, Sp kx.1 x ∧
      ∀ s : State σ, LP ps s.locals → ev s kx.2 = some (.val (.word x)))
    (hcov : ∀ i, 8 * i + 8 ≤ n → ∃ kx ∈ xs, kx.1 = i) :
    HoareG σ X (PreH a (LP ps)) (.decCall ndN .one (nm "alloc") [cw n] (storeSeqR ndN xs))
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
        ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = ty ∧
          ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) := by
  have hSZ : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hn
  refine hoareG_allocN ha hAS halloc (SZ := BitVec.ofNat 64 n)
    (L' := fun Ar m => LP ((ndN, Ar) :: ps) m) (fun s _ _ => ev_cw _ n) ?_ ?_
  · intro s st Ar hL
    exact lp_set ps ndN Ar hps { st with locals := s.locals } hL
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    rw [hSZ] at hs2 ⊢
    refine hoareG_pre (hoareG_ctorStoresT ha hM hO (L := LP ((ndN, Ar) :: ps)) ⟨hs1, hs2⟩ hs3
      (fun m hm => hm (ndN, Ar) (List.mem_cons_self ..)) xs (fun _ => False) (fun i h => h.elim)
      ?_ (fun i hi => Or.inr (hcov i hi)))
      (fun t _ ⟨hL, hB⟩ => ⟨hL, hB, fun i h => h.elim⟩)
    intro kx hkx
    obtain ⟨h1, x, h2, h3⟩ := hxs kx hkx
    exact ⟨h1, x, h2, fun s hL => h3 s (fun q hq => hL q (List.mem_cons_of_mem _ hq))⟩

/-- The result is the base of a fresh `ty` object. -/
def TyRx (ty : Nat) (_ : List (ValueHOL 64)) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = ty

theorem sumSpecA_node_new_leafT {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H)
    (hwf : ∀ (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam), LfPre vs s0 Γ0 →
      ∀ NIB NLEN VP VL : BitVec 64,
        vs = [.val (.word NIB), .val (.word NLEN), .val (.word VP), .val (.word VL)] →
      ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout Types.guestC q Γ' → Ext Γ0 Γ' →
        (⟨Ar, Types.tNLEAF, 64⟩ : Obj) ∈ Γ' → Ar.toNat + 64 ≤ heapEnd →
        (∀ i, 8 * i + 8 ≤ 64 → LfSpV NIB NLEN VP VL i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
        H.wf Γ' u ⟨Ar, Types.tNLEAF, 64⟩) :
    SumSpecA σ X Types.guestC H (nm "node_new_leaf") nlSig (fun vs s Γ => LfPre vs s Γ)
      (fun _ _ _ _ => False) (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TyRx Types.tNLEAF vs Γ' v) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Rec.sumSpecA_of_heapQG hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, Dv, rfl, hsA, hsB, hsC, hsD, hlA, hlB, hlC, hlD⟩ :=
    Bn.lookupCode_four code_node_new_leaf (by decide) hl
  obtain ⟨NIB, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨NLEN, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨VP, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨VL, rfl⟩ := val_of_shapeEq_one hsD
  set a := actOf Types.guestC H nlSig []
    [.val (.word NIB), .val (.word NLEN), .val (.word VP), .val (.word VL)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let ps : List (MlS × BitVec 64) :=
    [(nm "nib", NIB), (nm "nlen", NLEN), (nm "vptr", VP), (nm "vlen", VL)]
  refine hoareG_conseq (P := PreH a (LP ps))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
      ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNLEAF ∧
        ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', fun v hv' => ⟨(hv v hv').1, by
      obtain ⟨o, ho, h1, h2, -⟩ := (hv v hv').2
      exact ⟨o, ho, h1, h2⟩⟩⟩
  unfold lfBody
  have hO : ObjSpec a Types.tNLEAF 64 (LfSpV NIB NLEN VP VL) := by
    refine objSpec_guest haC (tg := 1) ?_ (by decide) (by decide) ?_ ?_ rfl ?_
      (fun Γ' u Ar q hL hx hm hb hsl => hwf _ s0 Γ0 hpre NIB NLEN VP VL rfl Γ' u Ar q hL hx hm hb hsl)
      (by simp [nodeTys]) rfl rfl
    · rw [Types.ty_NLEAF]; rfl
    · rw [Types.ty_NLEAF]; decide
    · intro i hi x _
      have : i < 8 := by omega
      rw [Types.ty_NLEAF]
      interval_cases i <;> simp [Types.nleafTy, TyD.slot, Fits]
    · intro x hx; exact hx.1 rfl
  refine ctor_coreT ha hM hAS halloc hO (by decide) (ps := ps) ?_ ?_ ?_
  · intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl
    · exact (by decide : nm "nib" ≠ ndN)
    · exact (by decide : nm "nlen" ≠ ndN)
    · exact (by decide : nm "vptr" ≠ ndN)
    · exact (by decide : nm "vlen" ≠ ndN)
  · intro kx hkx
    simp only [lfStores, List.mem_cons, List.not_mem_nil, or_false] at hkx
    rcases hkx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact ⟨by decide, BitVec.ofNat 64 1, by simp [LfSpV], fun s _ => ev_cw _ 1⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [LfSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [LfSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [LfSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, NIB, by simp [LfSpV], fun s hL => ev_lw (hL (nm "nib", NIB) (by simp [ps]))⟩
    · exact ⟨by decide, NLEN, by simp [LfSpV], fun s hL => ev_lw (hL (nm "nlen", NLEN) (by simp [ps]))⟩
    · exact ⟨by decide, VP, by simp [LfSpV], fun s hL => ev_lw (hL (nm "vptr", VP) (by simp [ps]))⟩
    · exact ⟨by decide, VL, by simp [LfSpV], fun s hL => ev_lw (hL (nm "vlen", VL) (by simp [ps]))⟩
  · intro i hi
    have : i < 8 := by omega
    interval_cases i <;> simp [lfStores]

theorem sumSpecA_node_new_extT {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H)
    (hwf : ∀ (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam), ExPre vs s0 Γ0 →
      ∀ NIB NLEN CH : BitVec 64, vs = [.val (.word NIB), .val (.word NLEN), .val (.word CH)] →
      ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout Types.guestC q Γ' → Ext Γ0 Γ' →
        (⟨Ar, Types.tNEXT, 56⟩ : Obj) ∈ Γ' → Ar.toNat + 56 ≤ heapEnd →
        (∀ i, 8 * i + 8 ≤ 56 → ExSpV Γ0 NIB NLEN i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
        H.wf Γ' u ⟨Ar, Types.tNEXT, 56⟩) :
    SumSpecA σ X Types.guestC H (nm "node_new_ext") neSig (fun vs s Γ => ExPre vs s Γ)
      (fun _ _ _ _ => False) (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TyRx Types.tNEXT vs Γ' v) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Rec.sumSpecA_of_heapQG hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, rfl, hsA, hsB, hsC, hlA, hlB, hlC⟩ :=
    lookupCode_three code_node_new_ext (by decide) (by decide) (by decide) hl
  obtain ⟨NIB, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨NLEN, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨CH, rfl⟩ := val_of_shapeEq_one hsC
  set a := actOf Types.guestC H neSig []
    [.val (.word NIB), .val (.word NLEN), .val (.word CH)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hfitC : Fits a.Γ0 Types.nodeU CH := by
    obtain ⟨w, hw, hf⟩ := ha.hargs0.2 2 (.fits Types.nodeU) (.val (.word CH)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hf
  let ps : List (MlS × BitVec 64) := [(nm "nib", NIB), (nm "nlen", NLEN), (nm "child", CH)]
  refine hoareG_conseq (P := PreH a (LP ps))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
      ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNEXT ∧
        ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', fun v hv' => ⟨(hv v hv').1, by
      obtain ⟨o, ho, h1, h2, -⟩ := (hv v hv').2
      exact ⟨o, ho, h1, h2⟩⟩⟩
  unfold exBody
  have hO : ObjSpec a Types.tNEXT 56 (ExSpV a.Γ0 NIB NLEN) := by
    refine objSpec_guest haC (tg := 2) ?_ (by decide) (by decide) ?_ ?_ rfl ?_
      (fun Γ' u Ar q hL hx hm hb hsl => hwf _ s0 Γ0 hpre NIB NLEN CH rfl Γ' u Ar q hL hx hm hb hsl)
      (by simp [nodeTys]) rfl rfl
    · rw [Types.ty_NEXT]; rfl
    · rw [Types.ty_NEXT]; decide
    · intro i hi x hx
      have : i < 7 := by omega
      rw [Types.ty_NEXT]
      interval_cases i <;> first
        | exact hx.2.1 rfl
        | simp [Types.nextTy, TyD.slot, Fits]
    · intro x hx; exact hx.1 rfl
  refine ctor_coreT ha hM hAS halloc hO (by decide) (ps := ps) ?_ ?_ ?_
  · intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · exact (by decide : nm "nib" ≠ ndN)
    · exact (by decide : nm "nlen" ≠ ndN)
    · exact (by decide : nm "child" ≠ ndN)
  · intro kx hkx
    simp only [exStores, List.mem_cons, List.not_mem_nil, or_false] at hkx
    rcases hkx with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact ⟨by decide, BitVec.ofNat 64 2, by simp [ExSpV], fun s _ => ev_cw _ 2⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [ExSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [ExSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, by simp [ExSpV], fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, NIB, by simp [ExSpV], fun s hL => ev_lw (hL (nm "nib", NIB) (by simp [ps]))⟩
    · exact ⟨by decide, NLEN, by simp [ExSpV], fun s hL => ev_lw (hL (nm "nlen", NLEN) (by simp [ps]))⟩
    · exact ⟨by decide, CH, by simpa [ExSpV] using hfitC, fun s hL => ev_lw (hL (nm "child", CH) (by simp [ps]))⟩
  · intro i hi
    have : i < 7 := by omega
    interval_cases i <;> simp [exStores]

theorem node_new_leafT_guestR :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_leaf") nlSig
      (fun vs s Γ => LfPre vs s Γ) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TyRx Types.tNLEAF vs Γ' v) :=
  sumSpecA_node_new_leafT Rec.foldOK_guestR Hooks.guestHooksR_mono
    (by
      rintro vs s0 Γ0 ⟨N, L, V, VL, rfl, hN, hV⟩ NIB NLEN VP VL' hvs Γ' u Ar q hL hx hm hb hsl
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
      have hG := Hooks.gamOK_of_layout hL
      have e4 : rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 4) = N := (hsl 4 (by decide)).2.1 rfl
      have e5 : rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 5) = L := (hsl 5 (by decide)).2.2.1 rfl
      have e6 : rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 6) = V := (hsl 6 (by decide)).2.2.2.1 rfl
      have e7 : rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 7) = VL := (hsl 7 (by decide)).2.2.2.2 rfl
      refine Hooks.recHooks_guestR.make Γ' u _ Hooks.recTy_tNLEAF fun e he het => ⟨hm, hG, ?_⟩
      rcases Hooks.recTab_leaf he het with rfl | rfl
      · refine ⟨le_refl _, hb, ?_⟩
        show Hooks.NIn Γ' (rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 4))
          (rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 5))
        rw [e4, e5]; exact Hooks.nIn_ext hx hN
      · refine ⟨le_refl _, hb, ?_⟩
        show Hooks.VInR Types.tVAL Γ' (rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 6))
          (rd u.memory ((⟨Ar, Types.tNLEAF, 64⟩ : Obj).cell 7))
        rw [e6, e7]; exact Hooks.vInR_ext hx hV)

theorem node_new_extT_guestR :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_ext") neSig
      (fun vs s Γ => ExPre vs s Γ) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TyRx Types.tNEXT vs Γ' v) :=
  sumSpecA_node_new_extT Rec.foldOK_guestR Hooks.guestHooksR_mono
    (by
      rintro vs s0 Γ0 ⟨N, L, C, rfl, hN⟩ NIB NLEN CH hvs Γ' u Ar q hL hx hm hb hsl
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl, rfl⟩ := hvs
      have hG := Hooks.gamOK_of_layout hL
      have e4 : rd u.memory ((⟨Ar, Types.tNEXT, 56⟩ : Obj).cell 4) = N := (hsl 4 (by decide)).2.2.1 rfl
      have e5 : rd u.memory ((⟨Ar, Types.tNEXT, 56⟩ : Obj).cell 5) = L := (hsl 5 (by decide)).2.2.2 rfl
      refine Hooks.recHooks_guestR.make Γ' u _ Hooks.recTy_tNEXT fun e he het => ⟨hm, hG, ?_⟩
      rw [Hooks.recTab_ext he het]
      refine ⟨le_refl _, hb, ?_⟩
      show Hooks.NIn Γ' (rd u.memory ((⟨Ar, Types.tNEXT, 56⟩ : Obj).cell 4))
        (rd u.memory ((⟨Ar, Types.tNEXT, 56⟩ : Obj).cell 5))
      rw [e4, e5]; exact Hooks.nIn_ext hx hN)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.node_new_leafT_guestR
#print axioms InitECandidate.Solver.MemSafe.Ins.node_new_extT_guestR
