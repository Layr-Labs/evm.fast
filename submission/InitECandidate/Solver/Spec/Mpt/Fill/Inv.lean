import InitECandidate.Solver.Spec.Mpt.Fill.Chain

/-!
# The loop invariant and the measure of `_node_rlp_fill`

`FInv Nd HP0 S0 t`: the allocator pointers `p` are ordered with `HP0 ≤ heap_ptr` and
`scratch_ptr ≤ S0 ≤ scratchEnd`; the trie facts `TrieOK t Nd HP0` hold; `top` heads a chain
`ChainF` of `d` records in `[scratch_ptr, S0)`.

`fMu t = (scratch_ptr - heapEnd) / 24 + cdepth M top`: a push lowers `scratch_ptr` by at least
48 (two units of the first summand) and adds one record; a pop removes one record.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- **The loop invariant.** -/
def FInv (Nd : BitVec 64 → Prop) (HP0 S0 : Nat) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ p : Ptrs, ptrsOf t = some p ∧ p.Ordered ∧ HP0 ≤ p.hp ∧ heapBase ≤ HP0 ∧ p.sp ≤ S0 ∧
    S0 ≤ scratchEnd ∧ TrieOK t Nd HP0 ∧
    ∃ (T : BitVec 64) (d : Nat), t.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainF t Nd HP0 p.hp S0 d p.sp false T

def spOf (t : PanSemStateFiniteExact 64 σ) : Nat :=
  match ptrsOf t with
  | some p => p.sp
  | none => 0

/-- **The measure.** -/
def fMu (t : PanSemStateFiniteExact 64 σ) : Nat :=
  (spOf t - heapEnd) / 24 + cdepth t.memory scratchEnd (wl t (nm "top"))

/-- The measure bound: `(scratchEnd - heapEnd) / 24 = 521216`. -/
def fillM : Nat := (scratchEnd - heapEnd) / 24

theorem fillM_eq : fillM = 521216 := by unfold fillM scratchEnd heapEnd; norm_num

theorem spOf_of {t : PanSemStateFiniteExact 64 σ} {p : Ptrs} (h : ptrsOf t = some p) :
    spOf t = p.sp := by unfold spOf; rw [h]

/-- With `top = T` heading a chain of `d` records: `fMu = (sp - heapEnd) / 24 + d`. -/
theorem fMu_of {Nd : BitVec 64 → Prop} {HP0 HP S0 d lo : Nat} {nt : Bool}
    {t : PanSemStateFiniteExact 64 σ} {p : Ptrs} {T : BitVec 64} (hp : ptrsOf t = some p)
    (hT : t.locals.lookup (nm "top") = some (.val (.word T))) (hS0 : S0 ≤ scratchEnd)
    (h : ChainF t Nd HP0 HP S0 d lo nt T) : fMu t = (p.sp - heapEnd) / 24 + d := by
  unfold fMu
  rw [spOf_of hp, wl_of hT, cdepth_eq d lo nt T h scratchEnd ?_]
  rcases chainF_len d lo nt T h with e | e <;> omega

theorem fMu_le {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {t : PanSemStateFiniteExact 64 σ}
    (h : FInv Nd HP0 S0 t) : fMu t ≤ fillM := by
  obtain ⟨p, hp, hord, -, -, hsp, hS0, -, T, d, hT, hch⟩ := h
  rw [fMu_of hp hT hS0 hch]
  unfold fillM
  have := heapEnd_le_sp hord
  rcases chainF_len d _ _ T hch with e | e
  · subst e; omega
  · omega

/-! ## Congruence: the invariant reads memory, globals, `be` and `top` only -/

theorem rc_of_eq {s t : PanSemStateFiniteExact 64 σ} {fr nd : BitVec 64}
    (hm : t.memory = s.memory) (hbe : t.be = s.be) (h : RC s fr nd) : RC t fr nd := by
  unfold RC ld8W at *; rw [hm, hbe]; exact h

theorem recF_of_eq {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP0 HP : Nat}
    {nt : Bool} {r : BitVec 64} (hm : t.memory = s.memory) (hbe : t.be = s.be)
    (h : RecF s Nd HP0 HP nt r) : RecF t Nd HP0 HP nt r := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := h
  unfold RecF cbCell at *
  rw [hm]
  exact ⟨h1, h2, h3, h4, rc_of_eq hm hbe (by rw [← hm] at h5 ⊢; exact h5), h6⟩

theorem chainF_of_eq {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop}
    {HP0 HP hi : Nat} (hm : t.memory = s.memory) (hbe : t.be = s.be) :
    ∀ {d lo nt r}, ChainF s Nd HP0 HP hi d lo nt r → ChainF t Nd HP0 HP hi d lo nt r
  | 0, _, _, _, h => h
  | _ + 1, _, _, _, h => by
      obtain ⟨h0, h1, h2, h3, h4⟩ := h
      refine ⟨h0, h1, h2, recF_of_eq hm hbe h3, ?_⟩
      rw [hm]; exact chainF_of_eq hm hbe h4

theorem gword_of_eq {s t : PanSemStateFiniteExact 64 σ} (hg : t.globals = s.globals) (g : MlS) :
    gword t g = gword s g := by
  unfold gword; rw [hg]

theorem trieOK_of_eq {s t : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP : Nat}
    (hHP : HP ≤ heapEnd) (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : TrieOK s Nd HP) : TrieOK t Nd HP :=
  trieOK_frame hHP h (fun _ _ x _ => by rw [hm]) (gword_of_eq hg _) (gword_of_eq hg _)

theorem finv_congr {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {s t : PanSemStateFiniteExact 64 σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hbe : t.be = s.be)
    (htop : t.locals.lookup (nm "top") = s.locals.lookup (nm "top")) (h : FInv Nd HP0 S0 s) :
    FInv Nd HP0 S0 t ∧ fMu t = fMu s := by
  obtain ⟨p, hp, hord, h1, h2, h3, h4, htr, T, d, hT, hch⟩ := h
  have hp' : ptrsOf t = some p := by rw [ptrsOf_frame hg]; exact hp
  have hhp := hord.2.1
  refine ⟨⟨p, hp', hord, h1, h2, h3, h4, trieOK_of_eq (by omega) hm hg htr, T, d,
    by rw [htop]; exact hT, chainF_of_eq hm hbe hch⟩, ?_⟩
  unfold fMu
  rw [spOf_of hp, spOf_of hp', hm, wl_congr htop]

end InitECandidate.Solver.Spec.Mpt
