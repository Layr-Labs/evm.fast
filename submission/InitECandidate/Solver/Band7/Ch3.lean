import InitECandidate.Solver.Band7.Ch2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `CH`: table callees and the derived rules (Band7)
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

theorem gc_decCallT (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {Bf Bk : Nat}
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
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn)))
    (hcost : CalleeCost σ guestCtx f Bf := by exact cc_tb (by rfl)) :
    CH σ (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) (1 + Bf + Bk) :=
  gc_decCallX ha hcs hf hLc hgw hgr (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial) hargs hpost hL1 hk hres

theorem gc_decCallTA (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {Bf Bk : Nat}
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
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn)))
    (hcost : CalleeCost σ guestCtx f Bf := by exact cc_tb (by rfl)) :
    CH σ (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) (1 + Bf + Bk) :=
  gc_decCallXA ha hcs hf hLc hgw hgr (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial) hargs hpost hL1 hk hres

theorem gc_decCallM (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64} {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
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
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn)))
    (hcost : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hmap : ∀ vs (s : State σ) Γ, Pre vs s Γ → PreC vs s) :
    CH σ (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) (1 + Bf + Bk) :=
  gc_decCallX ha hcs hf hLc hgw hgr hcost
    (fun s Γ q hs hL hh hE vs hvs callee => hmap _ _ Γ ((hargs s Γ q hs hL hh hE vs hvs).2.2 callee))
    hargs hpost hL1 hk hres

theorem gc_ret {e : ExpHOL 64} (hH : HooksLawful a.C a.H)
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Ext a.Γ0 Γ →
      Heap a Γ q s → E Γ q s.memory → ∀ v, ev s e = some v → Rv Γ q s.memory v) :
    CH σ (GI a L E) (.return e) (GP a L2 E2 Rv) 0 :=
  ⟨gp_ret hH h, Inv.costP_of_cost (cost_return _)⟩

theorem gc_callT (ha : ActOK a guestCtx) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Bf : Nat}
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
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory))
    (hcost : CalleeCost σ guestCtx f Bf := by exact cc_tb (by rfl)) :
    CH σ (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) (1 + Bf + 0) :=
  gc_callX ha hcs hf hLc hgw hgr (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial) hargs hpost

theorem gc_callTA (ha : ActOK a guestCtx) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Bf : Nat}
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
        ScrOld Γ' Γ'' ∧ E' Γ'' q' st.memory))
    (hcost : CalleeCost σ guestCtx f Bf := by exact cc_tb (by rfl)) :
    CH σ (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) (1 + Bf + 0) :=
  gc_callXA ha hcs hf hLc hgw hgr (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hcost)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial) hargs hpost

/-- The cost of a call statement to a table callee. -/
theorem ch_of_hoare_T {f : MlS} {args : List (ExpHOL 64)} {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {Bf : Nat}
    (h : HoareG σ guestCtx P (.call (some (none, none)) f args) Q)
    (hcost : CalleeCost σ guestCtx f Bf := by exact cc_tb (by rfl)) :
    CH σ P (.call (some (none, none)) f args) Q (1 + Bf + 0) :=
  ⟨h, Inv.costP_of_cost (cost_call hcost (by intro _ _ _ _ h; cases h))⟩

end rules

end InitECandidate.Solver.Band7
