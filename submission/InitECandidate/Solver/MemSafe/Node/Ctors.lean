import InitECandidate.Solver.MemSafe.Node.AddObj
import InitECandidate.Solver.MemSafe.Node.NodeHooks
import InitECandidate.Solver.MemSafe.Wire.Guest

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

def ndN : MlS := nm "nd"

/-- Locals: the listed names hold the listed words. -/
def LP (ps : List (MlS × BitVec 64)) (m : LocalsH) : Prop :=
  ∀ q ∈ ps, m.lookup q.1 = some (.val (.word q.2))

theorem lp_set (ps : List (MlS × BitVec 64)) (x : MlS) (w : BitVec 64)
    (hx : ∀ q ∈ ps, q.1 ≠ x) (s : State σ) (h : LP ps s.locals) :
    LP ((x, w) :: ps) (setVarHOLFinite x (.val (.word w)) s).locals := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact lk_set_self _ _ _
  · rw [lk_set_ne s _ (hx q hq).symm]
    exact h q hq

/-- The node types: `ObjSpec` from the per-type facts. -/
theorem objSpec_guest {a : Act σ} (haC : a.C = Types.guestC) {ty n tg : Nat}
    {Sp : Nat → BitVec 64 → Prop} (hreg : (Types.guestC.ty ty).region = .heap)
    (hn8 : n % 8 = 0) (hn0 : 0 < n) (hmin : (Types.guestC.ty ty).minSz ≤ n)
    (hfit : ∀ i, 8 * i + 8 ≤ n → ∀ x, Sp i x → Fits a.Γ0 ((Types.guestC.ty ty).slot i) x)
    (htg : Types.guestC.tags.lookup ty = some tg) (hSp0 : ∀ x, Sp 0 x → x = BitVec.ofNat 64 tg)
    (hwf : ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout a.C q Γ' → Ext a.Γ0 Γ' →
      (⟨Ar, ty, n⟩ : Obj) ∈ Γ' → Ar.toNat + n ≤ heapEnd →
      (∀ i, 8 * i + 8 ≤ n → Sp i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
      a.H.wf Γ' u ⟨Ar, ty, n⟩) (hty : ty ∈ nodeTys)
    (hg : a.sg.grows = true) (hr : a.sg.ret = [.fits Types.nodeU]) : ObjSpec a ty n Sp where
  reg := by rw [haC]; exact hreg
  n8 := hn8
  n0 := hn0
  minSz := by rw [haC]; exact hmin
  fit := by rw [haC]; exact hfit
  tag := by intro x tag hx hl; rw [haC, htg] at hl; cases hl; exact hSp0 x hx
  wf := hwf
  grows := hg
  ret := hr
  nodeTy := hty

/-- **The shared core:** `var nd = alloc(n); <stores>; return nd`. -/
theorem ctor_core {a : Act σ} (ha : ActOK a X) (hM : HooksMono a.C a.H)
    (hAS : AllocSpec σ X (nm "alloc") .heap)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []) {Sp : Nat → BitVec 64 → Prop}
    {ty n : Nat} (hO : ObjSpec a ty n Sp) (hn : n < 2 ^ 64) {ps : List (MlS × BitVec 64)}
    (hps : ∀ q ∈ ps, q.1 ≠ ndN) {xs : List (Nat × ExpHOL 64)}
    (hxs : ∀ kx ∈ xs, 8 * kx.1 + 8 ≤ n ∧ ∃ x, Sp kx.1 x ∧
      ∀ s : State σ, LP ps s.locals → ev s kx.2 = some (.val (.word x)))
    (hcov : ∀ i, 8 * i + 8 ≤ n → ∃ kx ∈ xs, kx.1 = i) :
    HoareG σ X (PreH a (LP ps)) (.decCall ndN .one (nm "alloc") [cw n] (storeSeqR ndN xs))
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hSZ : (BitVec.ofNat 64 n).toNat = n := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hn
  refine hoareG_allocN ha hAS halloc (SZ := BitVec.ofNat 64 n)
    (L' := fun Ar m => LP ((ndN, Ar) :: ps) m) (fun s _ _ => ev_cw _ n) ?_ ?_
  · intro s st Ar hL
    exact lp_set ps ndN Ar hps { st with locals := s.locals } hL
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    rw [hSZ] at hs2 ⊢
    refine hoareG_pre (hoareG_ctorStores ha hM hO (L := LP ((ndN, Ar) :: ps)) ⟨hs1, hs2⟩ hs3
      (fun m hm => hm (ndN, Ar) (List.mem_cons_self ..)) xs (fun _ => False) (fun i h => h.elim)
      ?_ (fun i hi => Or.inr (hcov i hi)))
      (fun t _ ⟨hL, hB⟩ => ⟨hL, hB, fun i h => h.elim⟩)
    intro kx hkx
    obtain ⟨h1, x, h2, h3⟩ := hxs kx hkx
    exact ⟨h1, x, h2, fun s hL => h3 s (fun q hq => hL q (List.mem_cons_of_mem _ hq))⟩

/-! ## `node_new_leaf` -/

def lfStores : List (Nat × ExpHOL 64) :=
  [(0, cw 1), (1, cw 0), (2, cw 0), (3, cw 0), (4, lv (nm "nib")), (5, lv (nm "nlen")),
    (6, lv (nm "vptr")), (7, lv (nm "vlen"))]

def lfBody : ProgHOL 64 :=
  .decCall ndN .one (nm "alloc") [cw 64] (storeSeqR ndN lfStores)

def lfPs : List (MlS × ShapeHOL) :=
  [(nm "nib", .one), (nm "nlen", .one), (nm "vptr", .one), (nm "vlen", .one)]

theorem entry_node_new_leaf : fnEntry Guest.Software.guestFn_node_new_leaf =
    (nm "node_new_leaf", lfPs, lfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_leaf : guestCode (nm "node_new_leaf") = some (lfPs, lfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
    entry_node_new_leaf

/-- `node_new_leaf`: no precondition; returns a fresh leaf node. -/
def nlSig : Sig := ⟨[.any, .any, .any, .any], [.fits Types.nodeU], [], true⟩

def LfSp : Nat → BitVec 64 → Prop := fun i x => i = 0 → x = BitVec.ofNat 64 1

/-- What a new leaf's slots hold. -/
def LfSpV (NIB NLEN VP VL : BitVec 64) : Nat → BitVec 64 → Prop := fun i x =>
  (i = 0 → x = BitVec.ofNat 64 1) ∧ (i = 4 → x = NIB) ∧ (i = 5 → x = NLEN) ∧ (i = 6 → x = VP) ∧
    (i = 7 → x = VL)

/-- **`node_new_leaf`**, for a hook family whose leaf invariant follows from the slots and `Pre`. -/
theorem sumSpecA_node_new_leafP {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hwf : ∀ (vs : List (ValueHOL 64)) (s0 : State σ) (Γ0 : Gam), Pre vs s0 Γ0 →
      ∀ NIB NLEN VP VL : BitVec 64,
        vs = [.val (.word NIB), .val (.word NLEN), .val (.word VP), .val (.word VL)] →
      ∀ (Γ' : Gam) (u : State σ) (Ar : BitVec 64) (q : Ptrs), Layout Types.guestC q Γ' → Ext Γ0 Γ' →
        (⟨Ar, Types.tNLEAF, 64⟩ : Obj) ∈ Γ' → Ar.toNat + 64 ≤ heapEnd →
        (∀ i, 8 * i + 8 ≤ 64 → LfSpV NIB NLEN VP VL i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))) →
        H.wf Γ' u ⟨Ar, Types.tNLEAF, 64⟩) :
    SumSpecA σ X Types.guestC H (nm "node_new_leaf") nlSig Pre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
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
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [ps, List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
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
  refine ctor_core ha hM hAS halloc hO (by decide) (ps := ps) ?_ ?_ ?_
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

/-- `node_new_leaf` with a trivial hook on node types. -/
theorem sumSpecA_node_new_leaf {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hM : HooksMono Types.guestC H) (hwf : ∀ Γ (s : State σ) o, o.ty ∈ nodeTys → H.wf Γ s o) :
    SumSpecA σ X Types.guestC H (nm "node_new_leaf") nlSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_node_new_leafP hF hM fun _ _ _ _ _ _ _ _ _ Γ' u _ _ _ _ _ _ _ => hwf Γ' u _ (by simp [nodeTys])

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.sumSpecA_node_new_leaf
