import InitECandidate.Solver.MemSafe.Rec.DIPre
import InitECandidate.Solver.MemSafe.Rec.ChkOffN
import InitECandidate.Solver.MemSafe.Rec.DecPayB

set_option autoImplicit false

/-!
# `decode_stateless_input`: the toolkit

* `LK kv m`: the locals `m` hold the words `kv` (a list of `(name, word)`).
* `EJ Φ Ar Bf Cz`: the client predicate (pure facts `Φ`; the global `ssz_offs` and a memory fact
  `Cz` about its buffer; the record word 0 `rd m Ar = pl` with `pl` a `tPL` object `PlO`).
* statement rules for `DI`: `hoareG_assignDI`, `hoareG_decDIE` (a `var` whose value is read from
  memory / the client predicate), `hoareG_stsDI'` (the scalar-cell store exposing the cell),
  `hoareG_whileDI`; `ej_call` (stability across a summarised call).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-- `∀ q ∈ kv, q.1 ≠ x` for a literal list of names. -/
macro "nmne" : tactic =>
  `(tactic| (simp only [List.mem_cons, forall_eq_or_imp, forall_eq, List.not_mem_nil, false_imp_iff,
    implies_true, and_true]; decide))

/-! ## Locals -/

def LK (kv : List (MlS × BitVec 64)) (m : LocalsH) : Prop :=
  ∀ q ∈ kv, m.lookup q.1 = some (.val (.word q.2))

theorem lk_get {kv : List (MlS × BitVec 64)} {m : LocalsH} (h : LK kv m) {x : MlS} {w : BitVec 64}
    (hm : (x, w) ∈ kv) : m.lookup x = some (.val (.word w)) := h _ hm

theorem lk_set {kv : List (MlS × BitVec 64)} {s : State σ} (h : LK kv s.locals) {x : MlS}
    (w : BitVec 64) (hn : ∀ q ∈ kv, q.1 ≠ x) :
    LK ((x, w) :: kv) (setVarHOLFinite x (.val (.word w)) s).locals := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (Ne.symm (hn q hq))]; exact h q hq

theorem lk_assign {kv : List (MlS × BitVec 64)} {s : State σ} (h : LK kv s.locals) {x : MlS}
    (w : BitVec 64) :
    LK ((x, w) :: kv.filter (fun q => q.1 != x)) (setVarHOLFinite x (.val (.word w)) s).locals := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact lk_set_self _ _ _
  · obtain ⟨hq, hne⟩ := List.mem_filter.mp hq
    rw [lk_set_ne _ _ (fun e => by simp [e] at hne)]; exact h q hq

theorem lk_sub {kv kv' : List (MlS × BitVec 64)} {m : LocalsH} (h : LK kv m)
    (hs : ∀ q ∈ kv', q ∈ kv) : LK kv' m := fun q hq => h q (hs q hq)

/-! ## The client predicate -/

def PlO (Γ : Gam) (pl : BitVec 64) : Prop :=
  ∃ x ∈ Γ, x.base = pl ∧ x.ty = tPL ∧ 136 ≤ x.size ∧ pl.toNat + 136 ≤ heapEnd

theorem plO_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {pl : BitVec 64} (h : PlO Γ pl) : PlO Γ' pl := by
  obtain ⟨o, ho, h1, h2, h3, h4⟩ := h
  obtain ⟨o', ho', hb, ht, hs⟩ := hx o ho
  exact ⟨o', ho', hb.trans h1, ht.trans h2, by omega, h4⟩

def Bk (Ar : BitVec 64) (Bf : Option (BitVec 64)) (Γ : Gam) (m : Mem) : Prop :=
  ∀ pl, Bf = some pl → rd m Ar = pl ∧ PlO Γ pl

def EJ (Φ : Prop) (Ar : BitVec 64) (Bf : Option (BitVec 64)) (Cz : Mem → BitVec 64 → Prop)
    (Γ : Gam) (_q : Ptrs) (m : Mem) (g : LocalsH) : Prop :=
  Φ ∧ (∃ W : BitVec 64, g.lookup (nm "ssz_offs") = some (.val (.word W)) ∧ Cz m W) ∧ Bk Ar Bf Γ m

def CzT : Mem → BitVec 64 → Prop := fun _ _ => True

/-- Known words at the offsets buffer. -/
def CzK (ks : List (Nat × BitVec 64)) : Mem → BitVec 64 → Prop :=
  fun m W => ∀ kv ∈ ks, rd m (W + BitVec.ofNat 64 (8 * kv.1)) = kv.2

theorem di_mono {a : Act σ} {Ar : BitVec 64} {n : Nat} {L L' : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {t : State σ} (hL : ∀ m, L m → L' m)
    (hE : ∀ Γ q mem g, E Γ q mem g → E' Γ q mem g) (h : DI a Ar n L E t) : DI a Ar n L' E' t := by
  obtain ⟨h1, Γ, q, he, hh, hB, hn, hE0⟩ := h
  exact ⟨hL _ h1, Γ, q, he, hh, hB, hn, hE _ _ _ _ hE0⟩

/-- A block at address `0` of size `0` (no cells): the pre-allocation scope. -/
theorem blkF_zero (Γ : Gam) (q : Ptrs) : BlkF (0 : BitVec 64) 0 Γ q := by
  intro x hx
  obtain ⟨-, h1, h2⟩ := hx
  simp at h2

theorem di_zero {a : Act σ} {L : LocalsH → Prop} {t : State σ} (hL : L t.locals) (hH : HHa a t) :
    DI a (0 : BitVec 64) 0 L (fun _ _ _ _ => True) t := by
  obtain ⟨Γ, q, he, hh⟩ := hH
  refine ⟨hL, Γ, q, he, hh, blkF_zero Γ q, fun x hx => ?_, trivial⟩
  obtain ⟨-, h1, h2⟩ := hx
  simp at h2

/-! ## Rules -/

theorem hoareG_assignDI {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (DI a Ar n L E) (.assign .local x e) (DQ a Ar n L' E) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hB, hn, hE⟩,
      fun r' h => absurd h (by simp)⟩

theorem hoareG_seqDQ {a : Act σ} {P : State σ → Prop} {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {c k : ProgHOL 64}
    (hc : HoareG σ X P c (DQ a Ar n L E)) (hk : HoareG σ X (DI a Ar n L E) k (DQ a Ar n L' E')) :
    HoareG σ X P (.seq c k) (DQ a Ar n L' E') :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre hk fun _ _ h => h.1 rfl)

/-- `var x = e; k` where the value is determined using the client predicate. -/
theorem hoareG_decDIE {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    {L' : BitVec 64 → LocalsH → Prop} {E' : BitVec 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ v, ev s e = some v →
        ∃ w, v = .val (.word w) ∧ L' w (setVarHOLFinite x v s).locals ∧ E' w Γ q s.memory s.globals)
    (hk : ∀ w, HoareG σ X (DI a Ar n (L' w) (E' w)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.dec x sh e k) (NQ a Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hF, hn, hE⟩ v hv _ => ?_
  obtain ⟨w, rfl, hL', hE'⟩ := h s hs hL Γ q hh hE v hv
  refine hoareG_conseq (hk w) (fun t _ ht => ?_) (fun r t _ _ hq => nq_locals hH _ hq)
  subst ht
  exact ⟨hL', Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hF, hn, hE'⟩

theorem hoareG_whileDI {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L Lx : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64}
    {body : ProgHOL 64}
    (hb : HoareG σ X (fun s => DI a Ar n L E s ∧ CondTrue s c) body (DQ a Ar n L E))
    (hexit : ∀ s : State σ, InCtx s X → DI a Ar n L E s → ev s c = some (.val (.word 0)) →
      DI a Ar n Lx E s) :
    HoareG σ X (DI a Ar n L E) (.while c body) (DQ a Ar n Lx E) := by
  refine hoareG_while (I := DI a Ar n L E) ?_ ?_ (fun s hs hi hc => ⟨fun _ => hexit s hs hi hc,
    fun r' h => absurd h (by simp)⟩)
  · intro t h
    obtain ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ := h
    exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hB, hn, hE⟩
  · refine hoareG_conseq hb (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      have := (h.2 r' hr').1
      rcases this with ⟨e, v, he⟩ | ⟨e, he⟩ <;> rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decDIE
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_stsDI'
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_whileDI
