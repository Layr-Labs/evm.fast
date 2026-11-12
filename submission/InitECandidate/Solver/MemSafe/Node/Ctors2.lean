import InitECandidate.Solver.MemSafe.Node.Ctors
import InitECandidate.Solver.MemSafe.Node.MzVal

set_option autoImplicit false

/-!
# The node constructors `node_new_leaf`, `node_new_branch`, `node_new_ext`, `node_new_hashed`

```
fun 1 node_new_leaf(1 nib, 1 nlen, 1 vptr, 1 vlen) {
  var 1 nd = alloc(64);
  st nd + 0, 1; st nd + 8, 0; st nd + 16, 0; st nd + 24, 0;
  st nd + 32, nib; st nd + 40, nlen; st nd + 48, vptr; st nd + 56, vlen; return nd; }
fun 1 node_new_branch() { var 1 nd = alloc(176); memzero(nd, 176); st nd + 0, 3; return nd; }
fun 1 node_new_ext(1 nib, 1 nlen, 1 child) {
  var 1 nd = alloc(56); st nd + 0, 2; st nd + 8, 0; st nd + 16, 0; st nd + 24, 0;
  st nd + 32, nib; st nd + 40, nlen; st nd + 48, child; return nd; }
fun 1 node_new_hashed(1 hash) {
  var 1 nd = alloc(32); st nd + 0, 0; st nd + 8, 0; st nd + 16, 0; st nd + 24, hash; return nd; }
```

Each returns a fresh typed node object: the summary's `Γ'` extends `Γ` by `⟨nd, ty, size⟩`, the result
fits `nodeU`, and no cell of `Γ` is written (`grows := true`, `ret := [fits nodeU]`).
Hypotheses (generic `H`): `HooksMono guestC H`; the node types have the trivial hook (`nodeHooks_guestJL`
for `guestHooksJL`). `node_new_ext` needs `child` to fit `nodeU`; the others have no precondition.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}


/-! ## `node_new_hashed` -/

def haStores : List (Nat × ExpHOL 64) := [(0, cw 0), (1, cw 0), (2, cw 0), (3, lv (nm "hash"))]

def haBody : ProgHOL 64 :=
  .decCall ndN .one (nm "alloc") [cw 32] (storeSeqR ndN haStores)

def haPs : List (MlS × ShapeHOL) := [(nm "hash", .one)]

theorem entry_node_new_hashed : fnEntry Guest.Software.guestFn_node_new_hashed =
    (nm "node_new_hashed", haPs, haBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_hashed : guestCode (nm "node_new_hashed") = some (haPs, haBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 255) (by decide)) ⟨_, rfl⟩
    entry_node_new_hashed

/-- `node_new_hashed`: no precondition; returns a fresh hashed-reference node. -/
def nhSig : Sig := ⟨[.any], [.fits Types.nodeU], [], true⟩

def HaSp : Nat → BitVec 64 → Prop := fun i x => i = 0 → x = BitVec.ofNat 64 0

theorem sumSpecA_node_new_hashed {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) (hwf : ∀ Γ (s : State σ) o, o.ty = Types.tNHASHED → H.wf Γ s o) :
    SumSpecA σ X Types.guestC H (nm "node_new_hashed") nhSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, rfl, hsA, hlA⟩ := lookupCode_one code_node_new_hashed hl
  obtain ⟨HV, rfl⟩ := val_of_shapeEq_one hsA
  set a := actOf Types.guestC H nhSig [] [.val (.word HV)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  let ps : List (MlS × BitVec 64) := [(nm "hash", HV)]
  refine hoareG_conseq (P := PreH a (LP ps))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
  unfold haBody
  have hO : ObjSpec a Types.tNHASHED 32 HaSp := by
    refine objSpec_guest haC (tg := 0) ?_ (by decide) (by decide) ?_ ?_ rfl ?_
      (fun Γ' u _ _ _ _ _ _ _ => hwf Γ' u _ rfl) (by simp [nodeTys]) rfl rfl
    · rw [Types.ty_NHASHED]; rfl
    · rw [Types.ty_NHASHED]; decide
    · intro i hi x _
      have : i < 4 := by omega
      rw [Types.ty_NHASHED]
      interval_cases i <;> simp [Types.nhashedTy, TyD.slot, Fits]
    · intro x hx; exact hx rfl
  refine ctor_core ha hM hAS halloc hO (by decide) (ps := ps) ?_ ?_ ?_
  · intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl
    exact (by decide : nm "hash" ≠ ndN)
  · intro kx hkx
    simp only [haStores, List.mem_cons, List.not_mem_nil, or_false] at hkx
    rcases hkx with rfl | rfl | rfl | rfl
    · exact ⟨by decide, BitVec.ofNat 64 0, fun _ => rfl, fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, fun h => absurd h (by decide), fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, BitVec.ofNat 64 0, fun h => absurd h (by decide), fun s _ => ev_cw _ 0⟩
    · exact ⟨by decide, HV, fun h => absurd h (by decide),
        fun s hL => ev_lw (hL (nm "hash", HV) (by simp [ps]))⟩
  · intro i hi
    have : i < 4 := by omega
    interval_cases i <;> simp [haStores]

/-! ## `node_new_ext` -/

def exStores : List (Nat × ExpHOL 64) :=
  [(0, cw 2), (1, cw 0), (2, cw 0), (3, cw 0), (4, lv (nm "nib")), (5, lv (nm "nlen")),
    (6, lv (nm "child"))]

def exBody : ProgHOL 64 :=
  .decCall ndN .one (nm "alloc") [cw 56] (storeSeqR ndN exStores)

def exPs : List (MlS × ShapeHOL) := [(nm "nib", .one), (nm "nlen", .one), (nm "child", .one)]

theorem entry_node_new_ext : fnEntry Guest.Software.guestFn_node_new_ext =
    (nm "node_new_ext", exPs, exBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_ext : guestCode (nm "node_new_ext") = some (exPs, exBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 257) (by decide)) ⟨_, rfl⟩
    entry_node_new_ext

/-- `node_new_ext`: `child` must fit `nodeU`; returns a fresh extension node. -/
def neSig : Sig := ⟨[.any, .any, .fits Types.nodeU], [.fits Types.nodeU], [], true⟩

def ExSp (Γ0 : Gam) : Nat → BitVec 64 → Prop := fun i x =>
  (i = 0 → x = BitVec.ofNat 64 2) ∧ (i = 6 → Fits Γ0 Types.nodeU x)

/-- What a new extension's slots hold. -/
def ExSpV (Γ0 : Gam) (NIB NLEN : BitVec 64) : Nat → BitVec 64 → Prop := fun i x =>
  (i = 0 → x = BitVec.ofNat 64 2) ∧ (i = 6 → Fits Γ0 Types.nodeU x) ∧ (i = 4 → x = NIB) ∧
    (i = 5 → x = NLEN)

/-- **`node_new_ext`**, for a hook family whose extension invariant follows from the slots and `Pre`. -/
theorem sumSpecA_node_new_extP {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hwf : ∀ (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam), Pre vs s0 Γ0 →
      ∀ NIB NLEN CH : BitVec 64, vs = [.val (.word NIB), .val (.word NLEN), .val (.word CH)] →
      ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout Types.guestC q Γ' → Ext Γ0 Γ' →
        (⟨Ar, Types.tNEXT, 56⟩ : Obj) ∈ Γ' → Ar.toNat + 56 ≤ heapEnd →
        (∀ i, 8 * i + 8 ≤ 56 → ExSpV Γ0 NIB NLEN i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
        H.wf Γ' u ⟨Ar, Types.tNEXT, 56⟩) :
    SumSpecA σ X Types.guestC H (nm "node_new_ext") neSig Pre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
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
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
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
  refine ctor_core ha hM hAS halloc hO (by decide) (ps := ps) ?_ ?_ ?_
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

/-- `node_new_ext` with a trivial hook on node types. -/
theorem sumSpecA_node_new_ext {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) (hwf : ∀ Γ (s : State σ) o, o.ty ∈ nodeTys → H.wf Γ s o) :
    SumSpecA σ X Types.guestC H (nm "node_new_ext") neSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_node_new_extP hF hM fun _ _ _ _ _ _ _ _ Γ' u _ _ _ _ _ _ _ => hwf Γ' u _ (by simp [nodeTys])

/-! ## `node_new_branch` -/

def brStores : List (Nat × ExpHOL 64) := [(0, cw 3)]

def brBody : ProgHOL 64 :=
  .decCall ndN .one (nm "alloc") [cw 176]
    (.seq (callD (nm "memzero") [lv ndN, cw 176]) (storeSeqR ndN brStores))

theorem entry_node_new_branch : fnEntry Guest.Software.guestFn_node_new_branch =
    (nm "node_new_branch", [], brBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_branch : guestCode (nm "node_new_branch") = some ([], brBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
    entry_node_new_branch

/-- `node_new_branch`: no arguments; returns a fresh branch node (all children null). -/
def nbSig : Sig := ⟨[], [.fits Types.nodeU], [], true⟩

def BrSp : Nat → BitVec 64 → Prop := fun i x => (i = 0 → x = BitVec.ofNat 64 3) ∧ (i ≠ 0 → x = 0)

theorem sumSpecA_node_new_branch {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) (hwf : ∀ Γ (s : State σ) o, o.ty ∈ nodeTys → H.wf Γ s o) :
    SumSpecA σ X Types.guestC H (nm "node_new_branch") nbSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  have hmz : CSumm σ X Types.guestC H (nm "memzero") Helpers.sigMemzero [] :=
    csumm_of_summ (Helpers.summ_memzero hF.hH Helpers.tagSlots_guestC hX hF.hal)
  have hmzv := funSpec_memzeroZ (σ := σ) (X := X) hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hvs⟩ := Struct.lookupCode_zero code_node_new_branch hl
  subst hvs
  set a := actOf Types.guestC H nbSig [] [] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  refine hoareG_conseq (P := PreH a (LP []))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨fun q hq => absurd hq (by simp), Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
  unfold brBody
  have hO : ObjSpec a Types.tNBRANCH 176 BrSp := by
    refine objSpec_guest haC (tg := 3) ?_ (by decide) (by decide) ?_ ?_ rfl ?_
      (fun Γ' u _ _ _ _ _ _ _ => hwf Γ' u _ (by simp [nodeTys])) (by simp [nodeTys]) rfl rfl
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
    · refine hoareG_ctorStores ha hM hO (L := LP [(ndN, Ar)]) ⟨hs1, hs2⟩ hs3
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

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.sumSpecA_node_new_hashed
#print axioms InitECandidate.Solver.MemSafe.Node.sumSpecA_node_new_ext
#print axioms InitECandidate.Solver.MemSafe.Node.sumSpecA_node_new_branch
