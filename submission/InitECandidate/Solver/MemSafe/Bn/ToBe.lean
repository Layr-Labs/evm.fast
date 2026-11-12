import InitECandidate.Solver.MemSafe.Bn.Code
import InitECandidate.Solver.MemSafe.Fold

set_option autoImplicit false

/-!
# `bn_to_be`: the summary

`out[0..nbytes)` is written byte-wise (`st8 out + i, byte`, `i < nbytes`); nothing else is
written. So the footprint is the argument buffer `bufArg 3 1 0` (`nbytes` bytes at `out`), and the
signature `bnToBeSig = ⟨[any, any, bufArg 3 1 0, any], [], [], false⟩` needs **no extra
precondition**: `ArgsOK` already gives `BufOK` on `[out, out + nbytes)` (scalar cells of `Γ`
objects, or allocated cells outside `Γ`), and `bufOK_bound` the no-wrap bound `out + nbytes ≤
scratchEnd`.

* `hoareG_decK`: `var x = e; k` with a per-state precondition shift (generic).
* `foot_bn_to_be`: `FootSpec … (BufPre 2 3) (BufR 2 3)`.
* **`sumSpec_bn_to_be`**: `SumSpecA … bnToBeSig (True) (PW := False) (Q := True)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- `var x = e; body` where the entry precondition is transported to the body's, and the
postcondition survives restoring `x`. -/
theorem hoareG_decK {P P' : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hset : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v →
      P' (setVarHOLFinite x v s))
    (hres : ∀ r t old, Q r t → Q r { t with locals := t.locals.resVarEq (x, old) })
    (hb : HoareG σ X P' body Q) : HoareG σ X P (.dec x sh e body) Q := by
  refine hoareG_dec fun s hs hp v hv _ => ?_
  refine hoareG_conseq hb (fun t _ ht => ?_) (fun r t _ _ h => hres r t _ h)
  subst ht
  exact hset s hs hp v hv

theorem bw_set {d n i x : MlS} {D N : BitVec 64} {s0 t : State σ} (hd : x ≠ d) (hn : x ≠ n)
    (hi : x ≠ i) (v : ValueHOL 64) (h : BW d n i D N s0 t) :
    BW d n i D N s0 (setVarHOLFinite x v t) := by
  obtain ⟨h1, h2, ⟨I, hI, hIN⟩, hg, hm⟩ := h
  refine ⟨?_, ?_, ⟨I, ?_, hIN⟩, hg, hm⟩
  · rw [lk_set_ne _ _ hd]; exact h1
  · rw [lk_set_ne _ _ hn]; exact h2
  · rw [lk_set_ne _ _ hi]; exact hI

theorem bw_res {d n i x : MlS} {D N : BitVec 64} {s0 t : State σ} (hd : x ≠ d) (hn : x ≠ n)
    (hi : x ≠ i) (old : Option (ValueHOL 64)) (h : BW d n i D N s0 t) :
    BW d n i D N s0 { t with locals := t.locals.resVarEq (x, old) } := by
  obtain ⟨h1, h2, ⟨I, hI, hIN⟩, hg, hm⟩ := h
  refine ⟨?_, ?_, ⟨I, ?_, hIN⟩, hg, hm⟩
  · rw [lookup_resVarEq_ne _ _ hd]; exact h1
  · rw [lookup_resVarEq_ne _ _ hn]; exact h2
  · rw [lookup_resVarEq_ne _ _ hi]; exact hI

/-- The loop-body precondition. -/
def TbP (D N I : BitVec 64) (s0 : State σ) (t : State σ) : Prop :=
  BW outN nbN iN' D N s0 t ∧ t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat + 1 ≤ N.toNat

/-- **One iteration** keeps `BW`. -/
theorem hoareG_toBeIter (hA : AlignedDom X) {D N I : BitVec 64} {s0 : State σ}
    (hNW : D.toNat + N.toNat < 2 ^ 63) :
    HoareG σ X (TbP D N I s0) toBeIter (fun r t => r = none ∧ BW outN nbN iN' D N s0 t) := by
  have hset : ∀ (x : MlS), x ≠ outN → x ≠ nbN → x ≠ iN' → ∀ (s : State σ) (v : ValueHOL 64),
      TbP D N I s0 s → TbP D N I s0 (setVarHOLFinite x v s) := by
    intro x h1 h2 h3 s v ⟨hbw, hi, hK⟩
    exact ⟨bw_set h1 h2 h3 v hbw, by rw [lk_set_ne _ _ h3]; exact hi, hK⟩
  have hres : ∀ (x : MlS), x ≠ outN → x ≠ nbN → x ≠ iN' → ∀ (r : Option (PanSemResultExact 64))
      (t : State σ) old, (r = none ∧ BW outN nbN iN' D N s0 t) →
      (r = none ∧ BW outN nbN iN' D N s0 { t with locals := t.locals.resVarEq (x, old) }) :=
    fun x h1 h2 h3 r t old ⟨hr, h⟩ => ⟨hr, bw_res h1 h2 h3 old h⟩
  unfold toBeIter
  refine hoareG_decK (fun s _ h v _ => hset kN (by decide) (by decide) (by decide) s v h)
    (hres kN (by decide) (by decide) (by decide)) ?_
  refine hoareG_decK (fun s _ h v _ => hset byteN (by decide) (by decide) (by decide) s v h)
    (hres byteN (by decide) (by decide) (by decide)) ?_
  refine hoareG_seq (R := fun r t => r = none ∧ TbP D N I s0 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_assign fun s _ ⟨h, _⟩ v _ _ => ⟨rfl, ?_⟩
      exact hset byteN (by decide) (by decide) (by decide) s v h
    · exact hoareG_skip fun t _ ⟨h, _⟩ => ⟨rfl, h⟩
  · refine hoareG_pre (hoareG_blk (I := I) (K := 1) hA (by decide) (by decide) hNW
      (ss := [(.b, 0, lv byteN)]) ?_) fun _ _ h => h.2
    intro x hx
    simp only [List.mem_singleton] at hx
    subst hx
    exact ⟨by decide, fun h => nomatch h⟩

/-- **The loop** keeps `BW` and exits normally. -/
theorem hoareG_toBeLoop (hA : AlignedDom X) {D N : BitVec 64} {s0 : State σ}
    (hNW : N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63) :
    HoareG σ X (BW outN nbN iN' D N s0) (.while (ltN iN' nbN) toBeIter)
      (fun r t => r = none ∧ BW outN nbN iN' D N s0 t) := by
  refine hoareG_while (fun t h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro t hs ⟨hbw, hc⟩ hgood
  obtain ⟨I, hi, hIK⟩ := guard_ltN hbw hc
  have hNW' : D.toNat + N.toNat < 2 ^ 63 := by
    rcases hNW with h | h
    · omega
    · exact h
  obtain ⟨hr, hbw'⟩ := hoareG_toBeIter (I := I) hA hNW' t hs ⟨hbw, hi, hIK⟩ hgood
  rw [hr]
  exact ⟨fun _ => hbw', (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-- **`bn_to_be` footprint**: `out[0..nbytes)`. -/
theorem foot_bn_to_be (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "bn_to_be") (BufPre 2 3) (BufR 2 3) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, Dv, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    lookupCode_four code_bn_to_be (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hNW := nw_of_pre hb
  have hd : s0.locals.lookup outN = some (.val (.word D)) := hloc ▸ hlc
  have hn : s0.locals.lookup nbN = some (.val (.word N)) := hloc ▸ hld
  have hR : ∀ a, Overlap D.toNat N.toNat a →
      BufR 2 3 [Av, Bv, .val (.word D), .val (.word N)] a := fun a h => ⟨D, N, rfl, rfl, h⟩
  unfold toBeBody
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  have hpost : ∀ (t : State σ), BWPost (BufR 2 3 [Av, Bv, .val (.word D), .val (.word N)]) s0 t →
      BWPost (BufR 2 3 [Av, Bv, .val (.word D), .val (.word N)]) s0
        { t with locals := t.locals.resVarEq (iN', s0.locals.lookup iN') } := fun _ h => h
  refine hoareG_conseq (P := BW outN nbN iN' D N s0)
    (Q := fun _ t => BWPost (BufR 2 3 [Av, Bv, .val (.word D), .val (.word N)]) s0 t) ?_ ?_
    fun _ t _ _ h => hpost t h
  · refine hoareG_seq (R := fun r t => r = none ∧ BW outN nbN iN' D N s0 t)
      (hoareG_toBeLoop hA hNW) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    exact hoareG_return fun t _ h _ _ => ⟨h.2.2.2.2.1, h.2.2.2.2.2.mono hR⟩
  · intro t _ ht
    subst ht
    refine ⟨?_, ?_, ⟨0, lk_set_self _ _ _, by simp⟩, rfl, fun _ _ => rfl⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hd
    · rw [lk_set_ne _ _ (by decide)]; exact hn

/-! ## The summary -/

def bnToBeSig : Sig := { params := [.any, .any, .bufArg 3 1 0, .any], grows := false }

theorem summ_bn_to_be {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "bn_to_be") bnToBeSig :=
  summ_of_foot hH hT rfl (foot_bn_to_be hC hA)
    (fun _ _ _ hord hL hA' => bufPre_of_args (i := 2) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR (i := 2) rfl h)

/-- **`bn_to_be(d, nd, out, nbytes)`**, generic in the hook family: no extra precondition (the
buffer `[out, out + nbytes)` is `ArgsOK`'s `bufArg 3 1 0`), no protected writes, trivial post. -/
theorem sumSpec_bn_to_be {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "bn_to_be") bnToBeSig (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  summA_of_summ (summ_bn_to_be hF.hH Helpers.tagSlots_guestC hF.hX hF.hal)

end InitECandidate.Solver.MemSafe.Bn

#print axioms InitECandidate.Solver.MemSafe.Bn.sumSpec_bn_to_be
