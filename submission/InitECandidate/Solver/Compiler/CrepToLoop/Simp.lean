import InitECandidate.Solver.Compiler.CrepToLoop.Basic
import Flapjack.Pancake.CrepArith

/-!
# `crep_arith$simp_prog` does not increase `csize`

`esize_simp`, `csize_simp`: the arithmetic simplifier applied before crep → loop
(`crepSimpProgHOL`, `crep_arithScript.sml:83-105`) never increases the node counts. So a code
bound on the original crep code is a code bound on the simplified code that crep → loop
actually compiles.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack

set_option autoImplicit false

variable {width : Nat} [NeZero width]

theorem esize_mulConst (e : CrepExpHOL width) (c : BitVec width) :
    esize (crepMulConstHOL e c) ≤ esize e + 2 := by
  unfold crepMulConstHOL
  split
  · simp [esize]
  · split
    · omega
    · split <;> simp [esize, esizeL]

theorem esize_eq_one_of_destConst {e : CrepExpHOL width} {c : BitVec width}
    (h : crepDestConstHOL e = some c) : esize e = 1 := by
  cases e <;> simp [crepDestConstHOL] at h
  simp [esize]

mutual
theorem esize_simp : ∀ e : CrepExpHOL width, esize (crepSimpExpHOL e) ≤ esize e
  | .crepOp op es => by
      have ih := esizeL_map_simp es
      by_cases hshape : ∃ a b, es = [a, b]
      · obtain ⟨a, b, rfl⟩ := hshape
        cases op
        rw [crepSimpExpHOL.eq_1 [a, b] (crepSimpExpHOL a) (crepSimpExpHOL b) (by simp)]
        simp only [List.map_cons, List.map_nil, esizeL] at ih
        cases h1 : crepDestConstHOL (crepSimpExpHOL a) <;>
          cases h2 : crepDestConstHOL (crepSimpExpHOL b)
        · simp only [esize, esizeL, List.map_cons, List.map_nil]; omega
        · have := esize_mulConst (crepSimpExpHOL a) ‹BitVec width›
          have := esize_eq_one_of_destConst h2
          simp only [esize, esizeL]; omega
        · have := esize_mulConst (crepSimpExpHOL b) ‹BitVec width›
          have := esize_eq_one_of_destConst h1
          simp only [esize, esizeL]; omega
        · simp only [esize, esizeL]; have := one_le_esize a; omega
      · rw [crepSimpExpHOL.eq_2 es op (by
          intro first second _ h
          apply hshape
          rcases es with _ | ⟨a, _ | ⟨b, _ | ⟨c, rest⟩⟩⟩ <;> simp at h
          exact ⟨a, b, rfl⟩)]
        simp only [esize]; omega
  | .load a => by
      have := esize_simp a; rw [crepSimpExpHOL]; simp only [esize]; omega
  | .load32 a => by
      have := esize_simp a; rw [crepSimpExpHOL]; simp only [esize]; omega
  | .loadByte a => by
      have := esize_simp a; rw [crepSimpExpHOL]; simp only [esize]; omega
  | .op o es => by
      have := esizeL_map_simp es; rw [crepSimpExpHOL]; simp only [esize]; omega
  | .cmp o a b => by
      have := esize_simp a; have := esize_simp b
      rw [crepSimpExpHOL]; simp only [esize]; omega
  | .shift o a b => by
      have := esize_simp a; have := esize_simp b
      rw [crepSimpExpHOL]; simp only [esize]; omega
  | .const _ => by rw [crepSimpExpHOL] <;> simp
  | .var _ => by rw [crepSimpExpHOL] <;> simp
  | .loadGlob _ => by rw [crepSimpExpHOL] <;> simp
  | .baseAddr => by rw [crepSimpExpHOL] <;> simp
  | .topAddr => by rw [crepSimpExpHOL] <;> simp
termination_by e => sizeOf e

theorem esizeL_map_simp : ∀ es : List (CrepExpHOL width),
    esizeL (es.map crepSimpExpHOL) ≤ esizeL es
  | [] => by simp [esizeL]
  | e :: es => by
      have := esize_simp e; have := esizeL_map_simp es
      simp only [List.map_cons, esizeL]; omega
termination_by es => sizeOf es
end

theorem csize_simp : ∀ p : CrepProgHOL width, csize (crepSimpProgHOL p) ≤ csize p
  | .dec _ e b => by
      have := esize_simp e; have := csize_simp b
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .assign _ e => by
      have := esize_simp e; rw [crepSimpProgHOL]; simp only [csize]; omega
  | .store a v => by
      have := esize_simp a; have := esize_simp v
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .store32 a v => by
      have := esize_simp a; have := esize_simp v
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .storeByte a v => by
      have := esize_simp a; have := esize_simp v
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .storeGlob _ e => by
      have := esize_simp e; rw [crepSimpProgHOL]; simp only [csize]; omega
  | .seq a b => by
      have := csize_simp a; have := csize_simp b
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .ite e a b => by
      have := esize_simp e; have := csize_simp a; have := csize_simp b
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .while e b => by
      have := esize_simp e; have := csize_simp b
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .call none f args => by
      have := esizeL_map_simp args
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .call (some (r, none)) f args => by
      have := esizeL_map_simp args
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .call (some (r, some (x, h))) f args => by
      have := esizeL_map_simp args; have := csize_simp h
      rw [crepSimpProgHOL]; simp only [csize]; omega
  | .return es => by
      have := esizeL_map_simp es; rw [crepSimpProgHOL]; simp only [csize]; omega
  | .shMem _ _ e => by
      have := esize_simp e; rw [crepSimpProgHOL]; simp only [csize]; omega
  | .skip => by rw [crepSimpProgHOL] <;> simp
  | .primitive _ _ _ => by rw [crepSimpProgHOL] <;> simp
  | .break _ => by rw [crepSimpProgHOL] <;> simp
  | .continue _ => by rw [crepSimpProgHOL] <;> simp
  | .extCall _ _ _ _ _ => by rw [crepSimpProgHOL] <;> simp
  | .raise _ => by rw [crepSimpProgHOL] <;> simp
  | .tick => by rw [crepSimpProgHOL] <;> simp
termination_by p => sizeOf p

end InitECandidate.Solver.Compiler.CrepToLoop
