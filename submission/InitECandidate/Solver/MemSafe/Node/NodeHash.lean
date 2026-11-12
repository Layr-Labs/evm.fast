import InitECandidate.Solver.MemSafe.MptH.NodeRef
import InitECandidate.Solver.MemSafe.WaveHelpers.Keccak

set_option autoImplicit false

/-!
# `node_hash_cached`: the summary at `[fits nodeU]`

```
fun 1 node_hash_cached(1 node) {
  var cached = lds 1 (node + 24);
  if cached != 0 { return cached; }
  if (lds 1 (node + 8)) == 0 { mpt_fail(13); }
  var 1 h = alloc(32);
  keccak256(lds 1 (node + 8), lds 1 (node + 16), h);
  st node + 24, h;
  return h; }
```

`nhcSig = ⟨[fits nodeU], [], [], false⟩`, `Pre = True`, `PW = False`, `Q = True`; the `CSumm … nhcSig []`
form is `csumm_node_hash_cached`. The only write to checked memory is the scalar cache cell `node + 24`
(a `WCell`); the hash buffer `h` is a fresh `alloc` block (unallocated at entry) filled by `keccak256`.
Hypotheses: `mpt_fail` (never returns) and the fold's `keccak256` at `[any, any, buf 32]`.
Nothing is assumed about the node: a null `node` makes the load `node + 24` leave the memory
domain (`NullSafe`), so it is not a good run.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-! ## Generic rules (in the block / `Heap` style of `MptH.Common`) -/

/-- `return e` ends with `RN`. -/
theorem hoareG_retRN {a : Act σ} (ha : ActOK a X) (L : LocalsH → Prop) (e : ExpHOL 64) :
    HoareG σ X (PreH a L) (.return e) (RN a) :=
  hoareG_return fun t _ ⟨_, hh'⟩ v _ => ⟨by simp, hqa_of_hha (t := emptyLocalsHOLFinite t)
    (hha_congr (s := t) ha.hH rfl rfl rfl rfl hh') _⟩

/-- `return e` inside the block scope. -/
theorem hoareG_retBlk {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {Ar : BitVec 64} {n : Nat}
    (e : ExpHOL 64) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) (.return e) (RN a) :=
  hoareG_return fun t _ ⟨_, hB⟩ v _ => ⟨by simp, hqa_of_hha (t := emptyLocalsHOLFinite t)
    (hha_congr (s := t) ha.hH rfl rfl rfl rfl (hha_of_blkH hB)) _⟩

/-- `hoareG_callBlk` with the arguments' evaluation as a hypothesis (the load arguments of a
call need not be shown to evaluate: a non-evaluating call is not a good run). -/
theorem hoareG_callBlk' {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {L : LocalsH → Prop} {Ar : BitVec 64} {n : Nat}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → BlkH a Ar n s → ∀ vs, evs s args = some vs →
      (∀ Γ q, BlkF Ar n Γ q → ArgsOK a.Cb Γ q sg'.params vs) ∧
      (∀ x, ArgCells sg'.params vs x → Overlap Ar.toNat n x)) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) (.call (some (none, none)) f args)
      (BQ a L Ar n) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL ⟨Γ, p, he, hh, hB, hn⟩ vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_call ha hh hR (by simp [Good])
      (by simp [Abortive]) (hA Γ p hB)
      (fun x hx => Or.inr (Or.inr (Or.inl (hn x (hF x hx))))) hgw hgr
    refine ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL ⟨Γ, p, he, hh, hB, hn⟩ vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna (hA Γ p hB)
      (fun x hx => Or.inr (Or.inr (Or.inl (hn x (hF x hx))))) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- **A one-word store into a `scalar` cell of the current `Γ`, inside the block scope.** The cell's
address is known to lie in the memory domain (so `≥ heapBase`). -/
theorem hoareG_stwBlk {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {Ar : BitVec 64} {n : Nat}
    {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ q, Ext a.Γ0 Γ → Heap a Γ q s →
      ∀ w, ev s ea = some (.val (.word w)) → heapBase ≤ w.toNat → w.toNat % 8 = 0 →
        SCell a.Cb Γ w)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (fun s => L s.locals ∧ BlkH a Ar n s) (.store ea ev') (BQ a L Ar n) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx⟩ := hval s hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have hdom' : s.memaddrs w := hdom
  have hc := haddr s hs hL Γ p he hh w hw (ns_of ha hs w hdom') (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc, hB, hn⟩,
    fun r' h => absurd h (by simp)⟩

/-! ## The node cache cell -/

/-- The four node types. -/
theorem node_ty_cases {t : Nat} (h : t ∈ [Types.tNHASHED, Types.tNLEAF, Types.tNEXT, Types.tNBRANCH]) :
    t = Types.tNHASHED ∨ t = Types.tNLEAF ∨ t = Types.tNEXT ∨ t = Types.tNBRANCH := by
  simpa using h

/-- `node + 24` is a `scalar` cell of the current `Γ`, when `node` fits `nodeU` in `Γ0` and is not
null. -/
theorem scell_node24 {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) (he : Ext a.Γ0 Γ) (hcb : a.Cb = Types.guestC) {N : BitVec 64}
    (hfit : Fits a.Γ0 Types.nodeU N) (hnn : nullMax ≤ N.toNat) :
    SCell a.Cb Γ (N + BitVec.ofNat 64 24) := by
  have hfit' : ∃ o ∈ a.Γ0, o.base = N ∧ o.ty ∈ [Types.tNHASHED, Types.tNLEAF, Types.tNEXT,
      Types.tNBRANCH] := by
    rcases hfit with h | h
    · omega
    · exact h
  obtain ⟨o, ho, hb, hty⟩ := hfit'
  obtain ⟨o', ho', hb', ht', hsz⟩ := he o ho
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hmin := (hL.1 o' ho').2.2.2.1
  have hcC : a.C = upg a.Cb a.caps := ha.hupg
  have hmin' : (a.Cb.ty o'.ty).minSz ≤ o'.size := by rw [hcC] at hmin; exact hmin
  rw [hcb] at hmin'
  rw [ht'] at hmin'
  have hcell : N + BitVec.ofNat 64 24 = o'.cell 3 := by
    show N + BitVec.ofNat 64 24 = o'.base + BitVec.ofNat 64 (8 * 3)
    rw [hb', hb]
  have hslot : (Types.guestC.ty o'.ty).slot 3 = .scalar ∧ 32 ≤ o'.size := by
    rw [ht']
    rcases node_ty_cases hty with h | h | h | h <;> rw [h] at hmin' ⊢ <;>
      simp only [Types.ty_NHASHED, Types.ty_NLEAF, Types.ty_NEXT, Types.ty_NBRANCH] at hmin' ⊢ <;>
      refine ⟨by first | rfl | decide, ?_⟩ <;>
      first
        | (simp only [Types.nhashedTy] at hmin'; omega)
        | (simp only [Types.nleafTy] at hmin'; omega)
        | (simp only [Types.nextTy] at hmin'; omega)
        | (simp only [Types.nbranchTy] at hmin'; omega)
  exact ⟨o', ho', 3, by unfold Obj.HasSlot; omega, by rw [hcb]; exact hslot.1, hcell⟩

/-! ## Code -/

def hN : MlS := nm "node"
def hCa : MlS := nm "cached"
def hHh : MlS := nm "h"

def nhLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv hN, cw k])

def nhcBody : ProgHOL 64 :=
  .dec hCa .one (nhLd 24)
    (.seq (.ite (.cmp .notEqual (lv hCa) (cw 0)) (.return (lv hCa)) .skip)
      (.seq (.ite (.cmp .equal (nhLd 8) (cw 0)) (callD (nm "mpt_fail") [cw 13]) .skip)
        (.decCall hHh .one (nm "alloc") [cw 32]
          (.seq (callD (nm "keccak256") [nhLd 8, nhLd 16, lv hHh])
            (.seq (.store (.op .add [lv hN, cw 24]) (lv hHh)) (.return (lv hHh)))))))

def nhcPs : List (MlS × ShapeHOL) := [(hN, .one)]

theorem entry_node_hash_cached : fnEntry Guest.Software.guestFn_node_hash_cached =
    (nm "node_hash_cached", nhcPs, nhcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_hash_cached :
    guestCode (nm "node_hash_cached") = some (nhcPs, nhcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 288) (by decide)) ⟨_, rfl⟩
    entry_node_hash_cached

def NH1 (N : BitVec 64) (m : LocalsH) : Prop := m.lookup hN = some (.val (.word N))
def NH2 (N : BitVec 64) (m : LocalsH) : Prop :=
  NH1 N m ∧ ∃ V : ValueHOL 64, m.lookup hCa = some V
def NH3 (N Ar : BitVec 64) (m : LocalsH) : Prop :=
  NH2 N m ∧ m.lookup hHh = some (.val (.word Ar))

theorem sumSpecA_node_hash_cached {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hMF : CSumm σ X Types.guestC H (nm "mpt_fail") Integ.sgMF [])
    (hK : CSumm σ X Types.guestC H (nm "keccak256") (sigKeccak 32 false) []) :
    SumSpecA σ X Types.guestC H (nm "node_hash_cached") nhcSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Nv, rfl, hsN, hln⟩ := lookupCode_one code_node_hash_cached hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsN
  set a := actOf Types.guestC H nhcSig [] [.val (.word N)] s0 Γ0 p0 with hadef
  have hcb : a.Cb = Types.guestC := rfl
  have hfit0 : Fits a.Γ0 Types.nodeU N := by
    obtain ⟨w, hw, hf⟩ := ha.hargs0.2 0 (.fits Types.nodeU) (.val (.word N)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hf
  refine hoareG_conseq (P := PreH a (NH1 N)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨by rw [hloc]; exact hln, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [nhcSig] at hrt⟩
  unfold nhcBody
  -- 1. `var cached = lds 1 (node + 24)`
  refine hoareG_decH ha.hH (L' := NH2 N) ?_ ?_
  · intro s hs hL v hv
    exact ⟨by unfold NH1 at hL ⊢; rw [lk_set_ne _ _ (by decide)]; exact hL, _, lk_set_self _ _ _⟩
  -- 2. `if cached != 0 { return cached; }`
  refine hoareG_retGuardH (L := NH2 N) (L' := NH2 N) ?_ ?_ (fun s hL _ => hL)
  · exact hoareG_pre (hoareG_retRN ha _ _) (fun _ _ h => h.1)
  -- 3. `if (lds 1 (node + 8)) == 0 { mpt_fail(13); }`
  refine hoareG_seqSP (L := NH2 N) hqa_of_abn (Integ.hoareG_guardSP ha hMF) ?_
  -- 4. `var 1 h = alloc(32); …`
  refine hoareG_conseq (P := PreH a (NH2 N)) (Q := RN a) ?_ (fun _ _ h => h)
    (fun r t _ _ h => h.2)
  refine hoareG_allocB ha halloc (SZ := BitVec.ofNat 64 32) (L' := fun Ar m => NH3 N Ar m)
    (fun s _ _ => ev_cw _ 32) ?_ ?_
  · intro s st Ar hL
    obtain ⟨h1, C, h2⟩ := hL
    refine ⟨⟨?_, C, ?_⟩, lk_set_self _ _ _⟩
    · unfold NH1 at h1 ⊢; rw [lk_set_ne _ _ (by decide)]; exact h1
    · rw [lk_set_ne _ _ (by decide)]; exact h2
  · intro Ar hArn
    have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
    refine hoareG_seqB (L := NH3 N Ar) (Ar := Ar) (n := (BitVec.ofNat 64 32).toNat) rn_of_abn ?_ ?_
    · -- `keccak256(lds 1 (node + 8), lds 1 (node + 16), h)`
      refine hoareG_callBlk' ha hK (by simp [sigKeccak]) (by simp [sigKeccak]) (L := NH3 N Ar) ?_
      intro s _ hL ⟨Γ, q, he, hh', hB, hn⟩ vs hvs
      obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
      obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
      obtain ⟨v3, vs3, rfl, e3, q3⟩ := evs_cons_inv q2
      have hv3 : v3 = .val (.word Ar) := Option.some.inj (e3.symm.trans (ev_lw hL.2))
      have hvs3 : vs3 = [] := Option.some.inj (q3.symm.trans evs_nil)
      subst hv3 hvs3
      refine ⟨fun Γ' q' hB' => ⟨rfl, fun i pt v hpt hv => ?_⟩, fun x hx => ?_⟩
      · rcases i with _ | _ | _ | i <;> simp [sigKeccak] at hpt hv <;> subst hpt <;> subst hv
        · trivial
        · trivial
        · exact ⟨Ar, rfl, bufOK_blk hB' le_rfl (by omega)⟩
      · obtain ⟨i, w, hw, h⟩ := hx
        rcases h with ⟨m, hn', hov⟩ | ⟨j, c, d, z, hj, hz, ho⟩
        · rcases i with _ | _ | _ | i <;> simp [sigKeccak] at hn'
          obtain rfl := hn'
          simp [argW, wordOf] at hw
          subst hw
          exact hov
        · rcases i with _ | _ | _ | i <;> simp [sigKeccak] at hj
    · -- `st node + 24, h; return h`
      refine hoareG_seqB (L := NH3 N Ar) (Ar := Ar) (n := (BitVec.ofNat 64 32).toNat) rn_of_abn ?_
        (hoareG_retBlk ha _)
      refine hoareG_stwBlk ha (L := NH3 N Ar) ?_ ?_
      · intro s hs hL Γ q he hh' w hw hdb hal
        rw [ev_add2 (ev_lw hL.1.1) (ev_cw _ 24)] at hw
        cases hw
        refine scell_node24 ha hh' he hcb hfit0 ?_
        by_contra hlt
        have hlt' : N.toNat < nullMax := by omega
        have hw24 : (N + BitVec.ofNat 64 24).toNat = N.toNat + 24 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 24) (by omega),
            Nat.mod_eq_of_lt]
          unfold nullMax at hlt'
          omega
        rw [hw24] at hdb
        unfold nullMax heapBase at *
        omega
      · intro s hL v hv
        rw [ev_lw hL.2] at hv
        cases hv
        exact ⟨HolWordLab.word Ar, by simp [flattenHOL]⟩

/-- **`node_hash_cached`'s `CSumm` at `[fits nodeU]`** (the form `MptH.sumSpec_node_write_ref` assumes). -/
theorem csumm_node_hash_cached {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hMF : CSumm σ X Types.guestC H (nm "mpt_fail") Integ.sgMF [])
    (hK : CSumm σ X Types.guestC H (nm "keccak256") (sigKeccak 32 false) []) :
    CSumm σ X Types.guestC H (nm "node_hash_cached") nhcSig [] :=
  csumm_of_summA (sumSpecA_node_hash_cached hF hMF hK)

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.sumSpecA_node_hash_cached
#print axioms InitECandidate.Solver.MemSafe.Node.csumm_node_hash_cached
