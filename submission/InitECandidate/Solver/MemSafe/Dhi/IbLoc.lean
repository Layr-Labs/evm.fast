import InitECandidate.Solver.MemSafe.WaveHelpers.InputBlob
import InitECandidate.Solver.Spec.Mpt.Leaves.Common

set_option autoImplicit false

/-!
# `input_blob`, located

`funSpec_input_blob_loc`: a returned value of `input_blob` is `<P, L>` with
`heapBase ≤ P`, `P + L + 8 ≤ heapEnd`, `L ≤ 1073741808`, `8 ∣ P`, and the block `[P, P + L + 8)` is fresh:
at or above the entry heap pointer and below the exit heap pointer.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Dhi
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt (ptrsOf_frame)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL)

variable {σ : Type} {X : Ctx 64}

def IbLoc (p : Ptrs) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ P L : BitVec 64, v = .rStruct [.val (.word P), .val (.word L)] ∧ heapBase ≤ P.toNat ∧
    P.toNat + L.toNat + 8 ≤ heapEnd ∧ L.toNat ≤ 1073741808 ∧ P.toNat % 8 = 0 ∧ p.hp ≤ P.toNat ∧
    ∃ p' : Ptrs, ptrsOf t = some p' ∧ P.toNat + L.toNat + 8 ≤ p'.hp

/-- `!ldw x, ad` into a local, as a `Hoare` rule (a final FFI event is untracked). -/
theorem hoare_shLd {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {o : OpSize} {x : MlS} {ad : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ (w : BitVec 64) (f : HolFfiState σ),
      Q none (setKvarFfiHOLFinite .local x (.val (.word w)) s f)) :
    Hoare σ X P (.shMemLoad o .local x ad) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.shMemLoad o .local x ad)]
  dsimp only
  split
  · split
    · unfold shMemLoadHOLFiniteExact
      split
      · split
        · split
          · intro ht; exact absurd ht (by simp)
          · intro _; exact h s hs hp _ _
        · intro ht; exact absurd ht (by simp)
      · split
        · split
          · intro ht; exact absurd ht (by simp)
          · intro _; exact h s hs hp _ _
        · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

theorem lk_ffi_ne (s : State σ) (x : MlS) (w : BitVec 64) (f : HolFfiState σ) {y : MlS}
    (hy : x ≠ y) :
    (setKvarFfiHOLFinite .local x (.val (.word w)) s f).locals.lookup y = s.locals.lookup y :=
  lk_set_ne s _ hy

/-- The facts carried to the call of `alloc`. -/
def IbA (p : Ptrs) (t : State σ) : Prop :=
  ptrsOf t = some p ∧ ∃ Ln : BitVec 64, t.locals.lookup (nm "len") = some (.val (.word Ln)) ∧
    Ln.toNat ≤ 1073741808

/-- The loop invariant. -/
def IbI (Ar Ln : BitVec 64) (q2 : Ptrs) (t : State σ) : Prop :=
  t.locals.lookup (nm "p") = some (.val (.word Ar)) ∧
    t.locals.lookup (nm "len") = some (.val (.word Ln)) ∧ ptrsOf t = some q2 ∧
    ∃ I : BitVec 64, t.locals.lookup (nm "i") = some (.val (.word I))

theorem ib_loop_body (Ar Ln : BitVec 64) (q2 : Ptrs) :
    Hoare σ X (fun t => IbI Ar Ln q2 t ∧ CondTrue t ibCond) ibLoop
      (fun r t => r = none ∧ IbI Ar Ln q2 t) := by
  unfold ibLoop
  refine hoare_seq (R := fun r t => r = none ∧ IbI Ar Ln q2 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_shLd fun s _ ⟨⟨hp, hl, hq, I, hi⟩, _⟩ w f => ⟨rfl, ?_, ?_, ?_, I, ?_⟩
    · rw [lk_ffi_ne s _ _ _ (by decide)]; exact hp
    · rw [lk_ffi_ne s _ _ _ (by decide)]; exact hl
    · rw [← hq]; exact ptrsOf_frame rfl
    · rw [lk_ffi_ne s _ _ _ (by decide)]; exact hi
  refine hoare_seq (R := fun r t => r = none ∧ IbI Ar Ln q2 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_store fun s _ ⟨_, hp, hl, hq, hi⟩ w v mem _ _ _ =>
      ⟨rfl, hp, hl, by rw [← hq]; exact ptrsOf_frame rfl, hi⟩
  · refine hoare_assign fun s _ ⟨_, hp, hl, hq, I, hi⟩ v hv _ => ⟨rfl, ?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne s _ (by decide)]; exact hp
    · rw [lk_set_ne s _ (by decide)]; exact hl
    · rw [← hq]; exact ptrsOf_frame rfl
    · rw [ev_add2 (ev_lw hi) (ev_cw _ 8)] at hv
      cases hv
      exact ⟨_, lk_set_self _ _ _⟩

theorem ib_loop (Ar Ln : BitVec 64) (q2 : Ptrs) :
    Hoare σ X (IbI Ar Ln q2) (.while ibCond ibLoop) (fun r t => r = none ∧ IbI Ar Ln q2 t) :=
  hoare_while (fun _ h => h) (hoare_post (ib_loop_body Ar Ln q2) fun r t _ _ ⟨hr, hI⟩ => by
      subst hr
      exact ⟨fun _ => hI, (fun h => by cases h), (fun h => by cases h), (fun v h => by cases h)⟩)
    (fun s _ hI _ => ⟨rfl, hI⟩)

theorem ib_after (Ar Ln : BitVec 64) {t0 : State σ} (p q2 : Ptrs)
    (hp : t0.locals.lookup (nm "p") = some (.val (.word Ar)))
    (hl : t0.locals.lookup (nm "len") = some (.val (.word Ln))) (hA : heapBase ≤ Ar.toNat)
    (hE : Ar.toNat + Ln.toNat + 8 ≤ heapEnd) (hL : Ln.toNat ≤ 1073741808)
    (h8 : Ar.toNat % 8 = 0) (hfr : p.hp ≤ Ar.toNat) (hq : ptrsOf t0 = some q2)
    (hle : Ar.toNat + Ln.toNat + 8 ≤ q2.hp) :
    Hoare σ X (fun t => t = t0) ibAfter (fun r t => ∀ v, r = some (.returned v) → IbLoc p v t) := by
  unfold ibAfter
  refine hoare_decL (fun _ _ _ h => h) fun s _ hs v hv _ => ?_
  subst hs
  rw [ev_cw] at hv; cases hv
  refine hoare_decL (fun _ _ _ h => h) fun s _ hs v hv _ => ?_
  subst hs
  rw [ev_cw] at hv; cases hv
  refine hoare_seq (R := fun r t => r = none ∧ IbI Ar Ln q2 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (ib_loop Ar Ln q2) fun t _ ht => ?_
    subst ht
    refine ⟨?_, ?_, by rw [← hq]; exact ptrsOf_frame rfl, BitVec.ofNat 64 0, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hp
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hl
    · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  · refine hoare_return fun t _ ⟨_, hp', hl', hq', _⟩ v hv w hw => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    rw [ev_rstruct (evs_cons (ev_lw hp') (evs_cons (ev_lw hl') evs_nil))] at hv
    cases hv
    exact ⟨Ar, Ln, rfl, hA, hE, hL, h8, hfr, q2, by rw [← hq']; exact ptrsOf_frame rfl, hle⟩

theorem ib_body (hC : X.code.lookup = guestCode) {s0 : State σ} {p : Ptrs}
    (hp : ptrsOf s0 = some p) (ho : p.Ordered) :
    Hoare σ X (fun t => t = s0) ibBody (fun r t => ∀ v, r = some (.returned v) → IbLoc p v t) := by
  unfold ibBody
  refine hoare_decL (fun _ _ _ h => h) fun s _ hs v hv _ => ?_
  subst hs
  rw [ev_cw] at hv; cases hv
  refine hoare_seq (R := fun r t => r = none ∧ ptrsOf t = some p ∧
      ∃ Ln : BitVec 64, t.locals.lookup (nm "len") = some (.val (.word Ln))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_shLd fun s _ hs w f => ⟨rfl, ?_, w, ?_⟩
    · subst hs
      rw [← hp]; exact ptrsOf_frame rfl
    · subst hs; exact lk_set_self _ _ _
  refine hoare_seq (R := fun r t => r = none ∧ IbA p t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_callD (funSpec_trap_with hC) fun _ _ _ _ _ _ _ _ hR _ => ?_
      exact (TrapR.not_returned (hR (by simp [Good]))).elim
    · refine hoare_skip fun u _ ⟨⟨_, hpu, Ln, hln⟩, hc⟩ => ⟨rfl, hpu, Ln, hln, ?_⟩
      have := cmp_val_false hc (ev_cw _ 1073741808) (ev_lw hln)
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not,
        BitVec.lt_def] at this
      have h1 : (BitVec.ofNat 64 1073741808).toNat = 1073741808 := rfl
      omega
  refine hoare_decCallL (MemSafe.allocSpec_alloc hC) (fun _ _ _ h => h)
    fun s _ ⟨_, hpu, Ln, hln, hLn⟩ avs havs callee v st hR _ _ => ?_
  rw [evs_cons (ev_add2 (ev_lw hln) (ev_cw _ 8)) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨-, -, q2, hq2, ho2, hmono2, hv2⟩ := hR (by simp [Good]) _ p rfl hpu ho
  obtain ⟨Ar, rfl, hAl, ⟨hAr1, hAr2⟩, hfree⟩ := hv2 _ rfl
  have hL8 : (Ln + BitVec.ofNat 64 8).toNat = Ln.toNat + 8 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  rw [hL8] at hAr2 hfree
  have hE : Ar.toNat + Ln.toNat + 8 ≤ heapEnd := by
    have := ho2.2.1
    omega
  have hfr : p.hp ≤ Ar.toNat := by
    have := hfree Ar.toNat le_rfl (by omega)
    unfold Ptrs.Allocated at this
    omega
  refine ib_after Ar Ln p q2 ?_ ?_ hAr1 hE hLn hAl hfr ?_ hAr2
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide)]; exact hln
  · rw [← hq2]; exact ptrsOf_frame rfl

/-- **`input_blob`, located.** -/
theorem funSpec_input_blob_loc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "input_blob") (fun _ s r t => ∀ v, r = .returned v → ∀ p : Ptrs,
      ptrsOf s = some p → p.Ordered → True → IbLoc p v t) := by
  refine Spec.Mpt.Dec.funSpec_of_hoare (R := fun _ s v t => ∀ p : Ptrs,
      ptrsOf s = some p → p.Ordered → True → IbLoc p v t) ?_
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen code_input_blob hl
  refine Spec.Mpt.Leaves.hoare_ret_ptrs (R := fun p v t => IbLoc p v t) (Pre := True) ?_
  intro p hp ho _
  exact ib_body hC hp ho

end InitECandidate.Solver.MemSafe.Dhi

#print axioms InitECandidate.Solver.MemSafe.Dhi.funSpec_input_blob_loc
