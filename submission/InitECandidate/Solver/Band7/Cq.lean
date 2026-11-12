import InitECandidate.Solver.MemSafe.Trie.BmiFinal
import InitECandidate.Solver.Band2.Incorporate

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

/-!
# Cost rules under the activation invariant `GI` (Band7)

The cost analogues of `gq_dec` / `gq_decCallX` (`MemSafe/Trie/BmiCode.lean`): the same hypotheses of the memory
walk, plus the callee's cost entry and its precondition at the call; the continuation is a `CostP` under
the invariant the memory walk gives it.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type} {X : Ctx 64}

section cq
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}

theorem gi_clk (hH : HooksLawful a.C a.H) {s : State σ} (h : GI a L E s) : GI a L E (decClockHOLFinite s) := by
  obtain ⟨hL, Γ, q, he, hh, hsc, hE⟩ := h
  exact ⟨hL, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩

theorem cq_dec (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {L1 : LocalsH → Prop} {B : Nat}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → L1 (setVarHOLFinite x v s).locals)
    (hk : Inv.CostP σ X (GI a L1 E) body B) :
    Inv.CostP σ X (GI a L E) (.dec x sh e body) B := by
  refine Inv.costP_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  refine hk.pre (fun t _ ht => ?_)
  subst ht
  exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩

theorem cq_decCallX (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hcost : Inv.CalleeCostP σ X f PreC Bf)
    (hpreC : ∀ s : State σ, InCtx s X → GI a L E s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
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
    (hk : ∀ v, Inv.CostP σ X (GI a (L1 v) (E1 v)) k Bk) :
    Inv.CostP σ X (GI a L E) (.decCall rn sh f args k) (1 + Bf + Bk) := by
  refine Band.costP_decCall hcost hpreC (hf.and hLc) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
  obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
    (Pre := Pre) (Q := Q) ha hh hcs hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
  obtain ⟨hsc', hE1⟩ := hpost s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf hnfp hmd
    (hret v rfl)
  refine (hk v).pre (fun t _ ht => ?_)
  subst ht
  exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext,
    heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 hsh⟩

end cq

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.cq_decCallX
