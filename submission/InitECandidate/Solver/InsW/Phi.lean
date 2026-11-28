import InitECandidate.Solver.Spec.Mpt.InsertCost
import InitECandidate.Solver.SortAddr.Base

/-!
# A window-restricted nonzero-word count for the trie insertion loop

The accepted measure of `_mpt_insert_node` counts nonzero words over all `2 ^ 64` addresses
(`phi`). A descending iteration only zeroes `N + 8`, `N + 16`, `N + 24` for the visited node
`N`, and `N` itself was loaded by the iteration (`lds 1 (node + 0)`), so it is a mapped
address. Counting nonzero words only inside the window `[lo, lo + Lw)` around the bounded
memory domain therefore has the same monotonicity, with range `Lw` instead of `2 ^ 64`.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.InsW
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.Spec.Mpt

variable {σ : Type} {X : Ctx 64}

open Classical in
/-- Nonzero words inside the window `[lo, lo + Lw)`. -/
noncomputable def phiW (lo : BitVec 64) (Lw : Nat) (M : BitVec 64 → HolWordLab 64) : Nat :=
  (Finset.univ.filter (fun a : BitVec 64 => (a - lo).toNat < Lw ∧ M a ≠ .word 0)).card

theorem phiW_le (lo : BitVec 64) (Lw : Nat) (M : BitVec 64 → HolWordLab 64) : phiW lo Lw M ≤ Lw := by
  classical
  unfold phiW
  have hinj : Set.InjOn (fun a : BitVec 64 => (a - lo).toNat)
      ↑(Finset.univ.filter (fun a : BitVec 64 => (a - lo).toNat < Lw ∧ M a ≠ .word 0)) := by
    intro a _ b _ hab
    have h : a - lo = b - lo := BitVec.eq_of_toNat_eq hab
    have := congrArg (· + lo) h
    simpa using this
  have := Finset.card_le_card_of_injOn (fun a : BitVec 64 => (a - lo).toNat)
    (t := Finset.range Lw) (fun a ha => by
      simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_ofPred_eq] at ha
      simpa using ha.1) hinj
  simpa using this

/-- A change that only writes zero words inside the window. -/
theorem phiW_mono {lo : BitVec 64} {Lw : Nat} {M M' : BitVec 64 → HolWordLab 64}
    (h : ∀ a, M' a ≠ M a → M' a = .word 0 ∧ (a - lo).toNat < Lw) :
    phiW lo Lw M' ≤ phiW lo Lw M ∧ (phiW lo Lw M' = phiW lo Lw M → M' = M) := by
  classical
  have hsub : Finset.univ.filter (fun a : BitVec 64 => (a - lo).toNat < Lw ∧ M' a ≠ .word 0) ⊆
      Finset.univ.filter (fun a : BitVec 64 => (a - lo).toNat < Lw ∧ M a ≠ .word 0) := by
    intro a ha
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha ⊢
    refine ⟨ha.1, fun h0 => ?_⟩
    by_cases hd : M' a = M a
    · exact ha.2 (hd.trans h0)
    · exact ha.2 (h a hd).1
  refine ⟨by unfold phiW; exact Finset.card_le_card hsub, fun heq => ?_⟩
  have hset := Finset.eq_of_subset_of_card_le hsub (by unfold phiW at heq; omega)
  funext a
  by_contra hd
  obtain ⟨h0, hw⟩ := h a hd
  have hMa : M a ≠ .word 0 := fun e => hd (h0.trans e.symm)
  have : a ∈ Finset.univ.filter (fun a : BitVec 64 => (a - lo).toNat < Lw ∧ M a ≠ .word 0) := by
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]; exact ⟨hw, hMa⟩
  rw [← hset] at this
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at this
  exact this.2 h0

/-- Where a descending iteration changes memory. -/
theorem memAfter_change_at {M : Mem} {N S : BitVec 64} (hS : S ≠ 0 → M S = .word N) :
    ∀ a, memAfter M N S a ≠ M a → memAfter M N S a = .word 0 ∧
      (a = N + 8 ∨ a = N + 16 ∨ a = N + 24) := by
  intro a ha
  refine ⟨memAfter_change hS a ha, ?_⟩
  by_contra hn
  simp only [not_or] at hn
  apply ha
  unfold memAfter
  by_cases hS0 : S = 0
  · rw [if_pos hS0]; exact zero3_of_ne hn.1 hn.2.1 hn.2.2
  · rw [if_neg hS0]
    unfold upd
    by_cases haS : a = S
    · rw [if_pos haS]; subst haS; exact (hS hS0).symm
    · rw [if_neg haS]; exact zero3_of_ne hn.1 hn.2.1 hn.2.2

/-! ## The visited node is mapped -/

theorem hoare_const {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {C : Prop} (h : C) :
    Hoare σ X P p (fun _ _ => C) := fun _ _ _ _ => h

theorem load_node_hit {s : PanSemStateFiniteExact 64 σ} {N : BitVec 64} {v : ValueHOL 64}
    (hN : s.locals.lookup (nm "node") = some (.val (.word N)))
    (h : ev s (.load .one (.op .add [lv (nm "node"), cw 0])) = some v) : s.memaddrs N := by
  have ha := ev_add2 (s := s) (ev_lw hN) (ev_cw s 0)
  simp only [ev, evalHOLExact] at h ha
  split at h
  · split at h
    · rename_i w hw
      rw [ha] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      rw [memLoadHOLExact] at h
      split at h
      · rename_i hd
        simpa using hd
      · simp at h
    · simp at h
  · simp at h

/-- A completed loop iteration from a nonzero node loaded that node. -/
theorem hoare_node_hit {N : BitVec 64} (hN0 : N ≠ 0) :
    Hoare σ X (fun s => s.locals.lookup (nm "node") = some (.val (.word N))) insLoopBody
      (fun _ _ => X.memaddrs N) := by
  unfold insLoopBody
  refine hoare_dec fun s _ hs _ _ _ => hoare_pre (P := fun t => t.locals.lookup (nm "node") =
    some (.val (.word N))) ?_ (fun t _ ht => by subst ht; rw [lk_set_ne _ _ (by decide)]; exact hs)
  refine hoare_dec fun s _ hs _ _ _ => hoare_pre (P := fun t => t.locals.lookup (nm "node") =
    some (.val (.word N))) ?_ (fun t _ ht => by subst ht; rw [lk_set_ne _ _ (by decide)]; exact hs)
  refine hoare_dec fun s _ hs _ _ _ => hoare_pre (P := fun t => t.locals.lookup (nm "node") =
    some (.val (.word N))) ?_ (fun t _ ht => by subst ht; rw [lk_set_ne _ _ (by decide)]; exact hs)
  refine hoare_dec fun s _ hs _ _ _ => hoare_pre (P := fun t => t.locals.lookup (nm "node") =
    some (.val (.word N))) ?_ (fun t _ ht => by subst ht; rw [lk_set_ne _ _ (by decide)]; exact hs)
  unfold insInner
  refine hoare_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "node") = some (.val (.word N)))
    (hoare_assign fun s _ hs v _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact hs⟩)
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (R := fun _ _ => X.memaddrs N) ?_ (fun _ _ _ _ _ h => h) (fun _ _ h _ => h)
  unfold insMain
  refine hoare_ite ?_ ?_
  · intro s _ ⟨hs, w, hw, hw0⟩
    exfalso
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hs.2] at hx; cases hx
    rw [ev_cw] at hy; cases hy
    apply hN0
    simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
  · unfold insNode
    refine hoare_dec fun s hs ⟨hn, _⟩ v hv _ => ?_
    have := load_node_hit hn.2 hv
    exact hoare_const (hs.2.1 ▸ this)

end InitECandidate.Solver.InsW
