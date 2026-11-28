import InitECandidate.Solver.Spec.HoareExt
import InitECandidate.Solver.Spec.Memeq
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

/-!
# A completed `memcpy` with a nonzero length touched its destination

Every path through the installed `memcpy` body performs its first store at `dst + 0`
(a word store in the aligned loops, a byte store in the byte loops) before it can return,
unless the length is zero. So a returning call with `n ≥ 1` proves that `dst` (or its
byte-aligned base) lies in the ordinary memory domain. This is the access fact used to
bound the merge loops of `sort_elems` by the size of the memory domain.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- A successful word store hits its address (when it stores at least one word). -/
theorem hoare_store_hit {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w v, ev s a = some (.val (.word w)) → ev s e = some v →
      (∀ x rest, flattenHOL v = x :: rest → s.memaddrs w) →
      ∀ m, Q none { s with memory := m }) :
    Hoare σ X P (.store a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      split
      · rename_i m hm
        intro _
        refine h s hs hp w v hw hv (fun x rest hfl => ?_) m
        rw [hfl] at hm
        simp only [panMemStoresHOL] at hm
        split at hm
        · rename_i u hu
          unfold panMemStoreHOL at hu
          split at hu
          · assumption
          · simp at hu
        · simp at hm
      · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

/-- A successful byte store hits the aligned base of its address. -/
theorem hoare_storeByte_hit {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w, ev s a = some (.val (.word w)) →
      s.memaddrs (panByteAlignHOL w) → ∀ m, Q none { s with memory := m }) :
    Hoare σ X P (.storeByte a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.storeByte a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      split
      · rename_i m hm
        intro _
        refine h s hs hp w hw ?_ m
        unfold panMemStoreByteWord8HOL at hm
        dsimp only at hm
        split at hm
        · assumption
        · simp at hm
      · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

/-- Any store or byte store: tracked results are normal, and `Q` holds afterwards for
every memory, given that it holds whenever the access hit `Hit`. -/
theorem hoare_stO {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {d i : MlS} {k : SK} {c : Nat} {e : ExpHOL 64}
    (hv : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → ∃ x, flattenHOL v = [x] ∨ k = .b)
    (h : ∀ s, InCtx s X → P s → ∀ w, ev s (offI d i c) = some (.val (.word w)) →
      Hit X.memaddrs w → ∀ m, Q none { s with memory := m }) :
    Hoare σ X P (stO d i k c e) Q := by
  cases k with
  | w =>
    refine hoare_store_hit fun s hs hp w v hw hev hhit m => h s hs hp w hw ?_ m
    obtain ⟨x, hx⟩ := hv s hs hp v hev
    rcases hx with hx | hx
    · left; rw [← hs.2.1]; exact hhit x [] hx
    · cases hx
  | b =>
    refine hoare_storeByte_hit fun s hs hp w hw hhit m => h s hs hp w hw ?_ m
    right; rw [← hs.2.1]; exact hhit

/-- The memcpy loop-state disjunction: either the destination was already hit, or nothing
happened yet (`i = 0`, `dst = D`, `n = N`). -/
def MJ (X : Ctx 64) (D N : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  Hit X.memaddrs D ∨ (s.locals.lookup iN = some (.val (.word 0)) ∧
    s.locals.lookup dN = some (.val (.word D)) ∧ s.locals.lookup nN = some (.val (.word N)))

theorem mj_mem {D N : BitVec 64} {s : PanSemStateFiniteExact 64 σ}
    (m : Flapjack.RiscV.Word 64 → HolWordLab 64) (h : MJ X D N s) :
    MJ X D N { s with memory := m } := h

theorem flatten_load {s : PanSemStateFiniteExact 64 σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) : ∃ x, flattenHOL v = [x] := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · rename_i w _
      rw [memLoadHOLExact] at h
      split at h
      · cases h; exact ⟨_, by rw [flattenHOL]⟩
      · simp at h
    · simp at h
  · simp at h

theorem hoare_incI {P : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {K : Nat}
    {D N : BitVec 64} (hP : ∀ s, P s → Hit X.memaddrs D) :
    Hoare σ X P (incI i K) (fun r t => r = none ∧ MJ X D N t) :=
  hoare_assign fun s _ hp _ _ _ => ⟨rfl, Or.inl (hP s hp)⟩

/-- The rest of a block, once the destination was hit. -/
theorem hoare_blk_rest {i d : MlS} {K : Nat} {D N : BitVec 64}
    (hD : Hit X.memaddrs D) (stores : List (SK × Nat × ExpHOL 64))
    (hst : ∀ x ∈ stores, x.1 = .b ∨ ∃ a, x.2.2 = .load .one a) :
    Hoare σ X (fun _ => True) (blk d i K stores) (fun r t => r = none ∧ MJ X D N t) := by
  induction stores with
  | nil => exact hoare_incI (fun _ _ => hD)
  | cons x rest ih =>
    obtain ⟨k, c, e⟩ := x
    refine hoare_seq (R := fun r _ => r = none) ?_ (fun r _ _ hr _ h => absurd h hr) ?_
    · refine hoare_stO (fun s _ _ v hv => ?_) (fun _ _ _ _ _ _ _ => rfl)
      rcases hst _ (List.mem_cons_self) with h | ⟨a, ha⟩
      · exact ⟨.word 0, Or.inr h⟩
      · simp only at ha
        subst ha
        obtain ⟨x, hx⟩ := flatten_load hv
        exact ⟨x, Or.inl hx⟩
    · exact hoare_pre (ih (fun y hy => hst y (List.mem_cons_of_mem _ hy))) (fun _ _ _ => trivial)

/-- A whole block from `MJ`: it ends normally with the destination hit. -/
theorem hoare_blk {D N : BitVec 64} {K : Nat} {k : SK} {e : ExpHOL 64}
    {rest : List (SK × Nat × ExpHOL 64)}
    (hst : ∀ x ∈ (k, 0, e) :: rest, x.1 = .b ∨ ∃ a, x.2.2 = .load .one a) :
    Hoare σ X (MJ X D N) (blk dN iN K ((k, 0, e) :: rest))
      (fun r t => r = none ∧ MJ X D N t) := by
  refine hoare_seq (R := fun r _ => r = none ∧ Hit X.memaddrs D) ?_
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_stO (fun s _ _ v hv => ?_) (fun s _ hj w hw hhit m => ⟨rfl, ?_⟩)
    · rcases hst _ (List.mem_cons_self) with h | ⟨a, ha⟩
      · exact ⟨.word 0, Or.inr h⟩
      · simp only at ha
        subst ha
        obtain ⟨x, hx⟩ := flatten_load hv
        exact ⟨x, Or.inl hx⟩
    · rcases hj with hj | ⟨hi, hd, -⟩
      · exact hj
      · rw [ev_offI hd hi 0] at hw
        have : w = D := by
          have := Option.some.inj hw
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
          rw [← this]; simp
        rw [← this]; exact hhit
  · intro s hs hp
    exact hoare_blk_rest (D := D) (N := N) hp.2 rest
      (fun x hx => hst x (List.mem_cons_of_mem _ hx)) s hs trivial


theorem hst_cpL (k : SK) (cs : List Nat) :
    ∀ x ∈ cpL k cs, x.1 = .b ∨ ∃ a, x.2.2 = .load .one a := by
  intro x hx
  simp only [cpL, List.mem_map] at hx
  obtain ⟨c, -, rfl⟩ := hx
  cases k with
  | w => exact Or.inr ⟨_, rfl⟩
  | b => exact Or.inl rfl

theorem mj_clk {D N : BitVec 64} (s : PanSemStateFiniteExact 64 σ) (h : MJ X D N s) :
    MJ X D N (decClockHOLFinite s) := h

/-- A writer loop keeps `MJ` and ends normally. -/
theorem hoare_wloop {D N : BitVec 64} {c : ExpHOL 64} {K : Nat} {k : SK} {e : ExpHOL 64}
    {rest : List (SK × Nat × ExpHOL 64)}
    (hst : ∀ x ∈ (k, 0, e) :: rest, x.1 = .b ∨ ∃ a, x.2.2 = .load .one a) :
    Hoare σ X (MJ X D N) (.while c (blk dN iN K ((k, 0, e) :: rest)))
      (fun r t => r = none ∧ MJ X D N t) := by
  refine hoare_while mj_clk ?_ (fun s _ h _ => ⟨rfl, h⟩)
  refine hoare_conseq (hoare_blk hst) (fun s _ h => h.1) ?_
  intro r t _ _ ⟨hr, hj⟩
  subst hr
  exact ⟨fun _ => hj, fun h => by simp at h, fun h => by simp at h, fun _ h => by simp at h⟩

/-- The final byte loop: on exit with `n ≥ 1` the destination was hit. -/
theorem hoare_lastloop {D N : BitVec 64} (hN : 1 ≤ N.toNat) :
    Hoare σ X (MJ X D N) (.while (ltN iN nN) (blk dN iN 1 (cpL .b [0])))
      (fun r t => r = none ∧ Hit X.memaddrs D) := by
  refine hoare_while (Q := fun r t => r = none ∧ Hit X.memaddrs D) mj_clk ?_ ?_
  · refine hoare_conseq (hoare_blk (hst_cpL .b [0])) (fun s _ h => h.1) ?_
    intro r t _ _ ⟨hr, hj⟩
    subst hr
    exact ⟨fun _ => hj, fun h => by simp at h, fun h => by simp at h, fun _ h => by simp at h⟩
  · intro s _ hj hc
    refine ⟨rfl, ?_⟩
    rcases hj with hj | ⟨hi, -, hn⟩
    · exact hj
    · exfalso
      unfold ltN at hc
      rw [ev_cmp (ev_lw hi) (ev_lw hn)] at hc
      have h1 : wordCmpHOL .lower (0 : BitVec 64) N = true := by
        have h0 : (0 : BitVec 64).toNat = 0 := rfl
        simp only [wordCmpHOL, BitVec.lt_def, h0, decide_eq_true_eq]
        omega
      rw [h1] at hc
      simp at hc

theorem memcpy_body_hit {D N : BitVec 64} (hN : 1 ≤ N.toNat) :
    Hoare σ X (fun s => s.locals.lookup dN = some (.val (.word D)) ∧
        s.locals.lookup nN = some (.val (.word N))) memcpyBody
      (fun r _ => ∀ v, r = some (.returned v) → Hit X.memaddrs D) := by
  unfold memcpyBody memSkel
  refine hoare_dec fun s _ ⟨hd, hn⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoare_pre (P := MJ X D N) ?_ (fun t _ ht => ?_)
  · refine hoare_seq (R := fun r t => r = none ∧ MJ X D N t) ?_
      (fun r _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_seq (R := fun r t => r = none ∧ MJ X D N t)
          (hoare_pre (hoare_wloop (hst_cpL .w [0, 8, 16, 24])) (fun _ _ h => h.1))
          (fun r _ _ hr _ h => absurd h.1 hr) ?_
        exact hoare_pre (hoare_wloop (hst_cpL .w [0])) (fun _ _ h => h.2)
      · exact hoare_skip fun _ _ h => ⟨rfl, h.1⟩
    · refine hoare_seq (R := fun r t => r = none ∧ MJ X D N t)
        (hoare_pre (hoare_wloop (hst_cpL .b [0, 1, 2, 3, 4, 5, 6, 7])) (fun _ _ h => h.2))
        (fun r _ _ hr _ h => absurd h.1 hr) ?_
      refine hoare_seq (R := fun r t => r = none ∧ Hit X.memaddrs D)
        (hoare_pre (hoare_lastloop hN) (fun _ _ h => h.2))
        (fun r _ _ hr _ h => absurd h.1 hr) ?_
      exact hoare_return fun t _ h _ _ _ hv => h.2
  · subst ht
    right
    refine ⟨?_, ?_, ?_⟩
    · simp [setVarHOLFinite, FUPDATE]
    · rw [show (setVarHOLFinite iN (.val (.word (BitVec.ofNat 64 0))) s).locals.lookup dN =
          s.locals.lookup dN by
          simp [setVarHOLFinite, FUPDATE]; intro h; exact absurd h (by decide)]
      exact hd
    · rw [show (setVarHOLFinite iN (.val (.word (BitVec.ofNat 64 0))) s).locals.lookup nN =
          s.locals.lookup nN by
          simp [setVarHOLFinite, FUPDATE]; intro h; exact absurd h (by decide)]
      exact hn

/-- The return fact of `memcpy`: a call that returns, with length argument `≥ 1`, hit its
destination argument. -/
def CopyHit (X : Ctx 64) (vs : List (ValueHOL 64)) : Prop :=
  ∀ D N : BitVec 64, vs[0]? = some (.val (.word D)) → vs[2]? = some (.val (.word N)) →
    1 ≤ N.toNat → Hit X.memaddrs D

theorem memcpy_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs _ r _ => ∀ v, r = .returned v → CopyHit X vs) := by
  intro vs body callee rs hl s hs hloc r hr v hrv D N h0 h2 hN
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, -, hCc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  simp only [List.getElem?_cons_zero, Option.some.injEq] at h0
  simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at h2
  subst h0 h2
  have hrun := memcpy_body_hit (σ := σ) (X := X) hN s hs
    ⟨by rw [hloc]; exact hA, by rw [hloc]; exact hCc⟩ (by rw [hr, hrv]; trivial)
  exact hrun v (by rw [hr, hrv])

end InitECandidate.Solver.SortAddr
