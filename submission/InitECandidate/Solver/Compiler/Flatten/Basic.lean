import Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCallCorrect
import Flapjack.Compiler.Backend.StackProps.EvaluateCodeBitmaps

/-!
# Bounded `flatten_correct`: statement and generic composition lemmas

Bounded counterpart of Flapjack's `FlattenProp`
(`Flapjack/Compiler/Backend/StackToLab/Proofs/FlattenCorrect/Statement.lean`), pinned
flapjack rev 034bb5a1ed0b757082768d5406206bd2f8e31b7c.

* `psize p` is a hand-made node count of a stack program (every constructor counts `1`;
  `Seq`, `If`, `Loop` and the handlers of `Call` add their sub-programs). It ignores all
  numeric payloads, unlike `sizeOf`.
* `CodeBounded S s`: every procedure body of `s.code`, and every program the compile oracle
  of `s` can install, has `psize ≤ S`. It is preserved by evaluation
  (`codeBounded_evaluate`, from Flapjack's `evaluateCodeBitmaps`).
* `FlattenConclB bnd ...` is Flapjack's `FlattenConcl` with the witness bounded, `ck ≤ bnd`,
  and, for a halting result, the extra fact `s2.clock ≤ t2.clock` (the LabSem run halts with
  at least the StackSem clock left, so LabSem consumes at most `Δ + ck` ticks).
* `FlattenPropB S prog s1`: under `FlattenHyps`, `CodeBounded S s1` and `psize prog ≤ S`,
  the bounded conclusion holds with `bnd = flatBound S (s1.clock - s2.clock) prog`,
  where `flatBound S Δ p = (2 * S + 2) * Δ + 2 * psize p`.
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.CodeInstalled
open Flapjack.Compiler.Backend.StackToLab.Proofs.StateRel
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenHelpers
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCorrect

set_option autoImplicit false

/-- Node count of a stack program: `1` per constructor, plus the sizes of the sub-programs
of `Seq`, `If`, `Loop` and of the return/exception handlers of `Call`. -/
def psize {width : Nat} [NeZero width] : HolProg width → Nat
  | .seq c1 c2 => psize c1 + psize c2 + 1
  | .ite _ _ _ c1 c2 => psize c1 + psize c2 + 1
  | .loop b => psize b + 1
  | .call none _ none => 1
  | .call (some (r, _, _, _)) _ none => psize r + 1
  | .call none _ (some (h, _, _)) => psize h + 1
  | .call (some (r, _, _, _)) _ (some (h, _, _)) => psize r + psize h + 1
  | _ => 1

/-- The explicit bound: `(2 * S + 2)` per StackSem clock tick consumed, `2` per node. -/
def flatBound {width : Nat} [NeZero width] (S Δ : Nat) (p : HolProg width) : Nat :=
  (2 * S + 2) * Δ + 2 * psize p

section
variable {width : Nat} [NeZero width] {C F : Type}

theorem psize_pos (p : HolProg width) : 1 ≤ psize p := by
  cases p with
  | call ret dest handler =>
    rcases ret with _ | ⟨r, a, b, c⟩ <;> rcases handler with _ | ⟨h, d, e⟩ <;> simp [psize]
  | _ => simp [psize]

/-- Every procedure body and every program the compile oracle can install has
`psize ≤ S`. -/
def CodeBounded (S : Nat) (s : StackSemStateFiniteExact width C F) : Prop :=
  (∀ k p, sptLookup k s.code = some p → psize p ≤ S) ∧
    ∀ i, ∀ np ∈ (s.compileOracle i).2.1, psize np.2 ≤ S

theorem sptAListLookup_mem {α : Type} {k : Nat} {v : α} :
    ∀ {l : List (Nat × α)}, sptAListLookup k l = some v → (k, v) ∈ l
  | [], h => by simp [sptAListLookup] at h
  | (a, b) :: l, h => by
    simp only [sptAListLookup] at h
    split_ifs at h with e
    · cases h; subst e; exact List.mem_cons_self
    · exact List.mem_cons_of_mem _ (sptAListLookup_mem h)

theorem lookup_foldl_union {α : Type} (P : α → Prop) :
    ∀ (l : List (Spt α)) (base : Spt α), (∀ k v, sptLookup k base = some v → P v) →
      (∀ m ∈ l, ∀ k v, sptLookup k m = some v → P v) →
      ∀ k v, sptLookup k (l.foldl sptUnion base) = some v → P v
  | [], base, hb, _ => hb
  | m :: l, base, hb, hl => by
    simp only [List.foldl_cons]
    refine lookup_foldl_union P l _ ?_ (fun m' hm' => hl m' (List.mem_cons_of_mem _ hm'))
    intro k v hk
    rw [sptLookup_sptUnion] at hk
    split at hk
    · rename_i w hw; cases hk; exact hb k _ hw
    · exact hl m List.mem_cons_self k v hk

/-- `CodeBounded` is preserved by StackSem evaluation. -/
theorem codeBounded_evaluate {S : Nat} {p : HolProg width}
    {s s' : StackSemStateFiniteExact width C F} {r : Option (StackSemResult width)}
    (ev : StackSemEvaluate.evaluate (p, s) = (r, s')) (h : CodeBounded S s) :
    CodeBounded S s' := by
  obtain ⟨count, horacle, hcode, -⟩ :=
    Compiler.Backend.StackProps.EvaluateCodeBitmaps.evaluateCodeBitmaps p s r s' ev
  refine ⟨?_, ?_⟩
  · rw [hcode]
    refine lookup_foldl_union (fun q => psize q ≤ S) _ _ h.1 ?_
    intro m hm k v hk
    simp only [List.mem_map, List.mem_range] at hm
    obtain ⟨i, -, rfl⟩ := hm
    rw [sptLookup_sptFromAList] at hk
    exact h.2 i (k, v) (sptAListLookup_mem hk)
  · intro i np hnp
    rw [horacle] at hnp
    exact h.2 (i + count) np hnp

theorem codeBounded_decClock {S : Nat} {s : StackSemStateFiniteExact width C F}
    (h : CodeBounded S s) : CodeBounded S (StackSemStateOps.decClock s) := h

theorem codeBounded_setVar {S : Nat} {s : StackSemStateFiniteExact width C F} {v : Nat}
    {x : WordLocW width} (h : CodeBounded S s) :
    CodeBounded S (StackSemStateOps.setVar v x s) := h

/-- Flapjack's `FlattenConcl` with the witness bounded by `bnd`, and with the LabSem clock
at a halt at least the StackSem clock. -/
def FlattenConclB (bnd : Nat) (prog : HolProg width) (t : Bool)
    (r : Option (StackSemResult width)) (s2 : StackSemStateFiniteExact width C F)
    (n l : Nat) (cs bs : List Nat) (t1 : Flapjack.Compiler.Backend.LabSem.State width C F) :
    Prop :=
  ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F), ck ≤ bnd ∧
    match haltView r with
    | some res => evaluate { t1 with clock := t1.clock + ck } = (res, t2) ∧ t2.ffi = s2.ffi ∧
        s2.clock ≤ t2.clock
    | none =>
      (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
        evaluate { t2 with clock := t2.clock + ck1 }) ∧
      t2.lenReg = t1.lenReg ∧ t2.ptrReg = t1.ptrReg ∧ t2.len2Reg = t1.len2Reg ∧
      t2.ptr2Reg = t1.ptr2Reg ∧ t2.linkReg = t1.linkReg ∧ t1.code <+: t2.code ∧
      match r.map (fun w => resultView w n cs bs) with
      | none =>
        t2.pc = t1.pc + ((appListAppend (flattenHOL t prog n l cs bs).1).filter
          (fun x => !isLabelHOL x)).length ∧ stateRel s2 t2
      | some (.vloc n1 n2) =>
        (∀ k, (sptLookup k s2.code).isSome → (locToPc k 0 t2.code).isSome) ∧
          ∀ w, locToPc n1 n2 t2.code = some w → w = t2.pc ∧ stateRel s2 t2
      | some (.vcont n1 n2) =>
        stateRel s2 t2 ∧ codeInstalled t2.pc [.labAsm (.jump (.lab n1 n2)) 0 [] 0] t2.code
      | some .vtimeout => t2.ffi = s2.ffi ∧ t2.clock = 0
      | some .verr => False

/-- The bounded `flatten_correct` for one program and initial state. -/
def FlattenPropB (S : Nat) (prog : HolProg width) (s1 : StackSemStateFiniteExact width C F) :
    Prop :=
  ∀ (t : Bool) (r : Option (StackSemResult width)) (s2 : StackSemStateFiniteExact width C F)
    (n l : Nat) (cs bs : List Nat) (t1 : Flapjack.Compiler.Backend.LabSem.State width C F),
    FlattenHyps prog s1 t r s2 n l cs bs t1 → CodeBounded S s1 → psize prog ≤ S →
    FlattenConclB (flatBound S (s1.clock - s2.clock) prog) prog t r s2 n l cs bs t1

/-- The induction hypothesis available to a constructor case. -/
def FlattenIHB (S : Nat) (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (p' : HolProg width) (s' : StackSemStateFiniteExact width C F),
    MeasureLt p' s' p s → FlattenPropB S p' s'

/-- The bounded conclusion implies Flapjack's unbounded one. -/
theorem FlattenConclB.toConcl {bnd : Nat} {prog : HolProg width} {t : Bool}
    {r : Option (StackSemResult width)} {s2 : StackSemStateFiniteExact width C F}
    {n l : Nat} {cs bs : List Nat} {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (h : FlattenConclB bnd prog t r s2 n l cs bs t1) : FlattenConcl prog t r s2 n l cs bs t1 := by
  obtain ⟨ck, t2, -, h⟩ := h
  refine ⟨ck, t2, ?_⟩
  revert h
  cases haltView r with
  | some res => exact fun h => ⟨h.1, h.2.1⟩
  | none => exact id

theorem FlattenConclB.mono {bnd bnd' : Nat} {prog : HolProg width} {t : Bool}
    {r : Option (StackSemResult width)} {s2 : StackSemStateFiniteExact width C F}
    {n l : Nat} {cs bs : List Nat} {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (h : FlattenConclB bnd prog t r s2 n l cs bs t1) (hle : bnd ≤ bnd') :
    FlattenConclB bnd' prog t r s2 n l cs bs t1 := by
  obtain ⟨ck, t2, hck, h⟩ := h
  exact ⟨ck, t2, Nat.le_trans hck hle, h⟩

/-- A program whose flattening is empty and that leaves the state unchanged without a
result is simulated by staying put. -/
theorem flattenConclStayB {prog : HolProg width} {bnd : Nat}
    {t : Bool} {s : StackSemStateFiniteExact width C F} {n l : Nat} {cs bs : List Nat}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (rel : stateRel s t1)
    (empty : ((appListAppend (flattenHOL t prog n l cs bs).1).filter
      (fun x => !isLabelHOL x)).length = 0) :
    FlattenConclB bnd prog t none s n l cs bs t1 := by
  refine ⟨0, t1, Nat.zero_le _, ?_⟩
  simp only [haltView, Option.map_none, true_and]
  exact ⟨fun ck1 => by simp, List.prefix_refl _, by omega, rel⟩

/-- The conclusion for a result does not depend on the program, tail flag or next label. -/
theorem flattenConclSomeB {bnd : Nat} {p p' : HolProg width} {t t' : Bool}
    {x : StackSemResult width}
    {s2 : StackSemStateFiniteExact width C F} {n l l' : Nat} {cs bs : List Nat}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (h : FlattenConclB bnd p t (some x) s2 n l cs bs t1) :
    FlattenConclB bnd p' t' (some x) s2 n l' cs bs t1 := by
  obtain ⟨ck, t2, hck, h⟩ := h
  refine ⟨ck, t2, hck, ?_⟩
  revert h
  cases haltView (some x) with
  | some res => exact id
  | none =>
    simp only [Option.map_some]
    cases resultView x n cs bs <;> exact id

/-- Results with the same halt view and result view have the same conclusion. -/
theorem flattenConclResultB {bnd : Nat} {p p' : HolProg width} {t t' : Bool}
    {x y : StackSemResult width}
    {s2 : StackSemStateFiniteExact width C F} {n n' l l' : Nat} {cs bs cs' bs' : List Nat}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (hh : haltView (some x) = haltView (some y))
    (hr : resultView x n cs bs = resultView y n' cs' bs')
    (h : FlattenConclB bnd p t (some x) s2 n l cs bs t1) :
    FlattenConclB bnd p' t' (some y) s2 n' l' cs' bs' t1 := by
  obtain ⟨ck, t2, hck, h⟩ := h
  refine ⟨ck, t2, hck, ?_⟩
  revert h
  rw [hh]
  cases haltView (some y) with
  | some res => exact id
  | none =>
    simp only [Option.map_some, hr]
    cases resultView y n' cs' bs' <;> exact id

/-- Composition of a LabSem prefix run (extra clock `ck`) reaching `t2` with the bounded
conclusion of a following sub-program started in `t2`. -/
theorem flattenConclComposeB {bnd : Nat} {p p' : HolProg width} {t t' : Bool}
    {r : Option (StackSemResult width)} {s2 : StackSemStateFiniteExact width C F}
    {n l l' : Nat} {cs bs : List Nat} {ck : Nat}
    {t1 t2 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (run : ∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
      evaluate { t2 with clock := t2.clock + ck1 })
    (e1 : t2.lenReg = t1.lenReg) (e2 : t2.ptrReg = t1.ptrReg) (e3 : t2.len2Reg = t1.len2Reg)
    (e4 : t2.ptr2Reg = t1.ptr2Reg) (e5 : t2.linkReg = t1.linkReg) (pre : t1.code <+: t2.code)
    (hlen : t1.pc + ((appListAppend (flattenHOL t p n l cs bs).1).filter
        (fun x => !isLabelHOL x)).length =
      t2.pc + ((appListAppend (flattenHOL t' p' n l' cs bs).1).filter
        (fun x => !isLabelHOL x)).length)
    (h : FlattenConclB bnd p' t' r s2 n l' cs bs t2) :
    FlattenConclB (ck + bnd) p t r s2 n l cs bs t1 := by
  obtain ⟨ck', t3, hck, h⟩ := h
  refine ⟨ck + ck', t3, by omega, ?_⟩
  revert h
  cases haltView r with
  | some res =>
    rintro ⟨ev, ffi, clk⟩
    refine ⟨?_, ffi, clk⟩
    rw [← Nat.add_assoc, run ck', ev]
  | none =>
    rintro ⟨run2, f1, f2, f3, f4, f5, pre2, rest⟩
    refine ⟨fun ck1 => ?_, by rw [f1, e1], by rw [f2, e2], by rw [f3, e3], by rw [f4, e4],
      by rw [f5, e5], pre.trans pre2, ?_⟩
    · rw [show t1.clock + (ck + ck') + ck1 = t1.clock + ck + (ck' + ck1) by omega, run,
        ← run2 ck1, Nat.add_assoc]
    · revert rest
      cases r.map (fun w => resultView w n cs bs) with
      | none => rintro ⟨hpc, rel⟩; exact ⟨by omega, rel⟩
      | some v => cases v <;> exact id

/-- Composition for a sub-program that produces a result: the final program counter is
irrelevant. -/
theorem flattenConclComposeSomeB {bnd : Nat} {p p' : HolProg width} {t t' : Bool}
    {x : StackSemResult width} {s2 : StackSemStateFiniteExact width C F}
    {n l l' : Nat} {cs bs : List Nat} {ck : Nat}
    {t1 t2 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (run : ∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
      evaluate { t2 with clock := t2.clock + ck1 })
    (e1 : t2.lenReg = t1.lenReg) (e2 : t2.ptrReg = t1.ptrReg) (e3 : t2.len2Reg = t1.len2Reg)
    (e4 : t2.ptr2Reg = t1.ptr2Reg) (e5 : t2.linkReg = t1.linkReg) (pre : t1.code <+: t2.code)
    (h : FlattenConclB bnd p' t' (some x) s2 n l' cs bs t2) :
    FlattenConclB (ck + bnd) p t (some x) s2 n l cs bs t1 := by
  obtain ⟨ck', t3, hck, h⟩ := h
  refine ⟨ck + ck', t3, by omega, ?_⟩
  revert h
  cases haltView (some x) with
  | some res =>
    rintro ⟨ev, ffi, clk⟩
    exact ⟨by rw [← Nat.add_assoc, run ck', ev], ffi, clk⟩
  | none =>
    rintro ⟨run2, f1, f2, f3, f4, f5, pre2, rest⟩
    refine ⟨fun ck1 => ?_, by rw [f1, e1], by rw [f2, e2], by rw [f3, e3], by rw [f4, e4],
      by rw [f5, e5], pre.trans pre2, ?_⟩
    · rw [show t1.clock + (ck + ck') + ck1 = t1.clock + ck + (ck' + ck1) by omega, run,
        ← run2 ck1, Nat.add_assoc]
    · revert rest
      simp only [Option.map_some]
      cases resultView x n cs bs <;> exact id

/-- Unpacked bounded no-result conclusion of a sub-program. -/
theorem flattenConclNoneB {bnd : Nat} {p : HolProg width} {t : Bool}
    {s2 : StackSemStateFiniteExact width C F}
    {n l : Nat} {cs bs : List Nat} {t1 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (h : FlattenConclB bnd p t none s2 n l cs bs t1) :
    ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F), ck ≤ bnd ∧
      (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
        evaluate { t2 with clock := t2.clock + ck1 }) ∧
      t2.lenReg = t1.lenReg ∧ t2.ptrReg = t1.ptrReg ∧ t2.len2Reg = t1.len2Reg ∧
      t2.ptr2Reg = t1.ptr2Reg ∧ t2.linkReg = t1.linkReg ∧ t1.code <+: t2.code ∧
      t2.pc = t1.pc + ((appListAppend (flattenHOL t p n l cs bs).1).filter
        (fun x => !isLabelHOL x)).length ∧ stateRel s2 t2 := h

/-- Unpacked bounded `Vloc` conclusion. -/
theorem flattenConclVlocB {bnd : Nat} {p : HolProg width} {t : Bool} {x : StackSemResult width}
    {s2 : StackSemStateFiniteExact width C F} {n l : Nat} {cs bs : List Nat}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F} {n1 n2 : Nat}
    (hh : haltView (some x) = none) (hr : resultView x n cs bs = .vloc n1 n2)
    (h : FlattenConclB bnd p t (some x) s2 n l cs bs t1) :
    ∃ (ck : Nat) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F), ck ≤ bnd ∧
      (∀ ck1, evaluate { t1 with clock := t1.clock + ck + ck1 } =
        evaluate { t2 with clock := t2.clock + ck1 }) ∧
      t2.lenReg = t1.lenReg ∧ t2.ptrReg = t1.ptrReg ∧ t2.len2Reg = t1.len2Reg ∧
      t2.ptr2Reg = t1.ptr2Reg ∧ t2.linkReg = t1.linkReg ∧ t1.code <+: t2.code ∧
      ∀ w, locToPc n1 n2 t2.code = some w → w = t2.pc ∧ stateRel s2 t2 := by
  obtain ⟨ck, t2, hck, h⟩ := h
  refine ⟨ck, t2, hck, ?_⟩
  revert h
  rw [hh]
  simp only [Option.map_some, hr]
  rintro ⟨a, b, c, d, e, f, g, -, w⟩
  exact ⟨a, b, c, d, e, f, g, w⟩

/-- The clock does not increase along a StackSem evaluation. -/
theorem evClock {p : HolProg width} {s s' : StackSemStateFiniteExact width C F}
    {r : Option (StackSemResult width)} (ev : StackSemEvaluate.evaluate (p, s) = (r, s')) :
    s'.clock ≤ s.clock :=
  StackSemEvaluateClock.evaluateClock _ _ _ _ ev

/-- One sub-run inside a larger program, plus `e` extra lines. -/
theorem flatBound_one {S Δ e ck : Nat} {p1 p : HolProg width}
    (h : ck ≤ flatBound S Δ p1) (hp : e + 2 * psize p1 ≤ 2 * psize p) :
    e + ck ≤ flatBound S Δ p := by
  unfold flatBound at *
  omega

/-- Two consecutive sub-runs (clocks `a ≥ b ≥ c`) inside a larger program, plus `e` extra
lines. -/
theorem flatBound_two {S a b c e ck1 ck2 : Nat} {p1 p2 p : HolProg width}
    (h1 : ck1 ≤ flatBound S (a - b) p1) (h2 : ck2 ≤ flatBound S (b - c) p2)
    (hab : b ≤ a) (hbc : c ≤ b) (hp : e + 2 * psize p1 + 2 * psize p2 ≤ 2 * psize p) :
    e + ck1 + ck2 ≤ flatBound S (a - c) p := by
  unfold flatBound at *
  rw [show a - c = (a - b) + (b - c) by omega, Nat.mul_add]
  omega

/-- A procedure entered with one StackSem tick (clock `a = a' + 1`): its body `q` of size at
most `S` runs from clock `a'` down to `c`; `e ≤ 2` extra lines. -/
theorem flatBound_enter {S a a' c e ck : Nat} {q p : HolProg width}
    (h : ck ≤ flatBound S (a' - c) q) (hq : psize q ≤ S) (ha : a = a' + 1) (hc : c ≤ a')
    (he : e ≤ 2) : e + ck ≤ flatBound S (a - c) p := by
  unfold flatBound at *
  have := psize_pos p
  rw [show a - c = (a' - c) + 1 by omega, Nat.mul_add]
  omega

/-- A procedure entered with one StackSem tick, followed by a continuation `p2` (a handler or
a loop re-entry); `e ≤ 2` extra lines. -/
theorem flatBound_enterThen {S a a' b c e ck1 ck2 : Nat} {q p2 p : HolProg width}
    (h1 : ck1 ≤ flatBound S (a' - b) q) (hq : psize q ≤ S)
    (h2 : ck2 ≤ flatBound S (b - c) p2) (ha : a = a' + 1) (hab : b ≤ a') (hbc : c ≤ b)
    (he : e ≤ 2) (hp : psize p2 ≤ psize p) : e + ck1 + ck2 ≤ flatBound S (a - c) p := by
  unfold flatBound at *
  rw [show a - c = (a' - b) + 1 + (b - c) by omega, Nat.mul_add, Nat.mul_add]
  omega

end

end InitECandidate.Solver.Compiler.Flatten
