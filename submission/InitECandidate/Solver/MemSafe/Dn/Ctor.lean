import InitECandidate.Solver.MemSafe.Node.NodeJL
import InitECandidate.Solver.MemSafe.Rec.TxKit2
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Wire.Helpers

set_option autoImplicit false

/-!
# The node constructors at the final hook family, with the branch's type

* `hashedHook_guestR`: a hashed node has no record entry.
* `node_new_{leaf,ext,hashed}_guestR`: the constructors' summaries at `guestHooksR`. A leaf or
  extension needs its path slice in `tNIB` objects, and a leaf its value slice in a `tVAL` object.
* `sumSpecA_node_new_branchT`: `node_new_branch` returns the base of an `NBRANCH` object of `Γ'`.
  (The plain summary only says `fits nodeU`; the decoder writes the branch's child slots 4..19, which
  only an `NBRANCH` object has.) The proof is `sumSpecA_node_new_branch`'s, with `hoareG_retNewT`
  exposing the new object.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH InitECandidate.Solver.MemSafe.Node

variable {σ : Type} {X : Ctx 64}

/-- A hashed node has no record entry, so its hook is the `guestHooksJL` one (trivial). -/
theorem hashedHook_guestR : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = Types.tNHASHED →
    (Hooks.guestHooksR (σ := σ)).wf Γ s o := by
  intro Γ s o ht
  refine ⟨nodeHooks_guestJL Γ s o (by rw [ht]; simp [nodeTys]), fun e he hty => ?_⟩
  have hm := Hooks.recTab_ty he
  rw [hty, ht] at hm
  exact absurd hm (by decide)

/-- `node_new_leaf`'s precondition: its path and value slices are in their objects. -/
def LfPre (vs : List (ValueHOL 64)) (_s : State σ) (Γ : Gam) : Prop :=
  ∃ N L V VL : BitVec 64, vs = [.val (.word N), .val (.word L), .val (.word V), .val (.word VL)] ∧
    Hooks.NIn Γ N L ∧ Hooks.VInR Types.tVAL Γ V VL

/-- `node_new_ext`'s precondition: its path slice is in its objects. -/
def ExPre (vs : List (ValueHOL 64)) (_s : State σ) (Γ : Gam) : Prop :=
  ∃ N L C : BitVec 64, vs = [.val (.word N), .val (.word L), .val (.word C)] ∧ Hooks.NIn Γ N L

theorem node_new_leaf_guestR :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_leaf") nlSig
      (fun vs s Γ => LfPre vs s Γ) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  refine sumSpecA_node_new_leafP Rec.foldOK_guestR Hooks.guestHooksR_mono ?_
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
    rw [e6, e7]; exact Hooks.vInR_ext hx hV

theorem node_new_ext_guestR :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_ext") neSig
      (fun vs s Γ => ExPre vs s Γ) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  refine sumSpecA_node_new_extP Rec.foldOK_guestR Hooks.guestHooksR_mono ?_
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
  rw [e4, e5]; exact Hooks.nIn_ext hx hN

theorem node_new_hashed_guestR :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_hashed") nhSig [] :=
  csumm_of_summA (sumSpecA_node_new_hashed Rec.foldOK_guestR Hooks.guestHooksR_mono
    hashedHook_guestR)

/-! ## A constructor's return, exposing the new object -/

theorem hoareG_retNewT {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {n ty : Nat}
    {Sp : Nat → BitVec 64 → Prop} {D : Nat → Prop} (hO : ObjSpec a ty n Sp) {L : LocalsH → Prop}
    {Ar : BitVec 64} {nd : MlS} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hD : ∀ i, 8 * i + 8 ≤ n → D i)
    (hLnd : ∀ m, L m → m.lookup nd = some (.val (.word Ar))) :
    HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (.return (lv nd))
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
        ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = ty ∧
          ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) := by
  refine hoareG_return fun t _ ⟨hL, hB⟩ v hv => ?_
  have hnA0 : ∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat := by
    obtain ⟨⟨Γb, qb, -, -, -, h⟩, -⟩ := hB
    exact h
  have hv' : v = .val (.word Ar) := Option.some.inj (hv.symm.trans (ev_lw (hLnd _ hL)))
  subst hv'
  obtain ⟨Γ', q, he', hh', hmem⟩ := heap_addObj ha hM hO hs hA8 hD hB
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  cases hr'
  refine ⟨Γ', q, he', heap_congr (s := t) ha.hH rfl rfl rfl rfl hh', fun v' hv' => ?_⟩
  cases hv'
  refine ⟨?_, ⟨Ar, ty, n⟩, hmem, rfl, rfl, hnA0⟩
  intro i r w hr hw
  rw [hO.ret] at hr
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
    subst hr
    simp [flattenHOL] at hw
    subst hw
    exact Or.inr ⟨_, hmem, rfl, hO.nodeTy⟩
  · simp at hr

theorem hoareG_ctorStoresT {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H) {n ty : Nat}
    {Sp : Nat → BitVec 64 → Prop} (hO : ObjSpec a ty n Sp) {L : LocalsH → Prop}
    {Ar : BitVec 64} {nd : MlS} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + n ≤ heapEnd)
    (hA8 : Ar.toNat % 8 = 0) (hLnd : ∀ m, L m → m.lookup nd = some (.val (.word Ar))) :
    ∀ (xs : List (Nat × ExpHOL 64)) (D : Nat → Prop), (∀ i, D i → 8 * i + 8 ≤ n) →
      (∀ kx ∈ xs, 8 * kx.1 + 8 ≤ n ∧ ∃ x, Sp kx.1 x ∧
        ∀ s : State σ, L s.locals → ev s kx.2 = some (.val (.word x))) →
      (∀ i, 8 * i + 8 ≤ n → D i ∨ ∃ kx ∈ xs, kx.1 = i) →
      HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (storeSeqR nd xs)
        (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
          ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = ty ∧
            ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) := by
  have hrng : Ar.toNat + n < 2 ^ 64 := by
    have : heapEnd < 2 ^ 64 := by decide
    omega
  intro xs
  induction xs with
  | nil =>
    intro D hD hxs hcov
    refine hoareG_retNewT ha hM hO hs hA8 (fun i hi => ?_) hLnd
    rcases hcov i hi with h | ⟨kx, hkx, -⟩
    · exact h
    · simp at hkx
  | cons kx xs ih =>
    intro D hD hxs hcov
    obtain ⟨k, e⟩ := kx
    obtain ⟨hk, x, hSp, hev⟩ := hxs (k, e) (List.mem_cons_self ..)
    refine hoareG_seqW (L := L) (Ar := Ar) (n := n) (Sp := Sp) (D := fun i => D i ∨ i = k) nq_of_abn ?_ ?_
    · refine hoareG_stSlot ha (j := k) hrng hD hk ?_ ?_
      · intro s hs hL w hw
        rw [ev_add2 (ev_lw (hLnd _ hL)) (ev_cw _ (8 * k))] at hw
        cases hw
        rfl
      · intro s hs hL v hv
        rw [hev s hL] at hv
        cases hv
        exact ⟨x, rfl, hSp⟩
    · refine ih _ (fun i hi => ?_) (fun kx' hkx' => hxs kx' (List.mem_cons_of_mem _ hkx'))
        (fun i hi => ?_)
      · rcases hi with hi | rfl
        · exact hD i hi
        · exact hk
      · rcases hcov i hi with h | ⟨kx', hkx', hi'⟩
        · exact Or.inl (Or.inl h)
        · rcases List.mem_cons.mp hkx' with rfl | hm
          · exact Or.inl (Or.inr hi'.symm)
          · exact Or.inr ⟨kx', hm, hi'⟩

/-! ## `node_new_branch` with its type -/

/-- The result is the base of an `NBRANCH` object. -/
def BrRx (_ : List (ValueHOL 64)) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH

/-- The result is the base of an `NBRANCH` object, unallocated at the entry allocator `p0`. -/
def BrRxF (p0 : Ptrs) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH ∧
    ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ p0.Allocated x.toNat

/-- `Rec.sumSpecA_of_heapQG` with a value fact that also sees the entry allocator. -/
theorem sumSpecA_of_heapQP {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Ptrs → Gam → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs p0 Γ' v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs s _ r _ Γ' => ∀ v, r = .returned v → ∀ p0, ptrsOf s = some p0 → Rx vs p0 Γ' v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', Rec.sumCore_pw_mono2 (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh'
    (fun v hv => (hret v hv).1)) ?_, fun v hv p0 hp0 => ?_⟩
  · rintro x ⟨hx, c, hc, -⟩
    cases hc
  · rw [hps] at hp0; cases hp0
    exact (hret v hv).2

theorem sumSpecA_node_new_branchT {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H)
    (hwf : ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout Types.guestC q Γ' →
      (⟨Ar, Types.tNBRANCH, 176⟩ : Obj) ∈ Γ' → Ar.toNat + 176 ≤ heapEnd →
      (∀ i, 8 * i + 8 ≤ 176 → BrSp i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
      H.wf Γ' u ⟨Ar, Types.tNBRANCH, 176⟩) :
    SumSpecA σ X Types.guestC H (nm "node_new_branch") nbSig (fun _ _ _ => True)
      (fun _ _ _ _ => False)
      (fun vs s _ r _ Γ' => ∀ v, r = .returned v → ∀ p0, ptrsOf s = some p0 → BrRxF p0 Γ' v) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  have hmz : CSumm σ X Types.guestC H (nm "memzero") Helpers.sigMemzero [] :=
    csumm_of_summ (Helpers.summ_memzero hF.hH Helpers.tagSlots_guestC hX hF.hal)
  have hmzv := funSpec_memzeroZ (σ := σ) (X := X) hX
  refine sumSpecA_of_heapQP (Rx := fun _ p0 Γ' v => BrRxF p0 Γ' v) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hvs⟩ := Struct.lookupCode_zero code_node_new_branch hl
  subst hvs
  set a := actOf Types.guestC H nbSig [] [] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  refine hoareG_conseq (P := PreH a (LP []))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧
      ∃ o ∈ Γ', v = .val (.word o.base) ∧ o.ty = Types.tNBRANCH ∧
        ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ a.p0.Allocated x.toNat)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨fun q hq => absurd hq (by simp), Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', fun v hv' => ⟨(hv v hv').1, (hv v hv').2⟩⟩
  unfold brBody
  have hO : ObjSpec a Types.tNBRANCH 176 BrSp := by
    refine objSpec_guest haC (tg := 3) ?_ (by decide) (by decide) ?_ ?_ rfl ?_
      (fun Γ' u Ar q hL _ hm hb hsl => hwf Γ' u Ar q hL hm hb hsl) (by simp [nodeTys]) rfl rfl
    · rw [Types.ty_NBRANCH]; rfl
    · rw [Types.ty_NBRANCH]; decide
    · intro i hi x hx
      have hi22 : i < 22 := by omega
      rw [Types.ty_NBRANCH]
      by_cases h0 : i = 0
      · subst h0; simp [Types.nbranchTy, TyD.slot, Fits]
      · have hx0 : x = 0 := hx.2 h0
        subst hx0
        interval_cases i <;> simp [Types.nbranchTy, TyD.slot, Fits, nullMax]
    · intro x hx; exact hx.1 rfl
  have hSZ : (BitVec.ofNat 64 176).toNat = 176 := rfl
  refine hoareG_allocN ha hAS halloc (SZ := BitVec.ofNat 64 176)
    (L' := fun Ar m => LP [(ndN, Ar)] m) (fun s _ _ => ev_cw _ 176) ?_ ?_
  · intro s st Ar hL
    exact lp_set [] ndN Ar (fun q hq => absurd hq (by simp)) { st with locals := s.locals } hL
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    rw [hSZ] at hs2 ⊢
    refine hoareG_pre (P := fun t => LP [(ndN, Ar)] t.locals ∧
      BlkW a Ar 176 BrSp (fun _ => False) t) ?_ (fun t _ ⟨hL, hB⟩ => ⟨hL, hB, fun i h => h.elim⟩)
    refine hoareG_seqW (L := LP [(ndN, Ar)]) (Ar := Ar) (n := 176) (Sp := BrSp)
      (D := fun i => 8 * i + 8 ≤ 176 ∧ BrSp i 0) nq_of_abn ?_ ?_
    · exact hoareG_mzW ha hmz hmzv (N := BitVec.ofNat 64 176) hs3 hSZ (by decide) (by decide)
        (fun s _ hL => ⟨ev_lw (hL (ndN, Ar) (by simp)), ev_cw _ 176⟩)
    · refine hoareG_ctorStoresT ha hM hO (L := LP [(ndN, Ar)]) ⟨hs1, hs2⟩ hs3
        (fun m hm => hm (ndN, Ar) (by simp)) brStores _ (fun i hi => hi.1) ?_ ?_
      · intro kx hkx
        simp only [brStores, List.mem_cons, List.not_mem_nil, or_false] at hkx
        rcases hkx with rfl
        exact ⟨by decide, BitVec.ofNat 64 3, ⟨fun _ => rfl, fun h => absurd rfl h⟩,
          fun s _ => ev_cw _ 3⟩
      · intro i hi
        by_cases h0 : i = 0
        · subst h0; exact Or.inr ⟨(0, cw 3), by simp [brStores], rfl⟩
        · exact Or.inl ⟨hi, ⟨fun h => absurd h h0, fun _ => rfl⟩⟩

theorem node_new_branchT_guestR :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_branch") nbSig
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs s _ r _ Γ' => ∀ v, r = .returned v → ∀ p0, ptrsOf s = some p0 → BrRxF p0 Γ' v) :=
  sumSpecA_node_new_branchT Rec.foldOK_guestR Hooks.guestHooksR_mono
    fun Γ' u Ar q hL hm hb hsl => by
      have hG := Hooks.gamOK_of_layout hL
      have e21 : rd u.memory ((⟨Ar, Types.tNBRANCH, 176⟩ : Obj).cell 21) = 0 :=
        (hsl 21 (by decide)).2 (by decide)
      refine Hooks.recHooks_guestR.make Γ' u _ Hooks.recTy_tNBRANCH fun e he het => ⟨hm, hG, ?_⟩
      rw [Hooks.recTab_br he het]
      refine ⟨le_refl _, hb, ?_⟩
      show Hooks.VInR Types.tVAL Γ' (rd u.memory ((⟨Ar, Types.tNBRANCH, 176⟩ : Obj).cell 20))
        (rd u.memory ((⟨Ar, Types.tNBRANCH, 176⟩ : Obj).cell 21))
      rw [e21]; exact Or.inl rfl

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.hashedHook_guestR
#print axioms InitECandidate.Solver.MemSafe.Dn.node_new_leaf_guestR
#print axioms InitECandidate.Solver.MemSafe.Dn.node_new_ext_guestR
#print axioms InitECandidate.Solver.MemSafe.Dn.node_new_ext_guestR
#print axioms InitECandidate.Solver.MemSafe.Dn.node_new_branchT_guestR
