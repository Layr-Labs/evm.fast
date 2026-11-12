import InitECandidate.Solver.Wit.Op
import InitECandidate.Solver.Band.Rules
import InitECandidate.Solver.MemSafe.Rec.WireR

/-!
# Band3 core: threading `G` through a conditional-cost body (sonnet-store)

* **`costP_decCall_S`**: `var rn = f(args); k` where `f` has a frozen summary (`SumSpecA`, as every
  `tab26` entry has via `CSumm`) and a cost entry (all-states or conditional). The state predicate
  is `PGt Aux`: `G` for some `Γ`, the allocator pointers, and a fact `Aux` on the locals, `Γ`
  and `p` that survives a summary step (`Ext`, `NewFresh`, `Mono`).
* **`costP_callD_S`**: the same for `f(args);` (result discarded).
* **`cost_guest_of_costA`**: the analyzer (`costA`) at the guest table, for the all-states
  suffix after the last conditional call.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

abbrev Lcs := HolFiniteMapExact MlS (ValueHOL 64)

/-- The thread invariant: `G` at some `Γ`, the allocator pointers, and a fact on locals/`Γ`/`p`. -/
def PGt (C : Cfg) (H : Hooks σ) (Aux : State σ → Gam → Ptrs → Prop) (s : State σ) : Prop :=
  ∃ Γ p, G C H Γ s ∧ ptrsOf s = some p ∧ Aux s Γ p

/-- What a summary step does to the typing: ordered pointers, monotone, extended typing. -/
def Stp (Γ Γ' : Gam) (p p' : Ptrs) : Prop :=
  p.Ordered ∧ p'.Ordered ∧ p.Mono p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p'

theorem stp_of_core {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hG : G C H Γ s) (h : SumCore C H sg PW Γ s vs r t Γ' p p') : Stp Γ Γ' p p' := by
  obtain ⟨q, hq, hord, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans h.1)
  obtain ⟨q', hq', hord', -⟩ := h.2.2.2.2.2.1
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans h.2.1)
  exact ⟨hord, hord', h.2.2.1, h.2.2.2.1, h.2.2.2.2.1⟩

theorem stp_of_core_s {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig}
    {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s : State σ} {callee : Lcs}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ} {p p' : Ptrs}
    (hG : G C H Γ s) (h : SumCore C H sg PW Γ (callEntryStateHOLFinite s callee) vs r t Γ' p p') :
    Stp Γ Γ' p p' :=
  stp_of_core ((Frames.G_locFree hH s _ _).mpr hG) h

theorem evs_lv1 {s : State σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) {vs : List (ValueHOL 64)}
    (hvs : evs s [lv x] = some vs) : vs = [.val (.word w)] := by
  have : evs s [lv x] = some [.val (.word w)] := evs_cons (by rw [ev_lv]; exact h) evs_nil
  rw [this] at hvs; exact (Option.some.inj hvs).symm

theorem lk_sv {rn x : MlS} (h : rn ≠ x) (v : ValueHOL 64) (st : State σ) (l : Lcs) :
    (setVarHOLFinite rn v { st with locals := l }).locals.lookup x = l.lookup x :=
  lk_set_ne { st with locals := l } v h

theorem not_abortive_ret' (v : ValueHOL 64) : ¬ Abortive (.returned v) := by simp [Abortive]

section rules
variable {C : Cfg} {H : Hooks σ}

/-- **`var rn = f(args); k`** with a summary for `f`: the thread invariant carries over. -/
theorem costP_decCall_S (hH : HooksLawful C H) {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ X C H f sg Pre PW Q)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ X f PreC Bf)
    (hpreC : ∀ s, InCtx s X → PGt C H Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ s, InCtx s X → ∀ Γ p, G C H Γ s → ptrsOf s = some p → Aux s Γ p →
      ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK C Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64), shapeEqHOL (shapeOfHOLExact v) sh = true →
      G C H Γ s → Aux s Γ p → evs s args = some vs → ArgsOK C Γ p sg.params vs →
      SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      Aux' (setVarHOLFinite rn v { st with locals := s.locals }) Γ' p')
    (hk : Inv.CostP σ X (PGt C H Aux') k Bk) :
    Inv.CostP σ X (PGt C H Aux) (.decCall rn sh f args k) (1 + Bf + Bk) := by
  refine Band.costP_decCall hf hpreC hs ?_
  intro s hs0 hP vs hvs callee v st hR hst hsh
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G C H Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G C H Γ' st := hcore.2.2.2.2.2.1
  refine hk.pre (fun t _ ht => ?_)
  subst ht
  refine ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, ?_⟩
  exact hAux s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq

/-- **`f(args); k`** (result discarded) with a summary for `f`. -/
theorem costP_seq_callD_S (hH : HooksLawful C H) {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ X C H f sg Pre PW Q)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ X f PreC Bf)
    (hpreC : ∀ s, InCtx s X → PGt C H Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ s, InCtx s X → ∀ Γ p, G C H Γ s → ptrsOf s = some p → Aux s Γ p →
      ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK C Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64),
      G C H Γ s → Aux s Γ p → evs s args = some vs → ArgsOK C Γ p sg.params vs →
      SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      Aux' { st with locals := s.locals } Γ' p')
    (hk : Inv.CostP σ X (PGt C H Aux') k Bk) :
    Inv.CostP σ X (PGt C H Aux) (.seq (.call (some (none, none)) f args) k) (1 + Bf + 0 + Bk) := by
  refine Inv.costP_seq (R := PGt C H Aux') (Inv.costP_callD hf hpreC) ?_ hk
  refine hoare_callD hs ?_
  intro s hs0 hP vs hvs callee v st hR hst hr
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G C H Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G C H Γ' st := hcore.2.2.2.2.2.1
  exact ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, hAux s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq⟩

/-- **`x = f(args); k`** (assignment to an existing local) with a summary for `f`. -/
theorem costP_seq_callA_S (hH : HooksLawful C H) {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {x f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ X C H f sg Pre PW Q)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ X f PreC Bf)
    (hpreC : ∀ s, InCtx s X → PGt C H Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ s, InCtx s X → ∀ Γ p, G C H Γ s → ptrsOf s = some p → Aux s Γ p →
      ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK C Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64),
      G C H Γ s → Aux s Γ p → evs s args = some vs → ArgsOK C Γ p sg.params vs →
      SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      Aux' (setKvarHOLFinite .local x v { st with locals := s.locals }) Γ' p')
    (hk : Inv.CostP σ X (PGt C H Aux') k Bk) :
    Inv.CostP σ X (PGt C H Aux) (.seq (.call (some (some (.local, x), none)) f args) k)
      (1 + Bf + 0 + Bk) := by
  refine Inv.costP_seq (R := PGt C H Aux')
    (Inv.costP_call hf hpreC (by intro _ _ _ _ h; cases h)) ?_ hk
  refine hoare_callA hs ?_
  intro s hs0 hP vs hvs callee v st hR hst hvalid
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G C H Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G C H Γ' st := hcore.2.2.2.2.2.1
  intro _
  exact ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, hAux s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq⟩

/-- **`f(args);` as a statement** (cost side): the thread invariant carries over (Hoare side:
`hoare_callD_S`). -/
theorem costP_callD_S {Aux : State σ → Gam → Ptrs → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf : Nat}
    (hf : Inv.CalleeCostP σ X f PreC Bf)
    (hpreC : ∀ s, InCtx s X → PGt C H Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee)) :
    Inv.CostP σ X (PGt C H Aux) (.call (some (none, none)) f args) (1 + Bf + 0) :=
  Inv.costP_callD hf hpreC

/-- **`f(args);` as a statement** (Hoare side). -/
theorem hoare_callD_S (hH : HooksLawful C H) {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ X C H f sg Pre PW Q)
    (hargs : ∀ s, InCtx s X → ∀ Γ p, G C H Γ s → ptrsOf s = some p → Aux s Γ p →
      ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK C Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64),
      G C H Γ s → Aux s Γ p → evs s args = some vs → ArgsOK C Γ p sg.params vs →
      SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      Aux' { st with locals := s.locals } Γ' p') :
    Hoare σ X (PGt C H Aux) (.call (some (none, none)) f args)
      (fun r t => r = none → PGt C H Aux' t) := by
  refine hoare_callD hs ?_
  intro s hs0 hP vs hvs callee v st hR hst hr
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G C H Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G C H Γ' st := hcore.2.2.2.2.2.1
  exact ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, hAux s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq⟩

/-- `if c { a } else { b }; k` with both branches keeping the thread invariant. -/
theorem costP_seq_ite_S {Aux Aux' : State σ → Gam → Ptrs → Prop} {c : ExpHOL 64}
    {a b k : ProgHOL 64} {Ba Bb Bk : Nat}
    (ha : Inv.CostP σ X (PGt C H Aux) a Ba) (hb : Inv.CostP σ X (PGt C H Aux) b Bb)
    (hha : Hoare σ X (PGt C H Aux) a (fun r t => r = none → PGt C H Aux' t))
    (hhb : Hoare σ X (PGt C H Aux) b (fun r t => r = none → PGt C H Aux' t))
    (hk : Inv.CostP σ X (PGt C H Aux') k Bk) :
    Inv.CostP σ X (PGt C H Aux) (.seq (.ite c a b) k) (max Ba Bb + Bk) :=
  Inv.costP_seq (R := PGt C H Aux')
    (Inv.costP_ite (ha.pre fun _ _ h => h.1) (hb.pre fun _ _ h => h.1))
    (Spec.hoare_ite (hoare_pre hha fun _ _ h => h.1) (hoare_pre hhb fun _ _ h => h.1)) hk

/-- `var n = e; k` (a plain declaration). -/
theorem costP_dec_G (hH : HooksLawful C H) {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64} {B : Nat}
    (hAux : ∀ s, InCtx s X → ∀ Γ p, G C H Γ s → ptrsOf s = some p → Aux s Γ p →
      ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
        Aux' (setVarHOLFinite n v s) Γ p)
    (hk : Inv.CostP σ X (PGt C H Aux') k B) :
    Inv.CostP σ X (PGt C H Aux) (.dec n sh e k) B := by
  refine Inv.costP_dec fun s hs hP v hv hsh => ?_
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  refine hk.pre fun t _ ht => ?_
  subst ht
  exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
    hAux s hs Γ p hG hp hA v hv hsh⟩

/-- `if c { return e }; k`: the guard costs nothing and the state predicate carries over. -/
theorem costP_guard {P : State σ → Prop} {c e : ExpHOL 64} {k : ProgHOL 64} {Bk : Nat}
    (hk : Inv.CostP σ X P k Bk) :
    Inv.CostP σ X P (.seq (.ite c (.return e) .skip) k) (max 0 0 + Bk) :=
  Inv.costP_seq (R := P) (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip))
    (Spec.hoare_ite (Spec.hoare_return fun _ _ _ _ _ h => by cases h)
      (Spec.hoare_skip fun t _ ht _ => ht.1)) hk

/-- Arguments of an all-`.any` signature: only the arity matters. -/
theorem hargs_any {sg : Sig} (hps : ∀ pt ∈ sg.params, pt = .any) {args : List (ExpHOL 64)}
    (hl : sg.params.length = args.length) {s : State σ} {vs : List (ValueHOL 64)}
    (hvs : evs s args = some vs) {Γ : Gam} {p : Ptrs} : ArgsOK C Γ p sg.params vs :=
  Frames.argsOK_any hps (by rw [WaveHelpers.evs_length hvs, hl])

/-- A buffer-pointer local `x` that stays a `BufOK` buffer of `n` bytes. -/
def AuxA (x : MlS) (n : Nat) (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  ∃ A : BitVec 64, s.locals.lookup x = some (.val (.word A)) ∧ BufOK Types.guestC Γ p A.toNat n

theorem auxA_step {x : MlS} {n : Nat} {s s' : State σ} {Γ Γ' : Gam} {p p' : Ptrs}
    (h : AuxA x n s Γ p) (hs : Stp Γ Γ' p p') (hl : s'.locals.lookup x = s.locals.lookup x) :
    AuxA x n s' Γ' p' := by
  obtain ⟨A, hA, hb⟩ := h
  exact ⟨A, by rw [hl]; exact hA, Frames.bufOK_stepX hs.1 hs.2.1 hs.2.2.1 hs.2.2.2.1 hs.2.2.2.2 hb⟩

theorem reqOK_anyG {cs : List Cap} (h : ∀ c ∈ cs, c.g = anyG) {s : State σ} {Γ : Gam} :
    ReqOK cs s Γ := fun c hc hne => absurd (h c hc) hne

theorem reqOK_nil {s : State σ} {Γ : Gam} : ReqOK [] s Γ := fun c hc => absurd hc (by simp)

end rules

/-- The analyzer at the guest table: the all-states suffix after the last conditional call. -/
theorem cost_guest_of_costA {p : ProgHOL 64} {N : Nat}
    (h : (match costA (fun g => Shards.finalState.1.lookup g)
      (fun g => Shards.finalState.2.1.contains g)
      (fun g => Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) p with
      | some n => decide (n ≤ N)
      | none => false) = true) :
    Cost σ guestCtx p N := by
  split at h
  case h_2 => cases h
  rename_i n hn
  have hle : n ≤ N := of_decide_eq_true h
  have hs := Shards.finalState_sound_guest (σ := σ)
  refine (costA_sound hs.1 hs.2.1 ?_ guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p n hn).mono hle
  intro g hg
  rcases Bool.or_eq_true_iff.mp hg with hg | hg
  · exact efArgZero_of_ef hs.2.1 hg 1
  · exact hs.2.2 g hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.evs_lv1
#print axioms InitECandidate.Solver.Band3.stp_of_core_s
#print axioms InitECandidate.Solver.Band3.auxA_step
#print axioms InitECandidate.Solver.Band3.reqOK_anyG
#print axioms InitECandidate.Solver.Band3.hargs_any
#print axioms InitECandidate.Solver.Band3.costP_decCall_S
#print axioms InitECandidate.Solver.Band3.costP_seq_callD_S
#print axioms InitECandidate.Solver.Band3.costP_seq_callA_S
#print axioms InitECandidate.Solver.Band3.costP_callD_S
#print axioms InitECandidate.Solver.Band3.hoare_callD_S
#print axioms InitECandidate.Solver.Band3.costP_seq_ite_S
#print axioms InitECandidate.Solver.Band3.costP_dec_G
#print axioms InitECandidate.Solver.Band3.costP_guard
#print axioms InitECandidate.Solver.Band3.cost_guest_of_costA
