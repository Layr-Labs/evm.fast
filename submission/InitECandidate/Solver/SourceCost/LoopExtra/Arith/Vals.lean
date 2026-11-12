import Mathlib.Data.Fintype.Pigeonhole
import Mathlib.Data.Finset.Prod
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.PureSound

/-!
# Finitely many values of a shape

A shape without named structs (`namedFree`) has finitely many values: at most
`2 ^ (width * sizeSh sh)`, one word per leaf (`valsF`, `card_valsF`, `mem_valsF`).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width]

mutual
def namedFree : ShapeHOL → Bool
  | .one => true
  | .comb shs => namedFreeL shs
  | .named _ => false
def namedFreeL : List ShapeHOL → Bool
  | [] => true
  | sh :: shs => namedFree sh && namedFreeL shs
end

mutual
def sizeSh : ShapeHOL → Nat
  | .one => 1
  | .comb shs => sizeL shs
  | .named _ => 0
def sizeL : List ShapeHOL → Nat
  | [] => 0
  | sh :: shs => sizeSh sh + sizeL shs
end

section
open Classical

noncomputable def finProd {α : Type} : List (Finset α) → Finset (List α)
  | [] => {[]}
  | F :: Fs => (F ×ˢ finProd Fs).image (fun p => p.1 :: p.2)

theorem card_finProd {α : Type} : ∀ Fs : List (Finset α), (finProd Fs).card ≤ (Fs.map Finset.card).prod
  | [] => by simp [finProd]
  | F :: Fs => by
      simp only [finProd, List.map_cons, List.prod_cons]
      refine le_trans Finset.card_image_le ?_
      rw [Finset.card_product]
      exact Nat.mul_le_mul_left _ (card_finProd Fs)

theorem mem_finProd_cons {α : Type} {F : Finset α} {Fs : List (Finset α)} {a : α} {l : List α}
    (ha : a ∈ F) (hl : l ∈ finProd Fs) : a :: l ∈ finProd (F :: Fs) := by
  simp only [finProd, Finset.mem_image, Finset.mem_product, Prod.exists]
  exact ⟨a, l, ⟨ha, hl⟩, rfl⟩

theorem nil_mem_finProd {α : Type} : ([] : List α) ∈ finProd [] := by simp [finProd]

mutual
noncomputable def valsF : ShapeHOL → Finset (ValueHOL width)
  | .one => (Finset.range (2 ^ width)).image (fun n => .val (.word (BitVec.ofNat width n)))
  | .comb shs => (valsL shs).image .rStruct
  | .named _ => ∅
noncomputable def valsL : List ShapeHOL → Finset (List (ValueHOL width))
  | [] => {[]}
  | sh :: shs => (valsF sh ×ˢ valsL shs).image (fun p => p.1 :: p.2)
end

mutual
theorem card_valsF : ∀ sh : ShapeHOL, (valsF (width := width) sh).card ≤ 2 ^ (width * sizeSh sh)
  | .one => by
      simp only [valsF, sizeSh, Nat.mul_one]
      exact le_trans Finset.card_image_le (by simp)
  | .comb shs => by
      simp only [valsF, sizeSh]
      exact le_trans Finset.card_image_le (card_valsL shs)
  | .named _ => by simp [valsF]
theorem card_valsL : ∀ shs : List ShapeHOL,
    (valsL (width := width) shs).card ≤ 2 ^ (width * sizeL shs)
  | [] => by simp [valsL, sizeL]
  | sh :: shs => by
      simp only [valsL, sizeL]
      refine le_trans Finset.card_image_le ?_
      rw [Finset.card_product, Nat.mul_add, Nat.pow_add]
      exact Nat.mul_le_mul (card_valsF sh) (card_valsL shs)
end

mutual
theorem mem_valsF : ∀ sh : ShapeHOL, namedFree sh = true → ∀ v : ValueHOL width,
    shapeOfHOLExact v = sh → v ∈ valsF sh
  | .one, _, v, hv => by
      rcases v with ⟨⟨w⟩⟩ | vs | ⟨n, fs⟩
      · simp only [valsF, Finset.mem_image, Finset.mem_range]
        exact ⟨w.toNat, w.isLt, by simp⟩
      · simp [shapeOfHOLExact] at hv
      · simp [shapeOfHOLExact] at hv
  | .comb shs, hn, v, hv => by
      rcases v with ⟨⟨w⟩⟩ | vs | ⟨n, fs⟩
      · simp [shapeOfHOLExact] at hv
      · rw [shape_rStruct, ShapeHOL.comb.injEq] at hv
        simp only [valsF, Finset.mem_image]
        exact ⟨vs, mem_valsL shs (by simpa [namedFree] using hn) vs hv, rfl⟩
      · simp [shapeOfHOLExact] at hv
  | .named _, hn, _, _ => by simp [namedFree] at hn
theorem mem_valsL : ∀ shs : List ShapeHOL, namedFreeL shs = true → ∀ vs : List (ValueHOL width),
    vs.map shapeOfHOLExact = shs → vs ∈ valsL shs
  | [], _, vs, hv => by
      rw [List.map_eq_nil_iff] at hv; subst hv; simp [valsL]
  | sh :: shs, hn, vs, hv => by
      simp only [namedFreeL, Bool.and_eq_true] at hn
      rcases vs with _ | ⟨v, vs⟩
      · simp at hv
      · simp only [List.map_cons, List.cons.injEq] at hv
        simp only [valsL, Finset.mem_image, Finset.mem_product, Prod.exists]
        exact ⟨v, vs, ⟨mem_valsF sh hn.1 v hv.1, mem_valsL shs hn.2 vs hv.2⟩, rfl⟩
end

end

end InitECandidate.Solver.SourceCost.Arith
