import InitECandidate.Solver.MemSafe.Trie.CsrFinal
import InitECandidate.Solver.Band7.Bmi1
import InitECandidate.Solver.Band7.Ms8

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# Combined memory-safety and cost judgment `CH` (Band7)

`CH P c Q B`: `HoareG σ guestCtx P c Q` (the memory walk's judgment) and `CostP σ guestCtx P c B`. The rules are the
`gp_*` rules of the memory walk with the cost rule of the same statement. `cb c` is the bound the rules produce: a
callee costs `tb f`; a `while i < c` against a constant `c` costs `(c + 1) * (cb body + 1)` (`gc_while_const`); the conditional callees `mpt_set`, `mpt_root`, `mpt_from_witness` cost their conditional bounds.
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

/-- The cost bound of a callee. -/
def tb (f : MlS) : Nat :=
  if f = nm "mpt_set" then Band4.msB
  else if f = nm "mpt_root" then Band2.mrB
  else if f = nm "mpt_from_witness" then Band2.mfwB
  else (SourceCost.Shards.finalState.1.lookup f).getD 0

/-- The bound the cost rules produce for a program. -/
def cb : ProgHOL 64 → Nat
  | .decCall _ _ f _ k => 1 + tb f + cb k
  | .call _ f _ => 1 + tb f + 0
  | .dec _ _ _ k => cb k
  | .seq a b => cb a + cb b
  | .ite _ a b => max (cb a) (cb b)
  | .while (.cmp .less (.var .local _) (.const c)) b => (c.toNat + 1) * (cb b + 1)
  | .while _ b => (2 ^ 64 + 1) * (cb b + 1)
  | _ => 0

/-- A table callee's entry at `tb f`. -/
theorem cc_tb {f : MlS} (h : SourceCost.Shards.finalState.1.lookup f = some (tb f)) :
    CalleeCost σ guestCtx f (tb f) := Wire.calleeCost_guest (Wire.tbLe_of_eq h)

/-- The memory-safety and cost judgment. -/
def CH (σ : Type) (P : State σ → Prop) (c : ProgHOL 64)
    (Q : Option (PanSemResultExact 64) → State σ → Prop) (B : Nat) : Prop :=
  HoareG σ guestCtx P c Q ∧ Inv.CostP σ guestCtx P c B

section rules
variable {a : Act σ} {L L' L2 L3 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

theorem ch_pre {P P' : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {B : Nat} (h : CH σ P c Q B) (hP : ∀ s, InCtx s guestCtx → P' s → P s) : CH σ P' c Q B :=
  ⟨hoareG_pre h.1 hP, h.2.pre hP⟩

theorem ch_exL {α : Type} {L : α → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {B : Nat}
    (h : ∀ x, CH σ (GI a (L x) E) c Q B) : CH σ (GI a (fun m => ∃ x, L x m) E) c Q B :=
  ⟨hoareG_exL fun x => (h x).1, fun s hs ⟨⟨x, hL⟩, r⟩ => (h x).2 s hs ⟨hL, r⟩⟩

theorem ch_false {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {B : Nat} (h : ∀ s, InCtx s guestCtx → P s → False) : CH σ P c Q B :=
  ⟨hoareG_false h, fun s hs hp _ => (h s hs hp).elim⟩

theorem ch_weakL {L L' : LocalsH → Prop} {P : State σ → Prop} {c : ProgHOL 64} {B : Nat}
    (hL : ∀ m, L m → L' m) (h : CH σ P c (GP a L E Rv) B) : CH σ P c (GP a L' E Rv) B :=
  ⟨gp_weakL' hL h.1, h.2⟩

theorem ch_weakE {E E' : Gam → Ptrs → Mem → Prop} {P : State σ → Prop} {c : ProgHOL 64} {B : Nat}
    (hE : ∀ Γ q mm, E Γ q mm → E' Γ q mm) (h : CH σ P c (GP a L E Rv) B) : CH σ P c (GP a L E' Rv) B :=
  ⟨gp_weakE' hE h.1, h.2⟩

theorem gc_seq {P : State σ → Prop} {c k : ProgHOL 64} {Bc Bk : Nat}
    (hc : CH σ P c (GP a L E Rv) Bc) (hk : CH σ (GI a L E) k (GP a L' E' Rv) Bk) :
    CH σ P (.seq c k) (GP a L' E' Rv) (Bc + Bk) :=
  ⟨gp_seq hc.1 hk.1, Inv.costP_seq (R := GI a L E) hc.2
    (fun s hs hp ht hr => by
      have := MemSafe.Frames.hoare_of_hoareG hc.1 s hs hp ht
      rw [hr] at this
      exact this.1 rfl) hk.2⟩

theorem gc_skip {P : State σ → Prop} (hP : ∀ s : State σ, P s → GI a L E s) :
    CH σ P .skip (GP a L E Rv) 0 :=
  ⟨gp_skip hP, Inv.costP_of_cost cost_skip⟩

theorem gc_assign (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s guestCtx → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals) :
    CH σ (GI a L E) (.assign .local x e) (GP a L' E Rv) 0 :=
  ⟨gp_assign hH h, Inv.costP_of_cost (cost_assign _ _ _)⟩

theorem gc_ite {c : ExpHOL 64} {p q : ProgHOL 64} {Bp Bq : Nat}
    (hp : CH σ (fun s => GI a L E s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) p (GP a L' E' Rv) Bp)
    (hq : CH σ (fun s => GI a L E s ∧ ev s c = some (.val (.word 0))) q (GP a L' E' Rv) Bq) :
    CH σ (GI a L E) (.ite c p q) (GP a L' E' Rv) (max Bp Bq) :=
  ⟨gp_ite hp.1 hq.1, Inv.costP_ite hp.2 hq.2⟩

theorem gc_dec (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : LocalsH → Prop} {B : Nat}
    (h : ∀ s : State σ, InCtx s guestCtx → L s.locals → ∀ v, ev s e = some v →
      L1 (setVarHOLFinite x v s).locals)
    (hk : CH σ (GI a L1 E) body (GP a L2 E' Rv) B)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    CH σ (GI a L E) (.dec x sh e body) (GP a L3 E' Rv) B :=
  ⟨gp_dec hH h hk.1 hres, cq_dec hH h hk.2⟩

theorem gc_decG (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {B : Nat}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals ∧ E1 v Γ q s.memory)
    (hk : ∀ v, CH σ (GI a (L1 v) (E1 v)) body (GP a L2 E' Rv) B)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    CH σ (GI a L E) (.dec x sh e body) (GP a L3 E' Rv) B := by
  refine ⟨gp_decG hH h (fun v => (hk v).1) hres, ?_⟩
  refine Inv.costP_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  obtain ⟨hL1, hE1⟩ := h s Γ q hs hL hh hE v hv
  refine (hk v).2.pre (fun t _ ht => ?_)
  subst ht
  exact ⟨hL1, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE1⟩

end rules

end InitECandidate.Solver.Band7
