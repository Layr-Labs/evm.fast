import InitECandidate.Solver.MemSafe.Aw.Sk

set_option autoImplicit false

/-!
# Target F, part 1: rules for the header decoder
* `hoareG_storeAD`: a store (any number of words) at an address `≥ h0`; the cells stay `≥ h0` because the
  store succeeded in a domain below `domTop`.
* `hoareG_raiseA`: a `throw` owes nothing.
* `RdSpec`: a callee that only reads (its writes are at or above `heapEnd`: the scratch arena) and restores the
  globals; `asp_of_rd` turns it into an `ASp`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem stores_ge {vals : List (HolWordLab 64)} {w : BitVec 64} {dom : BitVec 64 → Prop}
    {inst : DecidablePred dom} {m m' : Mem} (hT : ∀ a, dom a → a.toNat < domTop)
    (h : @panMemStoresHOL 64 _ w vals dom inst m = some m') :
    ModifiesOnly (fun a => ∃ j, j < vals.length ∧ w.toNat ≤ a.toNat) m m' := by
  obtain ⟨hm, hd⟩ := stores_mod h
  refine hm.mono fun a ⟨j, hj, he⟩ => ⟨j, hj, ?_⟩
  have key : ∀ i, i < vals.length → w.toNat + 8 * i < domTop := by
    intro i
    induction i with
    | zero =>
        intro hi
        have := hT _ (hd 0 hi)
        simpa using this
    | succ i ih =>
        intro hi
        have h1 := ih (by omega)
        have h2 := hT _ (hd (i + 1) hi)
        have hd2 : domTop = 2 ^ 40 := rfl
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * (i + 1)) (by omega),
          Nat.mod_eq_of_lt (by omega)] at h2
        omega
  have h1 := key j hj
  have hd2 : domTop = 2 ^ 40 := rfl
  rw [he, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j) (by omega),
    Nat.mod_eq_of_lt (by omega)]
  omega

theorem hoareG_storeAD {a : AwE σ} (hK : AwOK a) (hT : DomBelow X) {addr e : ExpHOL 64}
    {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s addr = some (.val (.word w)) →
      a.h0 ≤ w.toNat) :
    HoareG σ X (APre a L) (.store addr e) (AQ a L Ret) := by
  refine hoareG_store fun s hs hP w v mem ha hv hst => ?_
  have hdom : s.memaddrs = X.memaddrs := hs.2.1
  have hm := stores_ge (inst := fun x => Classical.propDecidable (s.memaddrs x))
    (fun x hx => hT x (hdom ▸ hx)) hst
  have hw := haddr s hs hP.2 w ha
  exact ⟨nb_none, fun _ => ⟨awInv_write hK hP.1 rfl rfl rfl hm
    (fun y ⟨j, hj, hy⟩ => by omega), hP.2⟩, (fun _ h => nomatch h)⟩

theorem hoareG_raiseA {a : AwE σ} {x : MlS} {e : ExpHOL 64} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} : HoareG σ X (APre a L) (.raise x e) (AQ a L' Ret) :=
  hoareG_raise fun s hs hp v hv => aq_abn (Or.inl ⟨x, v, rfl⟩)

/-- The state facts a read-only callee needs: ordered allocator pointers and the arithmetic workspace
`u256_ws` (a scalar global buffer) inside the domain. -/
def RdOK (s : State σ) : Prop :=
  (∃ p, ptrsOf s = some p ∧ p.Ordered) ∧ ∃ W, gword s wsN = some W ∧ W.toNat + 640 ≤ scratchEnd

/-- The cells a read-only callee may write: the scratch arena and beyond, and the workspace. -/
def RdF (s : State σ) (x : BitVec 64) : Prop :=
  heapEnd ≤ x.toNat ∨ ∃ W, gword s wsN = some W ∧ Overlap W.toNat 640 x

/-- What a read-only run did to the allocator and the memory, scratch arena included: only the scratch
pointer may have moved, the pointers stay ordered, the workspace is intact, writes are in `RdF`. -/
def SR (s0 t : State σ) : Prop :=
  (∀ g, g ≠ gScratch → t.globals.lookup g = s0.globals.lookup g) ∧ RdOK t ∧
    ModifiesOnly (RdF s0) s0.memory t.memory

/-- Read-only, strong form: every good result restores the globals. -/
def RdSpecS (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → RdOK s →
    t.globals = s.globals ∧ ModifiesOnly (RdF s) s.memory t.memory)

/-- A callee that only reads (except for the scratch arena and the arithmetic workspace): a good run
from `RdOK` is an `SR`, and a *returned* result also restores the globals (an exception may leave the
scratch pointer lowered). -/
def RdSpec (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → RdOK s →
    SR s t ∧ ((∃ v, r = .returned v) → t.globals = s.globals))

theorem sr_of_same {s t : State σ} (hok : RdOK s) (hg : t.globals = s.globals)
    (hm : ModifiesOnly (RdF s) s.memory t.memory) : SR s t := by
  obtain ⟨⟨p, hp, ho⟩, W, hW, hWe⟩ := hok
  refine ⟨fun g _ => by rw [hg], ⟨⟨p, ?_, ho⟩, W, ?_, hWe⟩, hm⟩
  · rw [← hp]; exact AllocImpl.ptrsOf_congr hg
  · unfold gword at hW ⊢; rw [hg]; exact hW

theorem rdSpec_of_strong {f : MlS} (h : RdSpecS σ X f) : RdSpec σ X f :=
  h.mono fun vs s r t hh hg hok => by
    obtain ⟨h1, h2⟩ := hh hg hok
    exact ⟨sr_of_same hok h1 h2, fun _ => h1⟩

theorem rdSpec_of_foot {f : MlS} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : FootRet σ X f (fun _ => True) (fun _ _ => False) RetF) : RdSpec σ X f :=
  rdSpec_of_strong (h.mono fun vs s r t hh hg _ => by
    obtain ⟨hg1, hm, -⟩ := hh hg trivial
    exact ⟨hg1, hm.mono fun a ha => ha.elim⟩)

theorem asp_of_rd {a : AwE σ} (hK : AwOK a) (hWS : ScalarGlob a.C wsN 640) {f : MlS}
    (hf : RdSpec σ X f) : ASp a X f (fun _ _ => True) (fun _ _ _ => True) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h2 := hd vs body callee rs hl s hs hloc r hr
  have hinv0 := hinv
  obtain ⟨Γ', p', hG, hp, -⟩ := hinv0
  have hord : p'.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  obtain ⟨W0, hW0, hW0e, hW0c⟩ := scell_of_glob hG hWS
  subst hv
  obtain ⟨⟨-, -, hmod⟩, hg⟩ := hf vs body callee rs hl s hs hloc _ hr (by simp [Good])
    ⟨⟨p', hp, hord⟩, W0, hW0, hW0e⟩
  have hg := hg ⟨_, rfl⟩
  have hh0 : a.h0 ≤ heapEnd := by
    have := hK.hle
    have := hK.hord
    unfold Ptrs.Ordered at this
    omega
  refine ⟨awInv_writeS hK hinv hg h2.1 h2.2 hmod (fun Γ1 hG1 x hx => ?_), trivial⟩
  rcases hx with hx | ⟨W1, hW1, hov⟩
  · exact Or.inl (le_trans hh0 hx)
  · obtain ⟨W2, hW2, -, hW2c⟩ := scell_of_glob hG1 hWS
    rw [hW1] at hW2
    cases hW2
    exact Or.inr (hW2c x hov)

end InitECandidate.Solver.MemSafe.Aw
