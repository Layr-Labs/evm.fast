import InitECandidate.Solver.Band7.Ch
import InitECandidate.Solver.Band7.Loop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `CH`: calls, loops, return (Band7)
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

section rules
variable {a : Act σ} {L L' L2 L3 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

theorem gc_decCallX (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hcost : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs → ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Mod a sg' cs vs Γ q s st → (∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v) →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → shapeEqHOL (shapeOfHOLExact v) sh = true →
        E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, CH σ (GI a (L1 v) (E1 v)) k (GP a L2 E2 Rv) Bk)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    CH σ (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) (1 + Bf + Bk) := by
  refine ⟨gp_decCallX ha hcs hf hLc hgw hgr hargs hpost hL1 (fun v => (hk v).1) hres, ?_⟩
  refine Band.costP_decCall hcost (fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee =>
    hpreC s Γ q hs hL hh hE vs hvs callee) (hf.and hLc) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
  obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
    (Pre := Pre) (Q := Q) ha hh hcs hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
  obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf hnfp hmd hret
  refine (hk v).2.pre (fun t _ ht => ?_)
  subst ht
  exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext,
    heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl hsh⟩

theorem gc_decCallXA (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hcost : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs → ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Mod a sg' cs vs Γ q s st → (∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v) →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → shapeEqHOL (shapeOfHOLExact v) sh = true →
        ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ ScrOld Γ' Γ'' ∧ E1 v Γ'' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, CH σ (GI a (L1 v) (E1 v)) k (GP a L2 E2 Rv) Bk)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    CH σ (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) (1 + Bf + Bk) := by
  refine ⟨gp_decCallXA ha hcs hf hLc hgw hgr hargs hpost hL1 (fun v => (hk v).1) hres, ?_⟩
  refine Band.costP_decCall hcost (fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee =>
    hpreC s Γ q hs hL hh hE vs hvs callee) (hf.and hLc) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
  obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
    (Pre := Pre) (Q := Q) ha hh hcs hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
  obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hh hext hh' hmo hnf hnfp hmd hret
  obtain ⟨Γ'', hx, hh2, hsc2, hE1'⟩ := hE1 v rfl hsh
  refine (hk v).2.pre (fun t _ ht => ?_)
  subst ht
  exact ⟨hL1 s st v hL hsh, Γ'', q', ext_trans he (ext_trans hext hx),
    heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, scrOld_trans hsc (scrOld_trans hsc' hsc2), hE1'⟩

theorem gc_callX (ha : ActOK a guestCtx) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf : Nat}
    (hcost : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs → ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Mod a sg' cs vs Γ q s st → (∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v) →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    CH σ (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) (1 + Bf + 0) := by
  refine ⟨gp_callX ha hcs hf hLc hgw hgr hargs hpost, ?_⟩
  refine Inv.costP_callD hcost (fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee =>
    hpreC s Γ q hs hL hh hE vs hvs callee)

theorem gc_callXA (ha : ActOK a guestCtx) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf : Nat}
    (hcost : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs → ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Mod a sg' cs vs Γ q s st → (∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v) →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧
        ScrOld Γ' Γ'' ∧ E' Γ'' q' st.memory)) :
    CH σ (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) (1 + Bf + 0) := by
  refine ⟨gp_callXA ha hcs hf hLc hgw hgr hargs hpost, ?_⟩
  refine Inv.costP_callD hcost (fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee =>
    hpreC s Γ q hs hL hh hE vs hvs callee)

theorem gc_while (hH : HooksLawful a.C a.H) {i : MlS} {E0 : ExpHOL 64} {body : ProgHOL 64} {Lx : LocalsH → Prop}
    {B : Nat}
    (hb : CH σ (fun s => GI a L E s ∧ CondTrue s (.cmp .less (.var .local i) E0)) body (GP a L E Rv) B)
    (hexit : ∀ s : State σ, InCtx s guestCtx → GI a L E s → ev s (.cmp .less (.var .local i) E0) = some (.val (.word 0)) →
      GI a Lx E s)
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    CH σ (GI a L E) (.while (.cmp .less (.var .local i) E0) body) (GP a Lx E Rv) ((2 ^ 64 + 1) * (B + 1)) := by
  refine ⟨gp_while hH hb.1 hexit, ?_⟩
  refine Band6.costP_while_inc_less (I := GI a L E) (fun s h => gi_clk hH h) hb.2 ?_ hnc hs
  intro s hs0 hp ht hr
  have := MemSafe.Frames.hoare_of_hoareG hb.1 s hs0 hp ht
  rw [hr] at this
  exact this.1 rfl

/-- A counter loop against a constant limit `c < 2 ^ 63`, entered with the counter `<= c`:
`(c + 1) * (B + 1)` (the memory-safety invariant `L` need not mention the counter). -/
theorem gc_while_const (hH : HooksLawful a.C a.H) {i : MlS} {c : BitVec 64} (hc : c.toNat < 2 ^ 63)
    {body : ProgHOL 64} {Lx : LocalsH → Prop} {B : Nat}
    (hb : CH σ (fun s => GI a L E s ∧ CondTrue s (.cmp .less (.var .local i) (.const c))) body (GP a L E Rv) B)
    (hexit : ∀ s : State σ, InCtx s guestCtx → GI a L E s →
      ev s (.cmp .less (.var .local i) (.const c)) = some (.val (.word 0)) → GI a Lx E s)
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    CH σ (fun s => GI a L E s ∧ ∃ w : BitVec 64, s.locals.lookup i = some (.val (.word w)) ∧
        w.toNat ≤ c.toNat)
      (.while (.cmp .less (.var .local i) (.const c)) body) (GP a Lx E Rv) ((c.toNat + 1) * (B + 1)) := by
  refine ⟨hoareG_pre (gp_while hH hb.1 hexit) (fun s _ h => h.1), ?_⟩
  refine costP_while_inc_const (I := GI a L E) hc (fun s h => gi_clk hH h) hb.2 ?_ hnc hs
  intro s hs0 hp ht hr
  have := MemSafe.Frames.hoare_of_hoareG hb.1 s hs0 hp ht
  rw [hr] at this
  exact this.1 rfl

end rules

end InitECandidate.Solver.Band7
