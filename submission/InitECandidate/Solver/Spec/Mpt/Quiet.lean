import InitECandidate.Solver.Spec.Mpt.InsertIter
import InitECandidate.Solver.Spec.HoareG

/-!
# The quiet insertion step completes normally

A *quiet* state of the insertion loop is at a nonzero extension node `N` (`M N = 2`) with
an empty key segment (`M (N + 40) = 0`). From it, every good evaluation of the loop body
completes normally with `go = 1` (`ins_quiet`): the guards are false, the extension
descent is taken (`common_prefix_length(_, 0, _, _) = 0`), and the callees on this path,
`node_invalidate` and `common_prefix_length`, raise no exception (`CalleeEscFree`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Two more rules for good results -/

theorem hoareG_callD {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop} (hf : FunSpec σ X f R) (hesc : CalleeEscFree σ X f)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        Q none { st with locals := s.locals }) :
    HoareG σ X P (.call (some (none, none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, none)) f args)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro hg; exact absurd hg (by simp [Good])
    · rename_i body callee rs hlook
      split
      · intro hg; exact absurd hg (by simp [Good])
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hne := hesc vs body callee rs hlook (callEntryStateHOLFinite s callee) hs.1
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hne hspec
          dsimp only at hne hspec ⊢
          cases r with
          | none => intro hg; exact absurd hg (by simp [Good])
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · intro _; exact h s hs hp vs hvs callee v st (hspec _ rfl)
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v => exact absurd rfl (hne.1 e v)
            | finalFfi e => exact absurd rfl (hne.2 e)
            | «break» => intro hg; exact absurd hg (by simp [Good])
            | «continue» => intro hg; exact absurd hg (by simp [Good])
            | error => intro hg; exact absurd hg (by simp [Good])
            | timeOut => intro hg; exact absurd hg (by simp [Good])

theorem hoareG_store {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ mem, Q none { s with memory := mem }) :
    HoareG σ X P (.store a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store a e)]
  dsimp only
  split
  · split
    · split
      · intro _; exact h s hs hp _
      · intro hg; exact absurd hg (by simp [Good])
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

/-! ## The quiet path -/

/-- The post: normal completion with `go = 1`. -/
def GoOne (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ t.locals.lookup go_ = some (.val (.word 1))

theorem goOne_restore {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ}
    {y : MlS} (hy : y ≠ go_) (old : Option (ValueHOL 64)) (h : GoOne r t) :
    GoOne r { t with locals := t.locals.resVarEq (y, old) } := by
  refine ⟨h.1, ?_⟩
  show (t.locals.resVarEq (y, old)).lookup go_ = _
  rw [lookup_resVarEq_ne _ _ hy]; exact h.2

/-- A false guard `if c { ... }` whose condition is the zero word. -/
theorem hoareG_ite_false {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {c : ExpHOL 64} {a b : ProgHOL 64} (hc : ∀ s, P s → ev s c = some (.val (.word 0)))
    (hb : HoareG σ X P b Q) : HoareG σ X P (.ite c a b) Q :=
  hoareG_ite (hoareG_false fun s _ ⟨hs, w, hw, hw0⟩ => by rw [hc s hs] at hw; cases hw; exact hw0 rfl)
    (hoareG_pre hb fun _ _ h => h.1)

theorem hoareG_ite_true {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {c : ExpHOL 64} {a b : ProgHOL 64} (hc : ∀ s, P s → ev s c = some (.val (.word 1)))
    (ha : HoareG σ X P a Q) : HoareG σ X P (.ite c a b) Q :=
  hoareG_ite (hoareG_pre ha fun _ _ h => h.1)
    (hoareG_false fun s _ ⟨hs, hw⟩ => by rw [hc s hs] at hw; cases hw)

theorem ev_eqw {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) (k : Nat) :
    ev s (.cmp .equal (lv x) (cw k)) =
      some (.val (.word (if w = BitVec.ofNat 64 k then 1 else 0))) := by
  rw [ev_cmp (ev_lw h) (ev_cw _ k)]
  by_cases hw : w = BitVec.ofNat 64 k <;> simp [wordCmpHOL, hw]

theorem ins_quiet_ext (hC : X.code.lookup = guestCode)
    (hcpl : CalleeEscFree σ X (nm "common_prefix_length")) {N : BitVec 64}
    {P : PanSemStateFiniteExact 64 σ → Prop}
    (hP : ∀ s, P s → s.locals.lookup (nm "node") = some (.val (.word N)) ∧
      s.memory (N + 40) = .word 0) :
    HoareG σ X P insExt GoOne := by
  unfold insExt
  refine hoareG_dec fun s _ hs vseg _ _ => ?_
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "seg") vseg s) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => goOne_restore (by decide) _ h)
  refine hoareG_dec fun s1 _ hs1 vsl hvsl _ => ?_
  subst hs1
  obtain ⟨hn, h40⟩ := hP s hs
  obtain ⟨w40, hw40, -, rfl⟩ := ev_load_one hvsl
  rw [ev_add_cw (by rw [lk_set_ne _ _ (by decide)]; exact hn) 40] at hw40
  cases hw40
  have hsl0 : (setVarHOLFinite (nm "seg") vseg s).memory (N + BitVec.ofNat 64 40) = .word 0 := h40
  rw [hsl0]
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "sl") (.val (.word 0))
      (setVarHOLFinite (nm "seg") vseg s)) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => goOne_restore (by decide) _ h)
  refine hoareG_decCallS (funSpec_of_funRet (funRet_cpl hC)) hcpl
    fun s2 _ hs2 vs' hvs' callee v st hR _ _ => ?_
  subst hs2
  obtain ⟨A, C, al, bl, P, hvs, rfl, hPa, -⟩ := hR _ rfl
  obtain ⟨v1, r1, rfl, -, h1⟩ := evs_cons_inv hvs'
  obtain ⟨v2, r2, rfl, h2, -⟩ := evs_cons_inv h1
  simp only [List.cons.injEq] at hvs
  obtain ⟨-, rfl, -⟩ := hvs
  rw [ev_lv, lk_set_self] at h2
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h2
  have hP0 : P = 0 := by subst h2; bv_omega
  subst hP0
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "pl") (.val (.word 0))
      { st with locals := (setVarHOLFinite (nm "sl") (.val (.word 0))
        (setVarHOLFinite (nm "seg") vseg s)).locals }) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => goOne_restore (by decide) _ h)
  refine hoareG_ite_true (fun t ht => ?_) ?_
  · subst ht
    rw [ev_cmp (ev_lw (lk_set_self _ _ _)) (ev_lw (by
      rw [lk_set_ne _ _ (by decide)]
      show (setVarHOLFinite (nm "sl") _ _).locals.lookup _ = _
      rw [lk_set_self]))]
    simp [wordCmpHOL]
  · unfold insExtDesc
    refine hoareG_seq (R := fun r _ => r = none) (hoareG_assign fun _ _ _ _ _ _ => rfl)
      (fun _ _ _ hr _ h => absurd h hr) ?_
    refine hoareG_seq (R := fun r _ => r = none) (hoareG_assign fun _ _ _ _ _ _ => rfl)
      (fun _ _ _ hr _ h => absurd h hr) ?_
    refine hoareG_seq (R := fun r _ => r = none) (hoareG_assign fun _ _ _ _ _ _ => rfl)
      (fun _ _ _ hr _ h => absurd h hr) ?_
    refine hoareG_seq (R := fun r _ => r = none) (hoareG_assign fun _ _ _ _ _ _ => rfl)
      (fun _ _ _ hr _ h => absurd h hr) ?_
    refine hoareG_assign fun _ _ _ v hv _ => ⟨rfl, ?_⟩
    rw [ev_cw] at hv
    cases hv
    exact lk_set_self _ _ _

/-- The tail keeps `go`. -/
theorem ins_quiet_tail :
    HoareG σ X (fun t => t.locals.lookup go_ = some (.val (.word 1))) insTail GoOne := by
  unfold insTail
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup go_ = some (.val (.word 1)))
    (hoareG_ite (hoareG_assign fun s _ h _ _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h.1⟩)
      (hoareG_store fun s _ h _ => ⟨rfl, h.1⟩))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup go_ = some (.val (.word 1)))
    (hoareG_assign fun s _ h _ _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h.2⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup go_ = some (.val (.word 1)))
    (hoareG_assign fun s _ h _ _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h.2⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoareG_assign fun s _ h _ _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h.2⟩

/-- **The quiet step.** -/
theorem ins_quiet (hC : X.code.lookup = guestCode)
    (hinv : CalleeEscFree σ X (nm "node_invalidate"))
    (hcpl : CalleeEscFree σ X (nm "common_prefix_length")) {N : BitVec 64} {M : Mem}
    (hN : N ≠ 0) (h2 : M N = .word 2) (h40 : M (N + 40) = .word 0) :
    HoareG σ X (fun s => s.locals.lookup (nm "node") = some (.val (.word N)) ∧ s.memory = M)
      insLoopBody GoOne := by
  -- the four declarations
  have hd : ∀ {y : MlS} {b : ProgHOL 64}, y ≠ go_ → y ≠ nm "node" →
      HoareG σ X (fun s => s.locals.lookup (nm "node") = some (.val (.word N)) ∧ s.memory = M) b
        GoOne →
      HoareG σ X (fun s => s.locals.lookup (nm "node") = some (.val (.word N)) ∧ s.memory = M)
        (.dec y .one (cw 0) b) GoOne := by
    intro y b hy hyn hb
    refine hoareG_dec fun s _ hs v _ _ => ?_
    refine hoareG_conseq hb (fun t _ ht => ?_) (fun _ _ _ _ h => goOne_restore hy _ h)
    subst ht
    exact ⟨by rw [lk_set_ne _ _ hyn]; exact hs.1, hs.2⟩
  unfold insLoopBody
  refine hd (by decide) (by decide) (hd (by decide) (by decide) (hd (by decide) (by decide)
    (hd (by decide) (by decide) ?_)))
  unfold insInner
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "node") =
      some (.val (.word N)) ∧ t.memory = M) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoareG_assign fun s _ h _ _ _ => ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h.1, h.2⟩
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup go_ = some (.val (.word 1))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoareG_pre ins_quiet_tail fun _ _ h => h.2)
  unfold insMain
  refine hoareG_ite_false (fun s h => by
    rw [ev_eqw h.2.1 0, if_neg (show N ≠ BitVec.ofNat 64 0 from hN)]) ?_
  unfold insNode
  refine hoareG_dec fun s _ ⟨_, hn, hm⟩ vk hvk _ => ?_
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hvk
  rw [ev_add_cw hn 0] at hw
  cases hw
  rw [show s.memory (N + BitVec.ofNat 64 0) = .word 2 by rw [hm]; simpa using h2]
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "k") (.val (.word 2)) s)
    (Q := GoOne) ?_ (fun _ _ h => h) (fun _ _ _ _ h => goOne_restore (by decide) _ h)
  have hk : ∀ t : PanSemStateFiniteExact 64 σ,
      t.locals.lookup (nm "k") = some (.val (.word 2)) → ∀ j : Nat,
      (2 : BitVec 64) ≠ BitVec.ofNat 64 j →
      ev t (.cmp .equal (lv (nm "k")) (cw j)) = some (.val (.word 0)) := by
    intro t ht j hj
    rw [ev_eqw ht j, if_neg hj]
  -- the hashed guard
  unfold failHashed
  refine hoareG_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "k") (.val (.word 2)) s)
    (hoareG_ite_false (fun t ht => hk t (by rw [ht]; exact lk_set_self _ _ _) 0 (by decide)) (hoareG_skip fun t _ ht => ⟨rfl, ht⟩))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- `node_invalidate(node)`
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "k") = some (.val (.word 2)) ∧
      t.locals.lookup (nm "node") = some (.val (.word N)) ∧ ∃ m : Mem, t.memory = m ∧
        m (N + 40) = .word 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_callD (funSpec_node_invalidate hC) hinv
      fun t _ ⟨_, ht⟩ vs' hvs' callee v st hR => ⟨rfl, ?_, ?_, ?_⟩
    · subst ht; exact lk_set_self _ _ _
    · subst ht; show (setVarHOLFinite _ _ s).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hn
    · obtain ⟨N', hN', hmem, -⟩ := hR v rfl
      subst ht
      have hn' : (setVarHOLFinite (nm "k") (.val (.word 2)) s).locals.lookup (nm "node") =
          some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn
      rw [evs_cons (by rw [ev_lv]; exact hn') evs_nil] at hvs'
      simp only [Option.some.injEq] at hvs'
      rw [← hvs'] at hN'
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN'
      subst hN'
      refine ⟨st.memory, rfl, ?_⟩
      rw [hmem]
      show zero3 s.memory N (N + 40) = _
      rw [zero3_40, hm]
      exact h40
  -- the kinds: an extension
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "k") = some (.val (.word 2)) ∧
      t.locals.lookup (nm "node") = some (.val (.word N)) ∧ t.memory (N + 40) = .word 0) ?_
    (fun t _ h => ⟨h.2.1, h.2.2.1, by obtain ⟨m, hm', h40'⟩ := h.2.2.2; rw [hm']; exact h40'⟩)
  unfold insKinds
  refine hoareG_ite_false (fun t h => hk t h.1 1 (by decide)) ?_
  refine hoareG_ite_true (fun t h => by rw [ev_eqw h.1 2, if_pos (show (2 : BitVec 64) = BitVec.ofNat 64 2 from rfl)]) ?_
  exact ins_quiet_ext hC hcpl fun t h => ⟨h.2.1, h.2.2⟩

end InitECandidate.Solver.Spec.Mpt
