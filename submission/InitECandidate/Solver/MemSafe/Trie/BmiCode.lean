import InitECandidate.Solver.MemSafe.Trie.CsrFinal
import InitECandidate.Solver.MemSafe.Trie.Ghost

/-!
# `build_mpt_indexed`: the code, and calls whose continuation ends in any post

```
fun 1 build_mpt_indexed(1 slice_arr, 1 n, 1 out) {
  var 1 mark = heap_mark();
  var 1 m = mpt_new(0, 0);
  var i = 0;
  while i <+ n {
    var 1 klen = rlp_encode_word(mpt_key_scratch, i);
    mpt_set(m, mpt_key_scratch, klen, SLICE_PTR(slice_arr, i), SLICE_LEN(slice_arr, i));
    i = i + 1;
  }
  mpt_root(m, out);
  heap_release(mark);
  return 0;
}
```
The kit's `GP` asks for `Heap` (so `G`) on every exit, which the state after `heap_release` does not have at this stage: the
typed `.ptr` globals are not protected, so `Globs` at the small typing is only known at the end. **`gq_dec`, `gq_decCallX`**: `gp_dec`,
`gp_decCallX` with a continuation ending in any post `Qt` that does not read locals and holds of every `Heap` state.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

def bmiEl : ExpHOL 64 := .op .add [lv (nm "slice_arr"), .panop .mul [lv (nm "i"), cw 16]]
def bmiEl8 : ExpHOL 64 := .op .add [lv (nm "slice_arr"), .panop .mul [lv (nm "i"), cw 16], cw 8]

def bmiSetArgs : List (ExpHOL 64) :=
  [lv (nm "m"), gv (nm "mpt_key_scratch"), lv (nm "klen"), .load .one bmiEl, .load .one bmiEl8]

def bmiLoopBody : ProgHOL 64 :=
  .decCall (nm "klen") .one (nm "rlp_encode_word") [gv (nm "mpt_key_scratch"), lv (nm "i")]
    (.seq (.call (some (none, none)) (nm "mpt_set") bmiSetArgs)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def bmiLoop : ProgHOL 64 := .while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) bmiLoopBody

def bmiRoot : ProgHOL 64 := .call (some (none, none)) (nm "mpt_root") [lv (nm "m"), lv (nm "out")]

def bmiTail : ProgHOL 64 :=
  .seq (.call (some (none, none)) (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))

def bmiK3 : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq bmiLoop (.seq bmiRoot bmiTail))

def bmiK2 : ProgHOL 64 := .decCall (nm "m") .one (nm "mpt_new") [cw 0, cw 0] bmiK3

def bmiBody : ProgHOL 64 := .decCall (nm "mark") .one (nm "heap_mark") [] bmiK2

theorem entry_bmi : fnEntry Guest.Software.guestFn_build_mpt_indexed =
    (nm "build_mpt_indexed", [(nm "slice_arr", .one), (nm "n", .one), (nm "out", .one)], bmiBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bmi : guestCode (nm "build_mpt_indexed") =
    some ([(nm "slice_arr", .one), (nm "n", .one), (nm "out", .one)], bmiBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 292) (by decide)) ⟨_, rfl⟩ entry_bmi

section gq
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}

/-- `.dec` with a continuation ending in any post that ignores locals. -/
theorem gq_dec (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {L1 : LocalsH → Prop} {Qt : Option (PanSemResultExact 64) → State σ → Prop}
    (hQt : ∀ r (t : State σ) l, Qt r t → Qt r { t with locals := l })
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → L1 (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (GI a L1 E) body Qt) :
    HoareG σ X (GI a L E) (.dec x sh e body) Qt := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQt r t _ hq)
  subst ht
  exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩

/-- `gp_decCallX` with a continuation ending in any post that ignores locals and holds on `Heap`. -/
theorem gq_decCallX (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {Qt : Option (PanSemResultExact 64) → State σ → Prop}
    (hQt : ∀ r (t : State σ) l, Qt r t → Qt r { t with locals := l })
    (hQh : ∀ r' (t : State σ), (¬ Abortive r' → ∃ Γ q, Heap a Γ q t) → Qt (some r') t)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Mod a sg' cs vs Γ q s st → RetOK Γ' q q' vs sg'.ret v →
      ScrOld Γ Γ' ∧ (shapeEqHOL (shapeOfHOLExact v) sh = true → E1 v Γ' q' st.memory))
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) k Qt) :
    HoareG σ X (GI a L E) (.decCall rn sh f args k) Qt := by
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
      (Pre := Pre) (Q := Q) ha hh hcs hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf hnfp hmd
      (hret v rfl)
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => hQt r t _ hq)
    subst ht
    exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 hsh⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine hQh r _ fun hna => ?_
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', -, hh', -⟩ := heap_callGX
      (Pre := Pre) (Q := Q) ha hh hcs hR (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    exact ⟨Γ', q', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

end gq

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.code_bmi
#print axioms InitECandidate.Solver.MemSafe.Trie.gq_dec
#print axioms InitECandidate.Solver.MemSafe.Trie.gq_decCallX
